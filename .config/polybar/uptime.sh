#!/usr/bin/zsh
seconds="$(< /proc/uptime)"
seconds="${seconds/.*}"

days="$((seconds / 60 / 60 / 24))"
hours="$((seconds / 60 / 60 % 24))"
mins="$((seconds / 60 % 60))"


if [[ "$days" != "0" ]];then
        if [[ "$days" = "1" ]] && [[ "$hours" = "1" ]];then
                uptime="$days day, ${hours}:${mins}"
                echo "$uptime"
        elif [[ "$days" = "1" ]] && [[ "$hours" != "1" ]];then
                uptime="$days day, ${hours}:${mins}"
                echo "$uptime"
        else
                uptime="$days days, ${hours}:${mins}"
                echo "$uptime"
        fi
elif [[ "$hours" = "0" ]];then
        uptime="0:$mins"
        echo "$uptime"
else
        uptime="${hours}:${mins}"
        echo "$uptime"
fi
