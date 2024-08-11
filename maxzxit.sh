dev=@MaxzzX
ver=(V1)
ex=External/Android
prop() {
setprop $2 $1
}
etc() {
settings put global $2 $1
}
game() {
settings put secure $2 $1
}
sensix() {
settings put system $2 $1
}
net() {
settings put --user 0 global $1 $2
}
sensix() {
wm size $1
}
printf "
        ╔╗╔╦╦══╦══╦═╗╔══╦╗
        ║║║╠╣══╣║═╣╔╗╣══╬╣
        ║╚╝║╠══║║═╣║║╠══║║
        ╚══╩╩══╩══╩╝╚╩══╩╝"
echo ""
echo ""
sleep 1
echo "[ 𝙄𝙉𝙁𝙊𝙍𝙈𝘼𝙏𝙄𝙊𝙉 𝘿𝙀𝙑𝙇𝙊𝙋𝙀𝙍 ] "
echo "Developer : ${dev} "
echo "Version : ${ver} "

echo "【 YOUR DEVICE INFO 】"
sleep 1
echo "ID Device    > $(getprop ro.product.model)"
sleep 1
echo "ID Brand     > $(getprop ro.product.system.brand)"
sleep 1
echo "Activate Module..."
echo "Please Wait..."
touch_reponsive() {
touched=settings
executive=put
xy=secure
${touched} ${executive} ${xy} multi_press_timeout "$1"> /dev/null 2>&1
${touched} ${executive} ${xy} long_press_timeout "$2"> /dev/null 2>&1
}
game_opt() {
pm log-visibility --disable "$2"> /dev/null 2>&1
pm log-visibility --disable "$1"> /dev/null 2>&1
}
extract() {
x1=$(expr $RANDOM % 1000 + 1)
y1=$(expr $RANDOM % 1000 + 1)
x2=$(expr $RANDOM % 1000 + 1)
y2=$(expr $RANDOM % 1000 + 1)
duration=$(expr $RANDOM % 1000 + 500)
swipe_command="input swipe $x1 $y1 $x2 $y2 $duration -1"
$swipe_command
}
super() {
x=m
y=w
super=ze
ekstreme=si
${y}${x} ${ekstreme}${super} $1
}
permission() {
  local coordinate=$1
  if [ $coordinate -lt 0 ]; then
    coordinate=0
  elif [ $coordinate -gt 1000 ]; then 
    coordinate=1000
  fi
  echo $coordinate
}
output() {
  aim=swipe
  local x=$(expr $RANDOM % 1000 + 1)
  local y=$(expr $RANDOM % 1000 + 1)
  local duration=$(expr $RANDOM % 1000 + 500)

  extract ${aim} $(permission $x) $(permission $y) 2000 2000 $duration
  extract ${aim} $(permission $x) $(permission $y) 2000 0 $duration
  extract ${aim} $(permission $x) $(permission $y) 0 2000 $duration 
  extract ${aim} $(permission $x) $(permission $y) 0 0 $duration

  extract ${aim} $(permission $x) $(permission $y) 2000 2000 $duration
  extract ${aim} $(permission $x) $(permission $y) 0 2000 $duration
}
extract
output
cmd notification post -S bigtext -t 'UISENSI' 'Tag' 'Status: Online Version: NEW 3.0'> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefireth/cache/*> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefiremax/cache/*> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefireth/cache/*> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefireth/files/il2cpp/*> /dev/null 2>&1
rm -r /sdcard/Android/data/com.dts.freefiremax/files/il2cpp/*> /dev/null 2>&1
rm -f /data/local/traces/*> /dev/null 2>&1
rm -f /sdcard/Android/data/com.dts.freefireth/files/ffrtc_log.txt*> /dev/null 2>&1
rm -f /sdcard/Android/data/com.dts.freefireth/files/ffrtc_log_bak.txt*> /dev/null 2>&1
rm -f /sdcard/Android/data/com.dts.freefiremax/files/ffrtc_log.txt*> /dev/null 2>&1
rm -f /sdcard/Android/data/com.dts.freefiremax/files/ffrtc_log_bak.txt*> /dev/null 2>&1
sleep 3 && touch_reponsive 100 100
sleep 1 && game_opt com.dts.freefiremax com.dts.freefireth
sleep 3 && wm density reset
sleep 1.3
settings put global touch.pressure.scale 0.001
settings put system touch.pressure.scale 0.001
settings put system touch.orientationAware 1
settings put system touch.filter.level 1
settings put system touch.size.bias -10.0
settings put system touch.size.calibration area
settings put system touch.pressure.calibration physical
settings put system touch.size.scale 1.2
settings put system touch.size.isSummed 0
settings put system touch.distance.scale 1
settings put system touch.coverage.calibration none
settings put system touch.gestureMode spots
settings put system MultitouchMinDistance 0px
settings put system MultitouchSettleInterval 0.2ms
settings put system TapInterval 0.3ms
settings put system TapSlop 0px
settings put system touch.orientation.calibration interpolated
settings put system touch.distance.calibration none
settings put system ro.product.multi_touch_enabled true
settings put system touch.deviceType touchScreen
setprop debug.responsive_touch true
settings put system touch.toolSize.isSummed 0
settings put system view.scroll_friction 10
settings put system view.touch_slop 2
settings put system af.resampler.quality 255
settings put secure long_press_timeout 250
settings put system ro.product.max_num_touch 10
settings put system persist.af.resampler.quality 255
settings put secure multi_press_timeout 250
settings put secure tap_duration_enabled 1
settings put secure tap_duration_threshold 0.0
echo " SUCCESS INSTALL MODULE"