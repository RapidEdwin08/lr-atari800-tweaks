#!/usr/bin/env bash

scriptREF=$(
echo ""
echo " WHAT TWEAKS ARE APPLIED?"
echo '[retroarch-core-options.cfg] Settings {from RetroPie Docs}'
echo "[Segmentation fault] F1X: Disable Menu Widgets"
echo "[  Memo Pad Screen ] F1X: Apply Settings to All Config Locations"
echo ""
echo " [BIOS Locations for lr-atari800]:"
echo "PLACE YOUR [atari800] BIOS Files in [~/RetroPie/BIOS]* "
echo "[5200.rom ATARIXL.ROM ATARIBAS.ROM ATARIOSA.ROM ATARIOSB.ROM]"
echo "[        BASIC Revision A (19xx)(Atari)(400-800).rom        ]"
echo ""
echo " [lr-atari800-runcommand-onstart] {raphkoster} (*Updated 202203*)"
echo "Script that configures lr-atari800 for OSa, BASIC, artifacting, and PAL"
)

atariREF=$(
echo " [lr-atari800] Config File Locations:"
echo "/opt/retropie/configs/all/retroarch-core-options.cfg"
echo ""
echo "/opt/retropie/configs/atari800/lr-atari800.cfg"
echo "/opt/retropie/configs/atari800/retroarch.cfg"
echo "/opt/retropie/configs/atari800/retroarch-core-options.cfg"
echo ""
echo "/opt/retropie/configs/atari5200/retroarch.cfg"
echo "/opt/retropie/configs/atari5200/retroarch-core-options.cfg"
echo ""
echo " [retroarch-core-options.cfg] Settings:"
echo 'atari800_artifacting = "enabled"'
echo 'atari800_cassboot = "disabled"'
echo 'atari800_internalbasic = "disabled"'
echo 'atari800_keyboard = "poll"'
echo 'atari800_ntscpal = "NTSC"'
echo 'atari800_opt1 = "disabled"'
echo 'atari800_opt2 = "disabled"'
echo 'atari800_resolution = "336x240"'
echo 'atari800_sioaccel = "enabled"'
echo 'atari800_system = "5200"'
echo ""
echo ' [lr-atari800.cfg] Machine Settings:'
#echo 'MACHINE_TYPE=Atari 5200'
#echo 'RAM_SIZE=16'
echo 'MACHINE_TYPE=Atari XL/XE'
echo 'RAM_SIZE=64'
echo 'DISABLE_BASIC=1' 
echo ""
echo ' [lr-atari800.cfg] BIOS Location Settings:'
echo 'ROM_OS_A_PAL=~/RetroPie/BIOS/ATARIOSA.ROM'
echo 'ROM_OS_BB01R2=~/RetroPie/BIOS/ATARIXL.ROM'
echo 'ROM_5200=~/RetroPie/BIOS/5200.rom'
echo 'ROM_BASIC_A=~/RetroPie/BIOS/BASIC Revision A (19xx)(Atari)(400-800).rom'
echo 'ROM_BASIC_C=~/RetroPie/BIOS/ATARIBAS.ROM'
echo 'ROM_400/800_CUSTOM=~/RetroPie/BIOS/ATARIOSB.ROM'
echo ""
echo ' [retroarch.cfg] Settings [Segmentation fault Fix for RetroPie v4.7.1]:'
echo 'menu_enable_widgets = false'
echo ""
echo " [lr-atari800-runcommand-onstart] {raphkoster} (*Updated 202203*)"
echo "A helper script that automatically reconfigures lr-atari800 for OSa, BASIC, artifacting, and PAL"
echo ""
echo "Ensure that your Atari 8-bit roms follow the naming convention..."
echo ' ...where you see (PD)(GB)[k-file][BASIC] etc in the filenames.'
echo ""
echo "Dreadnought Megastars (1990)(Byte Back)(PAL)(GB)[k-file].atr"
echo "// this game will launch in PAL"
echo ""
echo "Beer Shot (1994)(Bednar, Kamil)(PD)[BASIC].atr"
echo "// this game will enable BASIC"
echo ""
echo "Head over Heels (19xx)(Hit Squad)(GB)[h Homesoft][k-file].atr"
echo "// this game will run with default of no BASIC and NTSC"
echo ""
echo "Ice Cap (19xx)(MacIlwee, Steven)(GB)[req OSa].atr"
echo " // this game will run on a 400/800 with OSa"
echo ""
echo "Galactic Quest (1981)(Crystalware)(US)[req OSa][BASIC].atr"
echo "// this game will set the system to 400/800 OSa + set BASIC to Rev. A"
echo ""
echo "Obtain a copy of the BIOS for Atari BASIC Revision A:"
echo "{md5} = [a4dc52536d526ecc51ea857b9fa2b90f] "
echo ""
echo "Place it in ~/RetroPie/BIOS -- be sure to give it a different filename"
echo "        [BASIC Revision A (19xx)(Atari)(400-800).rom]"
)

