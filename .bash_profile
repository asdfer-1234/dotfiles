setfont
blear
stty onlcr
figlet -f smslant "Hello!"
echo 'This is a computer running Arch linux automatically booting to bash.'
echo 'It is customized to hell and you might want to take a look at all the dotfiles first.'
echo 'Notable dotfiles are in the dotfiles repo, which is inited on the home directory.'
echo 'run "git ls-tree --full-tree -r HEAD" to list them.'
echo ''
echo 'If you want windows to be booted instead of arch linux,'
echo 'run "systemctl reboot" to reboot and select "Atlas 20H2" to boot into it.'
echo ''
echo 'To boot to a graphical environment, run "startx"'
echo ''
#startx
