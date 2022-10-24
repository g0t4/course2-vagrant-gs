alias v="vagrant"
alias vlsc="vagrant list-commands"

# vagrantfiles
alias vi="vagrant init" # note conflicts with vi command (adjust as needed)
alias vv="vagrant validate"

# find boxes
alias vc="vagrant cloud"
alias vcs="vagrant cloud search"
alias vcb="vagrant cloud box show"

# manage local box "cache"
alias vb="vagrant box"
alias vbls="vagrant box list -i"
alias vba="vagrant box add"
alias vbo="vagrant box outdated --global"
alias vbpr="vagrant box prune --dry-run"
alias vbrm="vagrant box remove"

# shortcuts for creating new boxes (use packer otherwise)
alias vbrep="vagrant box repackage" # vagrant VM into a box
alias vpack="vagrant package --base" # any virtualbox VM into a box

# state of VM(s)
alias vst="vagrant status"
alias vgs="vagrant global-status --prune"
alias vport="vagrant port"

# modify VMs
alias vu="vagrant up"
alias vud="vagrant up --debug" # troubleshooting! (--debug exists on other commands too)
alias vh="vagrant halt" # shutdown
alias vrl="vagrant reload" # restart
alias vrlp="vagrant reload --provision"
alias vpv="vagrant provision"
alias vsp="vagrant suspend"
alias vspg="vagrant suspend --all-global"
alias vrs="vagrant resume"

# cleanup
alias vd="vagrant destroy"
alias vdf="vagrant destroy -f"

# plugins
alias vpl="vagrant plugin"
alias vplls="vagrant plugin list"

# ssh
alias vs="vagrant ssh"
alias vsc="vagrant ssh-config"
alias vscmd="vagrant ssh-config --command"
# note: alias other connection commands as needed

# snapshots
alias vsn="vagrant snapshot"
alias vsnls="vagrant snapshot list"
# named snapshots
alias vsns="vagrant snapshot save"
alias vsnr="vagrant snapshot restore"
alias vsnrm="vagrant snapshot delete"
# stack based snapshots
alias vsnpu="vagrant snapshot push"
alias vsnpo="vagrant snapshot pop"

# NOTES:
# - USAGE: add to startup/login scripts
#   - i.e. ~/.profile OR ~/.zshrc ~/.bashrc