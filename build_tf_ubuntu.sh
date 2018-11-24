function update_package_lists() {
    printf "Updating package lists"
    apt-get update -y 2> /dev/null > /dev/null
    if [ $? -eq 0 ]; then
        printf " => Done\n"
        return 0
    else
        printf " => ERROR\n"
        return 1
    fi
}

to_upgrade=(`apt-get --just-print upgrade | awk '/^Inst/ { print $2 }'`)
STATUS_needs_upgrade="needs to be upgraded"
STATUS_up_to_date="up to date"
STATUS_installing="installing"
function package_status() {
    package=$1
    if `printf '%s\n' "${to_upgrade[@]}" | grep -x -q ${package}`; then
        echo "${STATUS_needs_upgrade}"
    elif `dpkg -l ${package} > /dev/null 2> /dev/null`; then
        echo "${STATUS_up_to_date}"
    else
        echo "${STATUS_installing}"
    fi
}

function backspace25() {
    printf '\b%.0s' {1..25}
}

function install_or_update() {
    packages="$@"
    for package in ${packages[@]}; do
        status=`package_status ${package}`
        printf "> %-15s => %-25s" "${package}" "${status}"
        if [ "${status}" != "${STATUS_up_to_date}" ]; then
            apt-get install --upgrade -y ${package} 2> /dev/null > /dev/null
            if [ $? -ne 0 ]; then
            	backspace25
                printf '%-25s' "error"
            else
            	backspace25
                printf '%-25s' "${STATUS_up_to_date}"
            fi
        fi
        printf '\n'
    done
}

function latest_release_tag() {
    repo=$1
    curl -s https://api.github.com/repos/${repo}/releases/latest \
    | grep -F "tag_name"                                         \
    | cut -d'"' -f4
}

function current_bazel_version() {
    if `$HOME/bin/bazel version 2> /dev/null > /dev/null`; then
        $HOME/bin/bazel version 2>&1 | grep label | cut -d' ' -f3
    else
        echo "not installed"
    fi
}

bazel_prereqs=(pkg-config zip g++ zlib1g-dev unzip python)
function install_bazel_version() {
    required_version=$1
    current_version=`current_bazel_version`
    echo "Current bazel version is: ${current_version}"
    if [ "${required_version}" == "${current_version}" ]; then
        echo "Bazel is already at the required version (${required_version})"
        return 0
    fi
    installer_name="bazel-${required_version}-installer-linux-x86_64.sh"
    installer_path="/tmp/${installer_name}"
    if [ -e "${installer_path}" ]; then
        echo "Found bazel installer at ${installer_path}"
    else
        echo "Downlading bazel ${required_version} installer"
        dl_url="https://github.com/bazelbuild/bazel/releases/download/${required_version}/${installer_name}"
        curl -L -o ${installer_path} ${dl_url}
    fi
    echo "Installing/upgrading dependencies for Bazel"
    install_or_update "${bazel_prereqs[@]}"
    chmod +x ${installer_path}
    ${installer_path} --user
}

packagelist=(
    curl git
    libc-ares-dev
    python-dev python3-dev
    python-pip python3-pip
)

update_package_lists
printf "Installing/upgrading system packages\n"
install_or_update "${packagelist[@]}"
install_bazel_version `latest_release_tag "bazelbuild/bazel"`
echo "Installing/upgrading required python packages"
for python in "python2" "python3"; do
    ${python} -m pip install -U --user pip six numpy wheel mock scipy h5py enum34
    ${python} -m pip install -U --user keras_applications==1.0.5 --no-deps
    ${python} -m pip install -U --user keras_preprocessing==1.0.3 --no-deps
done
tf_version=`latest_release_tag "tensorflow/tensorflow"`
echo Latest TF version is $tf_version
tf_dir="/tmp/tensorflow-${tf_version:1}"
tf_zip="${tf_dir}.zip"
curl -L -o ${tf_zip} "https://github.com/tensorflow/tensorflow/archive/${tf_version}.zip"
unzip ${tf_zip} -d /tmp
cd ${tf_dir}
for i in 1 2; do
    PATH="$HOME/bin/:$PATH" ./configure
    bazel build --config=opt //tensorflow/tools/pip_package:build_pip_package
    ./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
done
