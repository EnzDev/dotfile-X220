while getopts sm option
do
case "${option}"
in
s) echo $(cat /proc/meminfo | grep "SwapFree:" | tr -s " " | cut -d$' ' -f2 | numfmt --from-unit 1000 --to=iec)B;;
m) echo $(cat /proc/meminfo | grep "MemAvailable:" | tr -s " " | cut -d$' ' -f2 | numfmt --from-unit 1000 --to=iec)B;;
esac
done

