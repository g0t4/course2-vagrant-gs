# configure predictions (aka suggestions) in posh 7.2+
Set-PSReadLineOption -PredictionSource History # or Plugin, HistoryAndPlugin
Set-PSReadLineOption -PredictionViewStyle InlineView # or ListView
# inline allows binding this key to partially accept a suggestion:
Set-PSReadLineKeyHandler -Key "Shift+RightArrow" -Function AcceptNextSuggestionWord
# see zsh/bash aliases for further idea "snippets" ideas

function v { vagrant $args }
function vlsc { vagrant list-commands $args }

# vagrantfiles
function vi { vagrant init $args } # note conflicts with vi command (adjust as needed)
function vv { vagrant validate $args }

# find boxes
function vc { vagrant cloud $args }
function vcs { vagrant cloud search $args }
function vcb { vagrant cloud box show $args }

# manage local box "cache"
function vbls { vagrant box list -i $args }
function vbo { vagrant box outdated --global $args }

# state of VM(s)
function vst { vagrant status $args }
function vgs { vagrant global-status --prune $args }

# modify VMs
function vu { vagrant up $args }
function vh { vagrant halt $args }
function vrl { vagrant reload $args }
function vpv { vagrant provision $args }
function vsp { vagrant suspend $args }
function vrs { vagrant resume $args }

# cleanup
function vd { vagrant destroy $args }
function vdf { vagrant destroy -f $args }

# plugins
function vpl { vagrant plugin $args }
function vplls { vagrant plugin list $args }

# ssh

function vs { vagrant ssh $args }
function vsc { vagrant ssh-config $args }
function vscmd { vagrant ssh --command $args }
# note: alias other connection commands as needed
# vagrant upload # upload files - alternative to shared folders
# vagrant winrm
# vagrant winrm-config
# vagrant powershell
# vagrant rdp

# snapshots
function vsnls { vagrant snapshot list $args }

# NOTES:
# - USAGE: add to posh profile
#   - read `help about_Profiles`
