# configure Spaceship options

# You can specify the order of prompt section using SPACESHIP_PROMPT_ORDER option. Use Zsh array syntax to define your own prompt order.
# The order also defines which sections that Spaceship loads. If you're struggling with slow prompt, you can just omit the sections that you don't use, and they won't be loaded.
# You can also add items to the right prompt by specifying them in the SPACESHIP_RPROMPT_ORDER option. By default SPACESHIP_RPROMPT_ORDER is empty.
SPACESHIP_PROMPT_ORDER=(
    time          # Time stamps section
    user          # Username section
    dir           # Current directory section
    host          # Hostname section
    git           # Git section (git_branch + git_status)
    # hg            # Mercurial section (hg_branch  + hg_status)
    package       # Package version
    node          # Node.js section
    ruby          # Ruby section
    # elixir        # Elixir section
    xcode         # Xcode section
    swift         # Swift section
    golang        # Go section
    # php           # PHP section
    rust          # Rust section
    # haskell       # Haskell Stack section
    # julia         # Julia section
    docker        # Docker section
    # aws           # Amazon Web Services section
    # gcloud        # Google Cloud Platform section
    venv          # virtualenv section
    # conda         # conda virtualenv section
    pyenv         # Pyenv section
    # dotnet        # .NET section
    # ember         # Ember.js section
    # kubectl       # Kubectl context section
    # terraform     # Terraform workspace section
    exec_time     # Execution time
    line_sep      # Line break
    battery       # Battery level and status
    vi_mode       # Vi-mode indicator
    jobs          # Background jobs indicator
    exit_code     # Exit code section
    char          # Prompt character
)


# Char
SPACESHIP_CHAR_SYMBOL="ζ "

# Time
SPACESHIP_TIME_SHOW=true

# Directory
SPACESHIP_DIR_TRUNC=5

# Battery
SPACESHIP_BATTERY_THRESHOLD=99

# Jobs
SPACESHIP_JOBS_PREFIX="job"
