#!/system/bin/sh

load_lancelot()
{
    resetprop "ro.product.model" "Redmi 9"
    resetprop "ro.product.name" "lancelot"
    resetprop "ro.build.product" "lancelot"
    resetprop "ro.product.device" "lancelot"
    resetprop "ro.vendor.product.device" "lancelot"
}

load_galahad()
{
    resetprop "ro.product.model" "Redmi 9"
    resetprop "ro.product.name" "galahad"
    resetprop "ro.build.product" "galahad"
    resetprop "ro.product.device" "galahad"
    resetprop "ro.vendor.product.device" "galahad"
}

load_shiva()
{
    resetprop "ro.product.model" "POCO M2"
    resetprop "ro.product.name" "shiva"
    resetprop "ro.build.product" "shiva"
    resetprop "ro.product.device" "shiva"
    resetprop "ro.vendor.product.device" "shiva"
}

project=$(getprop ro.boot.product.hardware.sku)
echo $project

case $project in
    "lancelot")
        load_lancelot
        ;;
    "galahad")
        load_galahad
        ;;
    "shiva")
        load_shiva
        ;;
    *)
        load_lancelot 
        ;;
esac

exit 0
