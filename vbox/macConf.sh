vboxmanage modifyvm "mac" --cpuidset 00000001 000306a9 04100800 7fbae3ff bfebfbff
vboxmanage setextradata "mac" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "MacBookPro11,3"
vboxmanage setextradata "mac" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
vboxmanage setextradata "mac" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
vboxmanage setextradata "mac" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
vboxmanage setextradata "mac" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
