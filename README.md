# .dotfiles

### Created for and by [@arukshpatel](github.com/arukshpatel)

---

## To use:

1. Download/Clone this repo and place the repo in `~/` folder.

    - Can be found using `echo $HOME` on OSx

2. Run the `install.sh` script
    ```sh
        sh ~/.dotfiles/install.sh
    ```

---

## Installations

1. Installs **HomeBrew** which installs:

    → git

    → git-secret

    → stow

    → nvm

    → pnpm

    → _OPTIONAL:_ github cli (gh)

2. Stow configuration files into `~/` directory.
3. Makes `.nvm/` directory in `~/`

    → Installs Node (Latest) using NVM

4. Ask if you want to set ZSH as default shell, if not already.
5. Restart shell
