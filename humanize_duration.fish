function humanize_duration -d "Make a time interval human readable"
    if not string length --quiet $argv
         set --erase argv
         read --line argv
    end
    set hours (math --scale=0 $argv/\(3600 \*1000\))
    set mins (math --scale=0 $argv/\(60 \*1000\) % 60)
    set secs (math --scale=0 $argv/1000 % 60)
    if test $hours -gt 0
        set --append output $hours"h"
    end
    if test $mins -gt 0
        set --append output $mins"m"
    end
    if test $secs -gt 0
        set --append output $secs"s"
    end
    if not set --query output
        echo $argv"ms"
    else
        echo $output
    end
end
