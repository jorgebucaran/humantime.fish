function humanize_duration -d "Make a time interval human readable"
    command awk '
        function hmTime(time,   stamp) {
            split("h:m:s:ms", units, ":")
            t = int(time / (60 ^ 2 * 1000))
            stamp = stamp t units[1] " "  
            for (i = 1; i >= -1; i--) {
                if (t = int( i < 0 ? time % 1000 : time / (60 ^ i * 1000) % 60 )) {
                    stamp = stamp t units[sqrt((i - 2) ^ 2) + 1] " "
                }
            }
            if (stamp ~ /^ *$/) {
                return "0ms"
            }
            return substr(stamp, 1, length(stamp) - 1)
        }
        { 
            print hmTime($0) 
        }
    '
end