atariFILES=$(
echo ""
echo " [lr-atari800] Config File Locations:"
echo "/opt/retropie/configs/all/retroarch-core-options.cfg"
echo ""
echo "/opt/retropie/configs/atari800/lr-atari800.cfg"
echo "/opt/retropie/configs/atari800/retroarch.cfg"
echo "/opt/retropie/configs/atari800/retroarch-core-options.cfg"
echo ""
echo "/opt/retropie/configs/atari5200/retroarch.cfg"
echo "/opt/retropie/configs/atari5200/retroarch-core-options.cfg"
echo ""
)

atariBIOS=$(
echo ""
echo " *PLACE YOUR [atari800/5200] BIOS Files in [~/RetroPie/BIOS]* "
echo '   ~/RetroPie/BIOS/5200.rom'
echo '   ~/RetroPie/BIOS/ATARIBAS.ROM'
echo '   ~/RetroPie/BIOS/ATARIOSA.ROM'
echo '   ~/RetroPie/BIOS/ATARIOSB.ROM'
echo '   ~/RetroPie/BIOS/ATARIXL.ROM'
echo '   ~/RetroPie/BIOS/BASIC Revision A (19xx)(Atari)(400-800).rom'
)

atariRUNref=$(
echo ""
echo " [lr-atari800-runcommand-onstart] {raphkoster} (*Updated 202203*)"
echo "A helper script that automatically reconfigures lr-atari800 for OSa, BASIC, artifacting, and PAL"
echo ""
echo "Ensure that your Atari 8-bit roms follow the naming convention..."
echo ' ...where you see (PD)(GB)[k-file][BASIC] etc in the filenames.'
echo ""
echo "Dreadnought Megastars (1990)(Byte Back)(PAL)(GB)[k-file].atr"
echo "// this game will launch in PAL"
echo ""
echo "Beer Shot (1994)(Bednar, Kamil)(PD)[BASIC].atr"
echo "// this game will enable BASIC"
echo ""
echo "Head over Heels (19xx)(Hit Squad)(GB)[h Homesoft][k-file].atr"
echo "// this game will run with default of no BASIC and NTSC"
echo ""
echo "Ice Cap (19xx)(MacIlwee, Steven)(GB)[req OSa].atr"
echo " // this game will run on a 400/800 with OSa"
echo ""
echo "Galactic Quest (1981)(Crystalware)(US)[req OSa][BASIC].atr"
echo "// this game will set the system to 400/800 OSa + set BASIC to Rev. A"
echo ""
echo "Obtain a copy of the BIOS for Atari BASIC Revision A:"
echo "{md5} = [a4dc52536d526ecc51ea857b9fa2b90f] "
echo ""
echo "Place it in ~/RetroPie/BIOS -- be sure to give it a different filename"
echo "        [BASIC Revision A (19xx)(Atari)(400-800).rom]"
)

