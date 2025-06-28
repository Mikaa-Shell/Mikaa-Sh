# By Mikaa Sh
# Fortixs UI - Drag / Snap / Full Mode
# Auto Update + Warna + Ringan
# Tanpa chmod +x atau ./fortixs.sh

versi="1.1"
url_update="https://raw.githubusercontent.com/Mikaa-Shell/Mikaa-Sh/main/fortixs.sh"

# Warna
r="\e[1;91m"
g="\e[1;92m"
y="\e[1;93m"
b="\e[1;94m"
c="\e[1;96m"
w="\e[1;97m"
n="\e[0m"

# Auto Update
cek_update() {
    echo -e "${y}[!] Mengecek update...${n}"
    versi_remote=$(curl -s "$url_update" | grep 'versi=' | head -n1 | cut -d '"' -f2)
    if [[ "$versi" != "$versi_remote" ]]; then
        echo -e "${g}[✓] Update tersedia. Mengunduh versi baru...${n}"
        curl -sSL "$url_update" | bash
        exit
    else
        echo -e "${g}[✓] Sudah versi terbaru.${n}"
    fi
}

# Menu
show_menu() {
    clear
    echo -e "${c}╔════════════════════════════════╗"
    echo -e "${c}║       ${g}FORTIXS SYSTEM UI${c}           ║"
    echo -e "${c}╠════════════════════════════════╣"
    echo -e "${c}║  ${y}1.${w} Mode Drag Brutal               ║"
    echo -e "${c}║  ${y}2.${w} Mode Snap Head                ║"
    echo -e "${c}║  ${y}3.${w} Mode Full Optimized           ║"
    echo -e "${c}║  ${y}0.${w} Keluar                        ║"
    echo -e "${c}╚════════════════════════════════╝${n}"
    echo -ne "${b}Pilih Mode: ${n}"; read pil

    case $pil in
        1) mode_drag ;;
        2) mode_snap ;;
        3) mode_full ;;
        0) exit ;;
        *) echo -e "${r}Pilihan salah!${n}"; sleep 1; show_menu ;;
    esac
}

# Fungsi Mode
mode_drag() {
    echo -e "${y}[*] Menerapkan Mode Drag Brutal...${n}"
    settings put system pointer_speed 5
    settings put system long_press_timeout 150
    settings put system touch_slop 5
    echo -e "${g}[✓] Mode Drag aktif.${n}"
    sleep 1
    show_menu
}

mode_snap() {
    echo -e "${y}[*] Menerapkan Mode Snap Head...${n}"
    settings put system pointer_speed 6
    settings put system tap_timeout 50
    settings put system touch_slop 4
    echo -e "${g}[✓] Mode Snap aktif.${n}"
    sleep 1
    show_menu
}

mode_full() {
    echo -e "${y}[*] Menerapkan Mode Full Optimized...${n}"
    settings put system pointer_speed 7
    settings put system long_press_timeout 100
    settings put system tap_timeout 60
    settings put system touch_slop 3
    echo -e "${g}[✓] Mode Full aktif.${n}"
    sleep 1
    show_menu
}

# Mulai
cek_update
show_menu
#!/data/data/com.termux/files/usr/bin/bash

# Fortixs UI - Drag / Snap / Full Mode
# Auto Update + Warna + Ringan
# Tanpa chmod +x atau ./fortixs.sh

versi="1.1"
url_update="https://raw.githubusercontent.com/Mikaa-Shell/Mikaa-Sh/main/fortixs.sh"

# Warna
r="\e[1;91m"
g="\e[1;92m"
y="\e[1;93m"
b="\e[1;94m"
c="\e[1;96m"
w="\e[1;97m"
n="\e[0m"

# Auto Update
cek_update() {
    echo -e "${y}[!] Mengecek update...${n}"
    versi_remote=$(curl -s "$url_update" | grep 'versi=' | head -n1 | cut -d '"' -f2)
    if [[ "$versi" != "$versi_remote" ]]; then
        echo -e "${g}[✓] Update tersedia. Mengunduh versi baru...${n}"
        curl -sSL "$url_update" | bash
        exit
    else
        echo -e "${g}[✓] Sudah versi terbaru.${n}"
    fi
}

# Menu
show_menu() {
    clear
    echo -e "${c}╔════════════════════════════════╗"
    echo -e "${c}║       ${g}FORTIXS SYSTEM UI${c}           ║"
    echo -e "${c}╠════════════════════════════════╣"
    echo -e "${c}║  ${y}1.${w} Mode Drag Brutal               ║"
    echo -e "${c}║  ${y}2.${w} Mode Snap Head                ║"
    echo -e "${c}║  ${y}3.${w} Mode Full Optimized           ║"
    echo -e "${c}║  ${y}0.${w} Keluar                        ║"
    echo -e "${c}╚════════════════════════════════╝${n}"
    echo -ne "${b}Pilih Mode: ${n}"; read pil

    case $pil in
        1) mode_drag ;;
        2) mode_snap ;;
        3) mode_full ;;
        0) exit ;;
        *) echo -e "${r}Pilihan salah!${n}"; sleep 1; show_menu ;;
    esac
}

# Fungsi Mode
mode_drag() {
    echo -e "${y}[*] Menerapkan Mode Drag Brutal...${n}"
    settings put system pointer_speed 5
    settings put system long_press_timeout 150
    settings put system touch_slop 5
    echo -e "${g}[✓] Mode Drag aktif.${n}"
    sleep 1
    show_menu
}

mode_snap() {
    echo -e "${y}[*] Menerapkan Mode Snap Head...${n}"
    settings put system pointer_speed 6
    settings put system tap_timeout 50
    settings put system touch_slop 4
    echo -e "${g}[✓] Mode Snap aktif.${n}"
    sleep 1
    show_menu
}

mode_full() {
    echo -e "${y}[*] Menerapkan Mode Full Optimized...${n}"
    settings put system pointer_speed 7
    settings put system long_press_timeout 100
    settings put system tap_timeout 60
    settings put system touch_slop 3
    echo -e "${g}[✓] Mode Full aktif.${n}"
    sleep 1
    show_menu
}

# Mulai
cek_update
show_menu
