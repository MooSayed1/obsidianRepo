#!/bin/bash

case $1 in
    nvchad)
        ln -sf ~/nvim-configs/nvchad/init.vim ~/.config/nvim/init.vim
        echo "Switched to nvchad configuration"
        ;;
    astro)
        ln -sf ~/nvim-configs/astro/init.vim ~/.config/nvim/init.vim
        echo "Switched to astro configuration"
        ;;
    scratch)
        ln -sf ~/nvim-configs/scratch/init.vim ~/.config/nvim/init.vim
        echo "Switched to scratch configuration"
        ;;
    custom)
        ln -sf ~/nvim-configs/custom/init.vim ~/.config/nvim/init.vim
        echo "Switched to custom configuration"
        ;;
    *)
        echo "Usage: nvim-switch.sh {nvchad|astro|scratch|custom}"
        exit 1
        ;;
esac
