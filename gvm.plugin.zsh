local GVM_DEST=$HOME
local GVM_NAME=.gvm
local fresh_install=0

[ -d $GVM_DEST/$GVM_NAME ] || {
    export GVM_NO_UPDATE_PROFILE=1
    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
    unset GVM_NO_UPDATE_PROFILE
    fresh_install=1
} > /dev/null

[[ -s "$GVM_DEST/$GVM_NAME/scripts/gvm" ]] && {
    source $GVM_DEST/$GVM_NAME/scripts/gvm
    fpath+="`dirname $0`"
}

[ $fresh_install -eq 1 ] && {
    local all=$(gvm listall | tr -d '^ \t')
    local latest=$(echo $all | \grep -v "rc\|beta\|release\|^$" | tail -1)
    echo "Installing $latest for gvm..."
    gvm install $latest -B
    gvm use $latest --default
}
