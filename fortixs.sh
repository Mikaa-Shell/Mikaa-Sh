# By Mikaa Sh
# Fortixs Gacor v1.0 - UI Drag / Snap / Full - by Mikaa

# Warna
red='\033[1;31m'; green='\033[1;32m'; yellow='\033[1;33m'; blue='\033[1;34m'; white='\033[1;37m'; cyan='\033[1;36m'; reset='\033[0m'

# Auto Update (tanpa folder /tmp atau chmod)
REPO="https://raw.githubusercontent.com/Mikaa-Shell/Fortixs-Gacor/main/fortixs.sh"
REMOTE=$(curl -sSL "$REPO")
LOCAL=$(cat "$0")

if [ "$REMOTE" != "$LOCAL" ]; then
  echo -e "${yellow}[!] Update tersedia, mengunduh versi terbaru...${reset}"
  echo "$REMOTE" > "$0"
  echo -e "${green}[✓] Update berhasil! Silakan jalankan ulang script ini.${reset}"
  exit
fi

# Menu UI
clear
echo -e "${cyan}╔══════════════════════════════╗"
echo -e "║    ${white}FORTIXS GACOR v1.0             ${cyan}║"
echo -e "║    Termux Drag / Snap / Full ${cyan}║"
echo -e "╚══════════════════════════════╝${reset}"
echo ""
echo -e "${blue}[1]${white} Mode Drag"
echo -e "${blue}[2]${white} Mode Snap"
echo -e "${blue}[3]${white} Mode Full Burst"
echo -e "${blue}[0]${white} Keluar"
read -p $'\n\033[1;33mPilih mode:\033[0m ' mode

case "$mode" in
  1)
    echo -e "${green}[✓] Mode DRAG aktif${reset}"
    settings put system pointer_speed 7
    settings put system touch_sensitivity 5
    settings put system dragcurve.smoothpull.xyassist 1
    ;;
  2)
    echo -e "${green}[✓] Mode SNAP aktif${reset}"
    settings put system pointer_speed 8
    settings put system aim.snapzone.lockon 1
    settings put system dragcurve.snaplock.headup 1
    ;;
  3)
    echo -e "${green}[✓] Mode FULL aktif${reset}"
    settings put system pointer_speed 10
    settings put system touch_sensitivity 8
    settings put system window_animation_scale 0.0
    settings put system animator_duration_scale 0.0
    settings put system dragcurve.smoothpull.xyassist 1
    settings put system aim.snapzone.lockon 1
    settings put system recoilcurve.autofix.snap 1
    ;;
  0)
    echo -e "${red}[x] Keluar...${reset}"; exit ;;
  *) 
    echo -e "${red}[!] Pilihan tidak valid!${reset}";;
esac

echo -e "${cyan}✓ Silakan uji di Free Fire${reset}"
