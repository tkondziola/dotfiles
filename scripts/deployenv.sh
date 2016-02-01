#! /bin/sh

# Variable(s)
DOTFILES_DIR="${HOME}/dotfiles"
DOTFILES_REPO="https://github.com/tkondziola/dotfiles"
GIT="/usr/bin/git"

#
# TODO:
# * Check if software if presence, than make link with configuration.
# * Check if link exists, if yes ommit it, if not create it.
setupEnv()
{
#    ${GIT} clone ${DOTFILES_REPO} ${DOTFILES_DIR}

    # Check in XDG_CONFIG_HOME
    local dotFiles="i3 i3status compton.conf dunst ranger Xresources tigrc tmux.conf urxvt"
    for f in $dotFiles
    do
        if [ ! -h ${XDG_CONFIG_HOME}/$f ]; then
            echo "ln -s ${DOTFILES_DIR}/config/$f ${XDG_CONFIG_HOME}/$f"
        fi
    done

#    ln -s ${DOTFILES_DIR}/config/i3 ${XDG_CONFIG_HOME}/i3
#    ln -s ${DOTFILES_DIR}/config/i3status ${XDG_CONFIG_HOME}/i3status
#    ln -s ${DOTFILES_DIR}/compton.conf ${XDG_CONFIG_HOME}/compton.conf
#    ln -s ${DOTFILES_DIR}/config/dunst ${XDG_CONFIG_HOME}/dunst
#    ln -s ${DOTFILES_DIR}/config/ranger ${XDG_CONFIG_HOME}/ranger
#    ln -s ${DOTFILES_DIR}/Xresources ${HOME}/.Xresources
#    ln -s ${DOTFILES_DIR}/xinit ${HOME}/.xinit
#    ln -s ${DOTFILES_DIR}/xinit ${HOME}/.xsession
#    ln -s ${DOTFILES_DIR}/tigrc ${HOME}/.tigrc
#    ln -s ${DOTFILES_DIR}/tmux.conf ${HOME}/.tmuxrc.conf
#    ln -s ${DOTFILES_DIR}/config/urxvt ${HOME}/.urxvt
}


setupEnv
