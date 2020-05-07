devices=('cepheus' 'davinci' 'guacamole' 'jasmine_sprout' 'land' 'phoenix' 'raphael' 'violet' 'wayne' 'whyred' 'z2_plus')

function lunch_devices() {
    add_lunch_combo lucid_${device}-user
    add_lunch_combo lucid_${device}-userdebug
}

for device in ${devices[@]}; do
    lunch_devices
done