# "This is a verified working [lr-atari800.cfg] file"
# Pulled from a Rpi3 running RetroPie v4.7.1
atariCFG=$(
echo 'Atari 800 Emulator, Version 3.1.0'
echo 'ROM_OS_A_NTSC='
echo 'ROM_OS_A_PAL=/home/pi/RetroPie/BIOS/ATARIOSA.ROM'
echo 'ROM_OS_B_NTSC='
echo 'ROM_OS_AA00R10='
echo 'ROM_OS_AA00R11='
echo 'ROM_OS_BB00R1='
echo 'ROM_OS_BB01R2=/home/pi/RetroPie/BIOS/ATARIXL.ROM'
echo 'ROM_OS_BB02R3='
echo 'ROM_OS_BB02R3V4='
echo 'ROM_OS_CC01R4='
echo 'ROM_OS_BB01R3='
echo 'ROM_OS_BB01R4='
echo 'ROM_OS_BB01R59='
echo 'ROM_OS_BB01R59A='
echo 'ROM_5200=/home/pi/RetroPie/BIOS/5200.rom'
echo 'ROM_5200_A='
echo 'ROM_BASIC_A=/home/pi/RetroPie/BIOS/BASIC Revision A (19xx)(Atari)(400-800).rom'
echo 'ROM_BASIC_B='
echo 'ROM_BASIC_C=/home/pi/RetroPie/BIOS/ATARIBAS.ROM'
echo 'ROM_XEGAME='
echo 'ROM_400/800_CUSTOM=/home/pi/RetroPie/BIOS/ATARIOSB.ROM'
echo 'ROM_XL/XE_CUSTOM='
echo 'ROM_5200_CUSTOM='
echo 'ROM_BASIC_CUSTOM='
echo 'ROM_XEGAME_CUSTOM='
echo 'OS_400/800_VERSION=AUTO'
echo 'OS_XL/XE_VERSION=AUTO'
echo 'OS_5200_VERSION=AUTO'
echo 'BASIC_VERSION=AUTO'
echo 'XEGS_GAME_VERSION=AUTO'
echo 'H1_DIR='
echo 'H2_DIR='
echo 'H3_DIR='
echo 'H4_DIR='
echo 'HD_READ_ONLY=1'
echo 'PRINT_COMMAND=lpr %s'
echo 'SCREEN_REFRESH_RATIO=1'
echo 'MACHINE_TYPE=Atari 400/800'
echo 'RAM_SIZE=48'
echo 'DEFAULT_TV_MODE=NTSC'
echo 'MOSAIC_RAM_NUM_BANKS=0'
echo 'AXLON_RAM_NUM_BANKS=0'
echo 'ENABLE_MAPRAM=0'
echo 'DISABLE_BASIC=1'
echo 'ENABLE_SIO_PATCH=0'
echo 'ENABLE_SLOW_XEX_LOADING=0'
echo 'ENABLE_H_PATCH=0'
echo 'ENABLE_P_PATCH=0'
echo 'ENABLE_NEW_POKEY=1'
echo 'STEREO_POKEY=0'
echo 'BUILTIN_BASIC=0'
echo 'KEYBOARD_LEDS=0'
echo 'F_KEYS=0'
echo 'BUILTIN_GAME=0'
echo 'KEYBOARD_DETACHED=0'
echo '1200XL_JUMPER=0'
echo 'CFG_SAVE_ON_EXIT=0'
echo 'MIO_ROM='
echo 'BLACK_BOX_ROM='
echo 'PROTO80_ROM='
echo 'CARTRIDGE_FILENAME='
echo 'CARTRIDGE_TYPE=0'
echo 'CARTRIDGE_PIGGYBACK_FILENAME='
echo 'CARTRIDGE_PIGGYBACK_TYPE=0'
echo 'CARTRIDGE_AUTOREBOOT=1'
echo 'CASSETTE_FILENAME='
echo 'CASSETTE_LOADED=0'
echo 'CASSETTE_WRITE_PROTECT=0'
echo 'RTIME=1'
echo 'XEP80_CHARSET='
echo 'AF80_ROM='
echo 'AF80_CHARSET='
echo 'COLOURS_NTSC_SATURATION=0'
echo 'COLOURS_NTSC_CONTRAST=0'
echo 'COLOURS_NTSC_BRIGHTNESS=0'
echo 'COLOURS_NTSC_GAMMA=2.35'
echo 'COLOURS_NTSC_HUE=0'
echo 'COLOURS_NTSC_GTIA_DELAY=26.8'
echo 'COLOURS_NTSC_EXTERNAL_PALETTE='
echo 'COLOURS_NTSC_EXTERNAL_PALETTE_LOADED=0'
echo 'COLOURS_NTSC_ADJUST_EXTERNAL_PALETTE=0'
echo 'COLOURS_PAL_SATURATION=0'
echo 'COLOURS_PAL_CONTRAST=0'
echo 'COLOURS_PAL_BRIGHTNESS=0'
echo 'COLOURS_PAL_GAMMA=2.35'
echo 'COLOURS_PAL_HUE=0'
echo 'COLOURS_PAL_GTIA_DELAY=23.2'
echo 'COLOURS_PAL_EXTERNAL_PALETTE='
echo 'COLOURS_PAL_EXTERNAL_PALETTE_LOADED=0'
echo 'COLOURS_PAL_ADJUST_EXTERNAL_PALETTE=0'
echo 'ARTIFACT_NTSC=NONE'
echo 'ARTIFACT_PAL=NONE'
echo 'ARTIFACT_NTSC_MODE=0'
echo 'SCREEN_SHOW_SPEED=0'
echo 'SCREEN_SHOW_IO_ACTIVITY=1'
echo 'SCREEN_SHOW_IO_COUNTER=0'
echo 'SCREEN_SHOW_1200XL_LEDS=1'
echo 'FILTER_NTSC_SHARPNESS=-0.5'
echo 'FILTER_NTSC_RESOLUTION=-0.1'
echo 'FILTER_NTSC_ARTIFACTS=0'
echo 'FILTER_NTSC_FRINGING=0'
echo 'FILTER_NTSC_BLEED=0'
echo 'FILTER_NTSC_BURST_PHASE=0'
echo 'SOUND_ENABLED=1'
echo 'SOUND_RATE=44100'
echo 'SOUND_BITS=16'
echo 'SOUND_BUFFER_MS=0'
echo 'SOUND_LATENCY=20'
)

