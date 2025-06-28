# By Mikaa Sh

# 🎨 Warna ANSI
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
white='\033[1;37m'
reset='\033[0m'

# 🔄 Auto-update
REPO="https://raw.githubusercontent.com/USERNAME/fortixs-gacor/main/fortixs.sh"
TMP="/tmp/fortixs_tmp.sh"

curl -sSL "$REPO" -o "$TMP" || { echo -e "${red}[!] Gagal download update${reset}"; sleep 1; }
chmod +x "$TMP"

if ! cmp -s "$TMP" "$0"; then
    echo -e "${yellow}[!] Update ditemukan, mengunduh versi baru...${reset}"
    mv "$TMP" "$0"
    chmod +x "$0"
    echo -e "${green}[✓] Update berhasil! Silakan jalankan ulang script.${reset}"
    exit
fi
rm -f "$TMP"

# 🎯 Menu user
clear
echo -e "${cyan}╔════════════════════════════════╗"
echo -e "║      FORTIXS GACOR v1.0       ║"
echo -e "║  Termux Drag / Snap / Full UI ║"
echo -e "╚════════════════════════════════╝${reset}"
echo -e "${blue}[1]${white} Mode Drag"
echo -e "${blue}[2]${white} Mode Snap"
echo -e "${blue}[3]${white} Mode Full Brutal"
echo -e "${blue}[0]${white} Keluar${reset}"
echo
read -p $'\033[1;33m[?] Pilih mode: \033[0m' mode

case $mode in
  1)
    echo -e "${green}[✓] Mengaktifkan Mode DRAG...${reset}"
    settings put system pointer_speed 7
    settings put system touch_sensitivity 5
    settings put system dragcurve.smoothpull.xyassist 1
    ;;
  2)
    echo -e "${green}[✓] Mengaktifkan Mode SNAP...${reset}"
    settings put system pointer_speed 8
    settings put system aim.snapzone.lockon 1
    settings put system flickcurve.snaplock.headup 1
    ;;
  3)
    echo -e "${green}[✓] Mengaktifkan Mode FULL BURST...${reset}"
    settings put system pointer_speed 10
    settings put system touch_sensitivity 8
    settings put system window_animation_scale 0.0
    settings put system animator_duration_scale 0.0
    settings put system dragcurve.smoothpull.xyassist 1
    settings put system aim.snapzone.lockon 1
    settings put system recoilcurve.autofix.snap 1
    echo -e "${green}[✓] Semua mode FULL sudah aktif${reset}"
    ;;
  0)
    echo -e "${red}[✕] Keluar...${reset}"
    exit
    ;;
  *)
    echo -e "${red}[!] Pilihan tidak valid!${reset}"
    ;;
esac

echo -e "${cyan}➡️ Silakan uji di Free Fire${reset}"
sleep 1
