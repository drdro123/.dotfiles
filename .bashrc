# NICE PROMPT (DISABLING AS USING BASH_PROMPT.SH)
# export PS1='\n\n\[\033[36m\]\u\[\033[32m\] (\h) \[\033[33;1m\]\w\[\033[35m\] $(git branch 2>/dev/null | grep '^*' | colrm 1 2)\n\[\033[m\]$ '

# BASH HISTORY
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
export HISTFILESIZE=10000

# GIT
git config --global alias.lg "log --pretty=format:'%Cred%h %Cgreen%ad%Creset %s %C(bold blue)<%an>%C(yellow)%d%Creset' --date=short"

# VIRTUAL ENVIRONMENT
alias ve="source venv/bin/activate"
alias de="deactivate"

# MISCELLANOUS ALIASES
alias "t=tree -I '.git|.tox|venv' -C --dirsfirst"
alias bounce="source /bb/dtjiraEngDev/afranceschin/jira8-jflo/dev-instance-start.sh"
alias config='/opt/bb/bin/git --git-dir=/home/afranceschin/.dotfiles/ --work-tree=/home/afranceschin'
alias ipy="cd ~/scripts/misc; source venv/bin/activate; ipython notebook --no-mathjax --port=8098 --ip=0.0.0.0"
alias jlab="cd ~/scripts/misc; source venv/bin/activate; jupyter lab --port=8098 --ip=0.0.0.0"
alias ls="ls --color --group-directories-first -p"
alias misc="cd ~/scripts/misc"
alias new='python3.7 -m venv venv && source venv/bin/activate && pip install -e .'
alias p="coverage run -m py.test --cov-report term-missing -vv --color=yes &&  coverage report --rcfile=.coveragerc"
alias s="flake8 setup.py src/ tests/ && echo 'Flake8 succesful' && black setup.py src/ tests/ --check"

# Shell Scripts
alias csrepo="source /home/afranceschin/libraries/shell_scripts/csrepo.sh"

# DTP
export PORT=8099

# BLOOMBERG API
export BLPAPI_ROOT=/home/afranceschin/libraries/blpapi_cpp_3.8.18.1

# GIT AUTOCOMPLETE
source ~/libraries/git-completion.bash

# BASH PROMPT
source ~/libraries/bash_prompt.bash

# Append local python path to $PATH
export PATH=~/.local/bin:$PATH

# Vim colors
export TERM=xterm-256color