atariLR=$(
echo ""
echo "     Recommended RUNNING [lr-atari800] FIRST... "
echo "To Genterate a [lr-atari800.cfg] based on your HW/SW"
echo ""
echo 'If Not a GENERIC [lr-atari800.cfg] will be Genterated for you...'
echo "But you may experience Mixed Results with the GENERIC [lr-atari800.cfg]"
)

mainMENU()
{

# WARN IF [lr-atari800.cfg] N0T Found 
if [ ! -f /opt/retropie/configs/atari800/lr-atari800.cfg ]; then
	dialog --no-collapse --title "***N0TICE*** [lr-atari800.cfg] NOT FOUND!" --ok-label MENU --msgbox "$atariLR"  25 75
fi
# Confirm Configurations
confCONFIG=$(dialog --no-collapse --title "[lr-atari800] Tweaks for [RetroPie <=4.7.1] by: RapidEdwin08 [202203]" \
	--ok-label OK --cancel-label EXIT \
	--menu "$scriptREF" 25 75 20 \
	1 "><  APPLY    [lr-atari800] Tweaks for [RetroPie <=4.7.1]  ><" \
	2 "><  INSTALL  [lr-atari800-runcommand-onstart] {raphkoster}  ><" \
	3 "><  WIPE ALL [lr-atari800] Settings/Tweaks/runcommand-onstart  ><" \
	4 "><  REFERENCES  ><" 2>&1>/dev/tty)

if [ "$confCONFIG" == '1' ]; then applyTWEAKS; fi
if [ "$confCONFIG" == '2' ]; then applyRUNCMD; fi 

# WIPE [lr-atari800] Settings
if [ "$confCONFIG" == '3' ]; then
	cat /opt/retropie/configs/all/retroarch-core-options.cfg | grep -v 'atari800_' > /dev/shm/retroarch-core-options.cfg
	mv /dev/shm/retroarch-core-options.cfg /opt/retropie/configs/all/retroarch-core-options.cfg 2>/dev/null
	
	rm /opt/retropie/configs/atari800/retroarch-core-options.cfg 2>/dev/null
	rm /opt/retropie/configs/atari5200/retroarch-core-options.cfg 2>/dev/null
	
	rm /opt/retropie/configs/atari800/lr-atari800.cfg 2>/dev/null
	
	cat /opt/retropie/configs/atari800/retroarch.cfg | grep -v 'menu_enable_widgets = false' > /dev/shm/retroarch.cfg
	mv /dev/shm/retroarch.cfg /opt/retropie/configs/atari800/retroarch.cfg 2>/dev/null

	cat /opt/retropie/configs/atari5200/retroarch.cfg | grep -v 'menu_enable_widgets = false' > /dev/shm/retroarch.cfg
	mv /dev/shm/retroarch.cfg /opt/retropie/configs/atari5200/retroarch.cfg 2>/dev/null
	
	# Create DEFAULT [emulators.cfg] If Current File NOT Found
	if [ ! -f /opt/retropie/configs/atari800/emulators.cfg ]; then
		echo 'lr-atari800 = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-atari800/atari800_libretro.so --config /opt/retropie/configs/atari800/retroarch.cfg %ROM%"' > /dev/shm/emulators.cfg
		echo 'default = "lr-atari800"' >> /dev/shm/emulators.cfg
	else
		# Add Anything/Everything from Current [emulators.cfg] EXCEPT [lr-atari800-runcommand-onstart] by {raphkoster}
		cat /opt/retropie/configs/atari800/emulators.cfg | grep -v 'lr-atari800-ctia =' | grep -v 'lr-atari800-gtia =' | grep -v 'lr-atari800-artifacting1 =' | grep -v 'lr-atari800-artifacting2 =' > /dev/shm/emulators.cfg
	fi
	# Restore [emulators.cfg] for [lr-atari800]
	mv /dev/shm/emulators.cfg /opt/retropie/configs/atari800/emulators.cfg 2>/dev/null
	
	if [ ! -f /opt/retropie/configs/atari5200/emulators.cfg ]; then
		echo 'lr-atari800 = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-atari800/atari800_libretro.so --config /opt/retropie/configs/atari5200/retroarch.cfg %ROM%"' > /dev/shm/emulators.cfg
		echo 'default = "lr-atari800"' >> /dev/shm/emulators.cfg
	else
		# Add Anything/Everything from Current [emulators.cfg] EXCEPT [lr-atari800-runcommand-onstart] by {raphkoster}
		cat /opt/retropie/configs/atari5200/emulators.cfg | grep -v 'lr-atari800-ctia =' | grep -v 'lr-atari800-gtia =' | grep -v 'lr-atari800-artifacting1 =' | grep -v 'lr-atari800-artifacting2 =' > /dev/shm/emulators.cfg
	fi
	# Restore [emulators.cfg] for [lr-atari800]
	mv /dev/shm/emulators.cfg /opt/retropie/configs/atari5200/emulators.cfg 2>/dev/null
	
	# Backup runcommand-onstart if not exist already
	if [ ! -f /opt/retropie/configs/all/runcommand-onstart.sh.bak800 ]; then cp /opt/retropie/configs/all/runcommand-onstart.sh /opt/retropie/configs/all/runcommand-onstart.sh.bak800 2>/dev/null; fi
	
	# Parse all lines Except the [lr-atari800-runcommand-onstart]
	cat /opt/retropie/configs/all/runcommand-onstart.sh | grep -v "#lr-atari800-tweaks" > /dev/shm/runcommand-onstart.sh
	mv /dev/shm/runcommand-onstart.sh /opt/retropie/configs/all/runcommand-onstart.sh
	
	# Clean up Files Left from [lr-atari800-runcommand-onstart] by {raphkoster}
	rm "/opt/retropie/configs/atari800/README.md" 2>/dev/null
	rm "/opt/retropie/configs/atari800/runcommand-onstart.diff" 2>/dev/null
	rm "/opt/retropie/configs/atari800/runcommand-onstart.sh" 2>/dev/null
	rm "/opt/retropie/configs/atari800/suggested artifacting mode.txt" 2>/dev/null
	
	dialog --no-collapse --title "WIPE [lr-atari800] Settings  *COMPLETE!*" --ok-label MENU --msgbox " $atariFILES"  25 75
	tput reset
	mainMENU
fi

if [ "$confCONFIG" == '4' ]; then
	dialog --no-collapse --title "[lr-atari800] Tweaks for [RetroPie <=4.7.1] REFERENCES" --ok-label MENU --msgbox "$atariREF"  25 75
	mainMENU
fi

# QUIT if N0T Confirmed
if [ "$confCONFIG" == '' ]; then
	tput reset
	exit 0
fi

tput reset
exit 0
}

