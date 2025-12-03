set -l color00 '#0A1429'
set -l color01 '#e95c4b'
set -l color02 '#6488EA'
set -l color03 '#d7ebe9'
set -l color04 '#ceabad'
set -l color05 '#77aaa2'
set -l color06 '#d8d0b7'
set -l color07 '#e3e9f3'
set -l color08 '#8DAFE2'
set -l color09 '#ed7b6d'
set -l color0A '#819fee'
set -l color0B '#dfefed'
set -l color0C '#f3ced0'
set -l color0D '#98cdc5'
set -l color0E '#fef5db'
set -l color0F '#f6f9ff'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"
