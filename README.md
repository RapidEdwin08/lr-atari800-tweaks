# lr-atari800-tweaks  
![lr-atari800-tweaks.png](https://raw.githubusercontent.com/RapidEdwin08/lr-atari800-tweaks/main/lr-atari800-tweaks.png )  

lr-atari800 Tweaks, Fixes, and Settings for RetroPie &lt;=4.7.1  
Resolves Segmentation Fault Issues and Memo Pad Screen Issues.  
Also Installs runcommand-onstart Script by raphkoster and Updates it.  
https://github.com/raphkoster/lr-atari800-runcommand-onstart  

## INSTALLATION  

Can be ran from retropiemenu:  
```bash
wget https://raw.githubusercontent.com/RapidEdwin08/lr-atari800-tweaks/main/lr-atari800-tweaks.sh -P ~/RetroPie/retropiemenu
wget https://raw.githubusercontent.com/RapidEdwin08/lr-atari800-tweaks/main/lr-atari800-tweaks.png -P ~/RetroPie/retropiemenu/icons
```

 0r Can be ran manually from any directory:  
```bash
cd ~
git clone https://github.com/RapidEdwin08/lr-atari800-tweaks.git
sudo chmod 755 ~/lr-atari800-tweaks/lr-atari800-tweaks.sh
cd ~/lr-atari800-tweaks && ./lr-atari800-tweaks.sh

```

0ptionally you can Add an Entry and Icon to your retropiemenu [gamelist.xml]:  
Example Entry:  
```
  <game>
    <path>./lr-atari800-tweaks.sh</path>
    <name>[lr-atari-800] Atari Tweaks</name>
    <desc>APPLY/REMOVE [lr-atari800] Tweaks for [RetroPie &gt;=4.7.1].</desc>
    <image>/home/pi/RetroPie/retropiemenu/icons/lr-atari800-tweaks.png</image>
  </game>
```