applyTWEAKS()
{
tput reset
# =====================================
# Create [lr-atari800.cfg] from a verified working [.atari800.cfg] file If N0T Found 
if [ ! -f /opt/retropie/configs/atari800/lr-atari800.cfg ]; then echo "$atariCFG" > /opt/retropie/configs/atari800/lr-atari800.cfg; fi

# Backup [lr-atari800.cfg] if not exist already
if [ ! -f /opt/retropie/configs/atari800/lr-atari800.cfg.bak800 ]; then cp /opt/retropie/configs/atari800/lr-atari800.cfg /opt/retropie/configs/atari800/lr-atari800.cfg.bak800 2>/dev/null; fi

# Configure [lr-atari800.cfg] for BIOS FIles Locations
sed -i 's/ROM\_OS\_A\_PAL=.*/ROM\_OS\_A\_PAL=\/home\/pi\/RetroPie\/BIOS\/ATARIOSA.ROM/g' /opt/retropie/configs/atari800/lr-atari800.cfg
sed -i 's/ROM\_OS\_BB01R2=.*/ROM\_OS\_BB01R2=\/home\/pi\/RetroPie\/BIOS\/ATARIXL.ROM/g' /opt/retropie/configs/atari800/lr-atari800.cfg
sed -i 's/ROM\_5200=.*/ROM\_5200=\/home\/pi\/RetroPie\/BIOS\/5200.rom/g' /opt/retropie/configs/atari800/lr-atari800.cfg
sed -i 's/ROM\_BASIC\_A=.*/ROM\_BASIC\_A=\/home\/pi\/RetroPie\/BIOS\/BASIC Revision A (19xx)(Atari)(400-800).rom/g' /opt/retropie/configs/atari800/lr-atari800.cfg
sed -i 's/ROM\_BASIC\_C=.*/ROM\_BASIC\_C=\/home\/pi\/RetroPie\/BIOS\/ATARIBAS.ROM/g' /opt/retropie/configs/atari800/lr-atari800.cfg
sed -i 's/ROM\_400\/800\_CUSTOM=.*/ROM\_400\/800\_CUSTOM=\/home\/pi\/RetroPie\/BIOS\/ATARIOSB.ROM/g' /opt/retropie/configs/atari800/lr-atari800.cfg

# Configure [lr-atari800.cfg] for [atari5200]
#sed -i 's/MACHINE\_TYPE=.*/MACHINE\_TYPE=Atari 5200/g' /opt/retropie/configs/atari800/lr-atari800.cfg
#sed -i 's/RAM\_SIZE=.*/RAM\_SIZE=16/g' /opt/retropie/configs/atari800/lr-atari800.cfg
sed -i 's/MACHINE\_TYPE=.*/MACHINE\_TYPE=Atari XL\/XE/g' /opt/retropie/configs/atari800/lr-atari800.cfg
sed -i 's/RAM\_SIZE=.*/RAM\_SIZE=64/g' /opt/retropie/configs/atari800/lr-atari800.cfg

# Most games you will find for the Atari are machine language, and require that BASIC be disabled. 
# https://retropie.org.uk/forum/topic/22392/lr-atari800-5200-artifacting-basic-and-other-guidance
sed -i 's/DISABLE\_BASIC=.*/DISABLE\_BASIC=1/g' /opt/retropie/configs/atari800/lr-atari800.cfg

# Add [SDL_JOY] If N0T Found
if [ "$(cat /opt/retropie/configs/atari800/lr-atari800.cfg | grep -q 'SDL_JOY_' ; echo $?)" == '1' ]; then
	echo 'SDL_JOY_0_ENABLED=1' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_0_LEFT=260' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_0_RIGHT=262' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_0_UP=264' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_0_DOWN=261' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_0_TRIGGER=305' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_1_ENABLED=0' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_1_LEFT=97' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_1_RIGHT=100' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_1_UP=119' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_1_DOWN=115' >> /opt/retropie/configs/atari800/lr-atari800.cfg
	echo 'SDL_JOY_1_TRIGGER=306' >> /opt/retropie/configs/atari800/lr-atari800.cfg
fi

# Replace [/home/pi] with current User [$homeDIR] in Playlist - This may Not be a pi
homeDIR=~/
sed -i s+'/home/pi/'+"$homeDIR"+ /opt/retropie/configs/atari800/lr-atari800.cfg

# RetroPie v4.7.1 [Segmentation fault ] F1X for [lr-atari800]
# https://retropie.org.uk/forum/topic/28250/lr-atari800-on-pi-3b-segfaults-at-startup-with-usb-joystick-attached/2

# Backup atari800 [retroarch.cfg] if not exist already
if [ ! -f /opt/retropie/configs/atari800/retroarch.cfg.bak800 ]; then cp /opt/retropie/configs/atari800/retroarch.cfg /opt/retropie/configs/atari800/retroarch.cfg.bak800 2>/dev/null; fi
	
# Apply [Segmentation fault ] F1X atari800 Config
if [ ! -f /opt/retropie/configs/atari800/retroarch.cfg ]; then echo 'menu_enable_widgets = false' > /opt/retropie/configs/atari800/retroarch.cfg; fi
if [ $(cat /opt/retropie/configs/atari800/retroarch.cfg | grep -q 'menu_enable_widgets = false' ; echo $?) == '1' ]; then echo 'menu_enable_widgets = false' >> /opt/retropie/configs/atari800/retroarch.cfg; fi

# Backup atari5200 [retroarch.cfg] if not exist already
if [ ! -f /opt/retropie/configs/atari5200/retroarch.cfg.bak800 ]; then cp /opt/retropie/configs/atari5200/retroarch.cfg /opt/retropie/configs/atari5200/retroarch.cfg.bak800 2>/dev/null; fi
	
# Apply [Segmentation fault] F1X atari5200 Config
if [ ! -f /opt/retropie/configs/atari5200/retroarch.cfg ]; then echo 'menu_enable_widgets = false' > /opt/retropie/configs/atari5200/retroarch.cfg; fi
if [ $(cat /opt/retropie/configs/atari5200/retroarch.cfg | grep -q 'menu_enable_widgets = false' ; echo $?) == '1' ]; then echo 'menu_enable_widgets = false' >> /opt/retropie/configs/atari5200/retroarch.cfg; fi

# Apply Joysticks Config atari800 Config
if [ $(cat /opt/retropie/configs/atari800/retroarch.cfg | grep -q 'input_libretro_device_p1 = "513"' ; echo $?) == '1' ]; then echo 'input_libretro_device_p1 = "513"' >> /opt/retropie/configs/atari800/retroarch.cfg; fi
if [ $(cat /opt/retropie/configs/atari800/retroarch.cfg | grep -q 'input_libretro_device_p2 = "513"' ; echo $?) == '1' ]; then echo 'input_libretro_device_p2 = "513"' >> /opt/retropie/configs/atari800/retroarch.cfg; fi

# Apply Joysticks Config atari5200 Config
if [ $(cat /opt/retropie/configs/atari5200/retroarch.cfg | grep -q 'input_libretro_device_p1 = "513"' ; echo $?) == '1' ]; then echo 'input_libretro_device_p1 = "513"' >> /opt/retropie/configs/atari5200/retroarch.cfg; fi
if [ $(cat /opt/retropie/configs/atari5200/retroarch.cfg | grep -q 'input_libretro_device_p2 = "513"' ; echo $?) == '1' ]; then echo 'input_libretro_device_p2 = "513"' >> /opt/retropie/configs/atari5200/retroarch.cfg; fi

# RetroPie v4.7.1 [Memo Pad Screen] F1X for atari5200 ROMs in [lr-atari800]
# https://retropie.org.uk/forum/topic/22412/atari-800-settings-don-t-get-saved

# Configure C0RE-W1DE [retroarch-core-options.cfg] in [configs/all] for Atarti5200
# https://retropie.org.uk/docs/Atari-800-and-5200/
echo 'atari800_artifacting = "enabled"' > /dev/shm/retroarch-core-options.cfg
echo 'atari800_cassboot = "disabled"' >> /dev/shm/retroarch-core-options.cfg
echo 'atari800_internalbasic = "disabled"' >> /dev/shm/retroarch-core-options.cfg
echo 'atari800_keyboard = "poll"' >> /dev/shm/retroarch-core-options.cfg
echo 'atari800_ntscpal = "NTSC"' >> /dev/shm/retroarch-core-options.cfg
echo 'atari800_opt1 = "disabled"' >> /dev/shm/retroarch-core-options.cfg
echo 'atari800_opt2 = "disabled"' >> /dev/shm/retroarch-core-options.cfg
echo 'atari800_resolution = "336x240"' >> /dev/shm/retroarch-core-options.cfg
echo 'atari800_sioaccel = "enabled"' >> /dev/shm/retroarch-core-options.cfg
echo 'atari800_system = "5200"' >> /dev/shm/retroarch-core-options.cfg
cat /opt/retropie/configs/all/retroarch-core-options.cfg | grep -v "atari800_" >> /dev/shm/retroarch-core-options.cfg

# Backup C0RE-W1DE [retroarch-core-options.cfg] if not exist already
if [ ! -f /opt/retropie/configs/all/retroarch-core-options.cfg.bak800 ]; then cp /opt/retropie/configs/all/retroarch-core-options.cfg /opt/retropie/configs/all/retroarch-core-options.cfg.bak800 2>/dev/null; fi

# Replace C0RE-W1DE [retroarch-core-options.cfg] with Updated [atari5200] Settings
mv /dev/shm/retroarch-core-options.cfg /opt/retropie/configs/all/retroarch-core-options.cfg

# Backup core options for [configs/atari800] if not exist already
if [ ! -f /opt/retropie/configs/atari800/retroarch-core-options.cfg.bak800 ]; then cp /opt/retropie/configs/atari800/retroarch-core-options.cfg /opt/retropie/configs/atari800/retroarch-core-options.cfg.bak800 2>/dev/null; fi

# Configure [lr-atari800] core options for [configs/atari800] - Pull from Newly Updated C0RE-W1DE [retroarch-core-options.cfg] in [configs/all]
cat /opt/retropie/configs/all/retroarch-core-options.cfg | grep 'atari800_' > /opt/retropie/configs/atari800/retroarch-core-options.cfg

# Backup core options for [configs/atari5200] if not exist already
if [ ! -f /opt/retropie/configs/atari5200/retroarch-core-options.cfg.bak800 ]; then cp /opt/retropie/configs/atari5200/retroarch-core-options.cfg /opt/retropie/configs/atari5200/retroarch-core-options.cfg.bak800 2>/dev/null; fi

# Configure [lr-atari800] core options for [configs/atari5200] - Pull from Newly Updated C0RE-W1DE [retroarch-core-options.cfg] in [configs/all]
cat /opt/retropie/configs/all/retroarch-core-options.cfg | grep 'atari800_' > /opt/retropie/configs/atari5200/retroarch-core-options.cfg

# FINISHED
dialog --no-collapse --title "APPLY [atari5200] Settings for [lr-atari800]  *COMPLETE!* " --ok-label MENU --msgbox "$atariBIOS"  25 75

mainMENU
}

