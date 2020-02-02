id=$(xinput | grep TouchPad | sed "s/.*id=\([0-9]*\).*/\1/g")
enabled=$(xinput list-props $id | grep "Device Enabled" | sed "s/\s*Device Enabled.*:\s*\([0-9]*\)/\1/g")

if [[ $1 == "-t" ]]; then
	set_toggle=$([ $enabled == 1 ] && echo 0 || echo 1)

	xinput set-prop $id "Device Enabled" $set_toggle
	enabled=$set_toggle
fi
[ $enabled == 1 ] && echo "On" || echo "Off"
