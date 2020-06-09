# Setting up dotfiles on a new machine

Running the following bash script will unpack all files in this repository to the correct place, and store git files within `~/.dotfiles`

```bash
git clone --bare https://github.com/drdro123/.dotfiles $HOME/.dotfiles
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
    echo "Checked out config.";
else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
```

# Making changes to dotfiles

The alias `config` permits git interaction with this repo from outside its directory. For example, `config status` will run `git status` for this specific repo. Files can be added using `config add <filename>`. Commits and pushes work similarly. 

# Reference

This is based on https://www.atlassian.com/git/tutorials/dotfiles