applyRUNCMD()
{
tput reset
# =====================================
# Check for Internet Connection - If Internet Confirm Install - If No Internet Back to Main Menu
wget -q --spider http://google.com
if [ ! $? -eq 0 ]; then
	# No Internet - Back to Main Menu
	dialog --no-collapse --title "               [ERROR]               " --msgbox "   *INTERNET CONNECTION REQUIRED*"  25 75
	mainMENU
fi

# =====================================
# Backup [emulators.cfg] if not exist already
if [ ! -f /opt/retropie/configs/atari800/emulators.cfg.bak800 ]; then cp /opt/retropie/configs/atari800/emulators.cfg /opt/retropie/configs/atari800/emulators.cfg.bak800 2>/dev/null; fi

# Add the four new emulators for [lr-atari800-runcommand-onstart] by {raphkoster}
echo 'lr-atari800 = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-atari800/atari800_libretro.so --config /opt/retropie/configs/atari800/retroarch.cfg %ROM%"' > /dev/shm/emulators.cfg
echo 'lr-atari800-ctia = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-atari800/atari800_libretro.so --config /opt/retropie/configs/atari800/retroarch.cfg %ROM%"' >> /dev/shm/emulators.cfg
echo 'lr-atari800-gtia = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-atari800/atari800_libretro.so --config /opt/retropie/configs/atari800/retroarch.cfg %ROM%"' >> /dev/shm/emulators.cfg
echo 'lr-atari800-artifacting1 = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-atari800/atari800_libretro.so --config /opt/retropie/configs/atari800/retroarch.cfg %ROM%"' >> /dev/shm/emulators.cfg
echo 'lr-atari800-artifacting2 = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-atari800/atari800_libretro.so --config /opt/retropie/configs/atari800/retroarch.cfg %ROM%"' >> /dev/shm/emulators.cfg
# echo 'default = "lr-atari800"' >> /dev/shm/emulators.cfg

# Add Anything/Everything else from Current [emulators.cfg]
cat /opt/retropie/configs/atari800/emulators.cfg | grep -v 'lr-atari800 =' | grep -v 'lr-atari800-ctia =' | grep -v 'lr-atari800-gtia =' | grep -v 'lr-atari800-artifacting1 =' | grep -v 'lr-atari800-artifacting2 =' >> /dev/shm/emulators.cfg

# Install the four new emulators for [lr-atari800-runcommand-onstart] by {raphkoster}
mv /dev/shm/emulators.cfg /opt/retropie/configs/atari800/emulators.cfg 2>/dev/null

# Copy Newly Updated [emulators.cfg] from [atarti800] to [atari5200]
if [ ! -f /opt/retropie/configs/atari5200/emulators.cfg.bak800 ]; then mv /opt/retropie/configs/atari5200/emulators.cfg /opt/retropie/configs/atari5200/emulators.cfg.bak800 2>/dev/null; fi
cat /opt/retropie/configs/atari800/emulators.cfg > /opt/retropie/configs/atari5200/emulators.cfg
sed -i 's/\/atari800\/retroarch.cfg/\/atari5200\/retroarch.cfg/g' /opt/retropie/configs/atari5200/emulators.cfg

# =====================================
# Download [lr-atari800-runcommand-onstart] by {raphkoster}
cd /dev/shm/
rm /dev/shm/lr-atari800-runcommand-onstart -R -f 2>/dev/null
# wget https://raw.githubusercontent.com/raphkoster/lr-atari800-runcommand-onstart/main/runcommand-onstart.sh
git clone "https://github.com/raphkoster/lr-atari800-runcommand-onstart.git"

# Apply Updates for RetroPie 4.7.1 (202203) If Needed
cd /dev/shm/lr-atari800-runcommand-onstart
wget https://raw.githubusercontent.com/RapidEdwin08/lr-atari800-tweaks/main/runcommand-onstart.diff
git apply "/dev/shm/lr-atari800-runcommand-onstart/runcommand-onstart.diff"

# Install *Updated* [lr-atari800-runcommand-onstart] by {raphkoster}
mv runcommand-onstart.sh /opt/retropie/configs/atari800/
sudo chmod 755 /opt/retropie/configs/atari800/runcommand-onstart.sh
mv "suggested artifacting mode.txt" /opt/retropie/configs/atari800/
mv README.md /opt/retropie/configs/atari800/
mv runcommand-onstart.diff /opt/retropie/configs/atari800/

# Clean Up
cd ~
rm /dev/shm/lr-atari800-runcommand-onstart -R -f 2>/dev/null

# =====================================
# Backup runcommand-onstart if not exist already
if [ ! -f /opt/retropie/configs/all/runcommand-onstart.sh.bak800 ]; then cp /opt/retropie/configs/all/runcommand-onstart.sh /opt/retropie/configs/all/runcommand-onstart.sh.bak800 2>/dev/null; fi

# Add [lr-atari800-runcommand-onstart] Script to be Called by [runcommand-onstart.sh]
echo 'bash /opt/retropie/configs/atari800/runcommand-onstart.sh "$1" "$2" "$3" #lr-atari800-tweaks' > /dev/shm/runcommand-onstart.sh
cat /opt/retropie/configs/all/runcommand-onstart.sh | grep -v "#lr-atari800-tweaks" >> /dev/shm/runcommand-onstart.sh
mv /dev/shm/runcommand-onstart.sh /opt/retropie/configs/all/runcommand-onstart.sh

# FINISHED
dialog --no-collapse --title "INSTALL [lr-atari800-runcommand-onstart] {raphkoster} *COMPLETE!* " --ok-label MENU --msgbox "$atariRUNref"  25 75

mainMENU
}

mainMENU

tput reset
exit 0
