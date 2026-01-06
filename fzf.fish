set -l color00 '#1d1d1d'
set -l color01 '#F28A8A'
set -l color02 '#92C88B'
set -l color03 '#FFB58A'
set -l color04 '#8AB8FF'
set -l color05 '#FF9BE2'
set -l color06 '#C89BFF'
set -l color07 '#A3A3B3'
set -l color08 '#212126'
set -l color09 '#F79999'
set -l color0A '#A0D0A0'
set -l color0B '#FFC4A2'
set -l color0C '#ADC8FF'
set -l color0D '#FFB0F0'
set -l color0E '#D0AAFF'
set -l color0F '#E9ECF2'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"