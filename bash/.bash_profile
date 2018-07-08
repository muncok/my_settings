[[ -r ~/.bashrc  ]] && . ~/.bashrc
export LD_LIBRARY_PATH=/usr/local/cuda-9.1/lib64
export PATH=/usr/local/cuda-9.1/bin:/home/muncok/.local/bin:$PATH
if [ -f ~/.local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh ]; then
        source ~/.local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
fi
alias rm="rm -I"
alias tmux="tmux -2"

