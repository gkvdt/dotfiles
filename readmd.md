# Debian'da GNOME'dan i3wm'e Geçiş Rehberi

> Bu rehber, [gkvdt/dotfiles](https://github.com/gkvdt/dotfiles) reposundaki konfigürasyonlar baz alınarak hazırlanmıştır.
> Repo yapısı: `i3/`, `kitty/`, `polybar/`, `rofi/`, `nvim/`, `scripts/`, `bin/`, `.screenlayout/`, `.fonts/`, `.themes/`

---

## İçindekiler

1. [Ön Hazırlık](#1-ön-hazırlık)
2. [Temel Paketler](#2-temel-paketler)
3. [i3 Window Manager](#3-i3-window-manager)
4. [Kitty Terminal](#4-kitty-terminal)
5. [Polybar](#5-polybar)
6. [Rofi](#6-rofi)
7. [Ekran & Görsel Araçlar](#7-ekran--görsel-araçlar)
8. [Ses Yönetimi](#8-ses-yönetimi)
9. [Sistem Araçları & Scriptler](#9-sistem-araçları--scriptler)
10. [Fontlar](#10-fontlar)
11. [Neovim](#11-neovim)
12. [Dotfiles Kurulumu](#12-dotfiles-kurulumu)
13. [Display Manager Ayarı](#13-display-manager-ayarı)
14. [İlk Açılış Sonrası](#14-i̇lk-açılış-sonrası)

---

## 1. Ön Hazırlık

Sistemi güncelleyin ve temel bağımlılıkları yükleyin:

```bash
sudo apt update && sudo apt upgrade -y

sudo apt install -y \
  git curl wget build-essential \
  software-properties-common \
  apt-transport-https \
  ca-certificates
```

---

## 2. Temel Paketler

### Xorg & Display Server

```bash
sudo apt install -y \
  xorg \
  xserver-xorg \
  x11-xserver-utils \
  xinit \
  xauth
```

### Genel Masaüstü Araçları

```bash
sudo apt install -y \
  dbus-x11 \
  xdotool \
  xclip \
  xsel \
  xdg-utils \
  xdg-user-dirs
```

---

## 3. i3 Window Manager

### i3 ve Tüm Bileşenleri

```bash
sudo apt install -y \
  i3 \
  i3-wm \
  i3status \
  i3lock \
  i3blocks \
  suckless-tools
```

> **Not:** `i3` metapackage'i `i3-wm`, `i3status`, `i3lock`, `i3bar` ve `i3-sensible-terminal`'i birlikte kurar.

### picom (Kompozitör — Şeffaflık & Gölge)

```bash
sudo apt install -y picom
```

---

## 4. Kitty Terminal

### Yöntem A — APT (Önerilen, Debian 12+)

```bash
sudo apt install -y kitty
```

### Yöntem B — Resmi Installer (En güncel sürüm)

```bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

Kurulum sonrası PATH'e ekleyin (`~/.bashrc` veya `~/.zshrc`):

```bash
export PATH="$HOME/.local/kitty.app/bin:$PATH"
```

---

## 5. Polybar

Polybar genellikle Debian ana repolarında bulunmaz, derlemek gerekir.

### Bağımlılıkları Yükleyin

```bash
sudo apt install -y \
  cmake \
  cmake-data \
  pkg-config \
  python3-sphinx \
  python3-packaging \
  libcairo2-dev \
  libxcb1-dev \
  libxcb-util0-dev \
  libxcb-randr0-dev \
  libxcb-composite0-dev \
  python3-xcbgen \
  xcb-proto \
  libxcb-image0-dev \
  libxcb-ewmh-dev \
  libxcb-icccm4-dev \
  libxcb-xkb-dev \
  libxcb-xrm-dev \
  libxcb-cursor-dev \
  libasound2-dev \
  libpulse-dev \
  libmpdclient-dev \
  libiw-dev \
  libnl-genl-3-dev \
  libcurl4-openssl-dev \
  libwireplumber-0.5-dev \
  libjsoncpp-dev \
  libuv1-dev
```

### Kaynak Koddan Derleyin

```bash
git clone --recursive https://github.com/polybar/polybar
cd polybar
mkdir build && cd build
cmake ..
make -j$(nproc)
sudo make install
```

---

## 6. Rofi

```bash
sudo apt install -y rofi
```

Ek Rofi araçları (scriptlerde kullanılabilir):

```bash
sudo apt install -y rofi-dev
```

---

## 7. Ekran & Görsel Araçlar

### Duvar Kağıdı (wp.png için)

```bash
sudo apt install -y feh nitrogen
```

Başlangıçta duvar kağıdını ayarlamak için `i3/config` dosyasına şu satırı ekleyin (dotfiles'ta zaten mevcut olabilir):

```
exec_always --no-startup-id feh --bg-scale ~/dotfiles/wp.png
```

### Ekran Görüntüsü

```bash
sudo apt install -y scrot flameshot
```

### Ekran Düzeni (.screenlayout/ klasörü için)

```bash
sudo apt install -y arandr autorandr
```

`.screenlayout/` klasöründeki `.sh` dosyaları arandr tarafından oluşturulmuş `xrandr` scriptleridir.

### Ekran Kilidi

```bash
sudo apt install -y i3lock imagemagick
```

### GTK Tema Yöneticisi (.themes/ klasörü için)

```bash
sudo apt install -y lxappearance gtk-chtheme
```

### Bildirim Sistemi

```bash
sudo apt install -y dunst libnotify-bin
```

---

## 8. Ses Yönetimi

### PulseAudio

```bash
sudo apt install -y \
  pulseaudio \
  pulseaudio-utils \
  pavucontrol \
  pamixer \
  paprefs
```

### PipeWire (Debian 12+ için alternatif, daha modern)

```bash
sudo apt install -y \
  pipewire \
  pipewire-pulse \
  wireplumber \
  pavucontrol
```

### Ses Kontrolü için CLI Araçlar

```bash
sudo apt install -y alsa-utils
```

---

## 9. Sistem Araçları & Scriptler

### Ağ Yönetimi

```bash
sudo apt install -y \
  network-manager \
  network-manager-gnome \
  nm-tray
```

### Bluetooth

```bash
sudo apt install -y \
  bluez \
  blueman
```

### Parlaklık Kontrolü (Laptop için)

```bash
sudo apt install -y \
  brightnessctl \
  xbacklight
```

### Dosya Yönetimi

```bash
sudo apt install -y \
  thunar \
  ranger \
  nemo
```

### Genel Yardımcı Araçlar (bin/ ve scripts/ için)

```bash
sudo apt install -y \
  jq \
  bc \
  acpi \
  xdotool \
  wmctrl \
  playerctl \
  maim \
  unzip \
  zip \
  htop \
  btop \
  tree
```

### Python (Script bağımlılıkları için)

```bash
sudo apt install -y \
  python3 \
  python3-pip \
  python3-dbus \
  python3-gi
```

---

## 10. Fontlar

### Nerd Fonts (.fonts/ klasörü için)

Repo'daki `.fonts/` klasörünü kopyalayın:

```bash
mkdir -p ~/.local/share/fonts
cp -r ~/dotfiles/.fonts/* ~/.local/share/fonts/
fc-cache -fv
```

### Sistem Fontları

```bash
sudo apt install -y \
  fonts-font-awesome \
  fonts-noto \
  fonts-noto-color-emoji \
  fonts-firacode \
  fonts-hack-ttf \
  fonts-dejavu-core
```

### JetBrains Mono (Kitty için popüler)

```bash
sudo apt install -y fonts-jetbrains-mono
```

---

## 11. Neovim

### Yöntem A — APT

```bash
sudo apt install -y neovim
```

### Yöntem B — Güncel Sürüm (nvim.sh scripti ile aynı mantık)

```bash
# En güncel stable release için
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
```

Neovim bağımlılıkları:

```bash
sudo apt install -y \
  ripgrep \
  fd-find \
  nodejs \
  npm \
  lua5.4 \
  luarocks
```

---

## 12. Dotfiles Kurulumu

### Repoyu Klonlayın

```bash
git clone https://github.com/gkvdt/dotfiles ~/dotfiles
```

### Konfigürasyon Dosyalarını Yerleştirin

```bash
# i3 konfigürasyonu
mkdir -p ~/.config/i3
cp -r ~/dotfiles/i3/* ~/.config/i3/

# Kitty konfigürasyonu
mkdir -p ~/.config/kitty
cp -r ~/dotfiles/kitty/* ~/.config/kitty/

# Polybar konfigürasyonu
mkdir -p ~/.config/polybar
cp -r ~/dotfiles/polybar/* ~/.config/polybar/
chmod +x ~/.config/polybar/launch.sh  # varsa

# Rofi konfigürasyonu
mkdir -p ~/.config/rofi
cp -r ~/dotfiles/rofi/* ~/.config/rofi/

# Neovim konfigürasyonu
mkdir -p ~/.config/nvim
cp -r ~/dotfiles/nvim/* ~/.config/nvim/

# Screen layout scriptleri
mkdir -p ~/.screenlayout
cp -r ~/dotfiles/.screenlayout/* ~/.screenlayout/
chmod +x ~/.screenlayout/*.sh

# Fontlar
mkdir -p ~/.local/share/fonts
cp -r ~/dotfiles/.fonts/* ~/.local/share/fonts/
fc-cache -fv

# GTK Temalar
mkdir -p ~/.themes
cp -r ~/dotfiles/.themes/* ~/.themes/

# bin/ scriptleri
mkdir -p ~/bin
cp -r ~/dotfiles/bin/* ~/bin/
chmod +x ~/bin/*

# scripts/ scriptleri
cp -r ~/dotfiles/scripts/* ~/bin/
chmod +x ~/bin/*

# Shell konfigürasyonları
cat ~/dotfiles/aliasrc >> ~/.bashrc
# veya zsh kullanıyorsanız:
# cat ~/dotfiles/aliasrc >> ~/.zshrc
```

### install.sh ile Otomatik Kurulum

```bash
cd ~/dotfiles
chmod +x install.sh
./install.sh
```

---

## 13. Display Manager Ayarı

GNOME ile birlikte gelen GDM3'ü kullanabilir ya da daha hafif LightDM'e geçebilirsiniz.

### Mevcut GDM3 ile Kullan (En kolay yol)

Çıkış yapın, giriş ekranında kullanıcı adınıza tıklayın ve altta çıkan dişli simgesine tıklayarak **"i3"** seçin. Giriş yapın.

### LightDM'e Geç (Opsiyonel, daha hafif)

```bash
sudo apt install -y lightdm lightdm-gtk-greeter

# Varsayılan display manager'ı değiştir
sudo dpkg-reconfigure lightdm
```

### Otomatik Giriş (Opsiyonel)

`/etc/lightdm/lightdm.conf` dosyasını düzenleyin:

```ini
[Seat:*]
autologin-user=KULLANICI_ADINIZ
autologin-session=i3
```

---

## 14. İlk Açılış Sonrası

### Polybar'ı Başlatın

`~/.config/polybar/launch.sh` varsa çalıştırılabilir yapın:

```bash
chmod +x ~/.config/polybar/launch.sh
```

### Ekran Düzenini Ayarlayın

```bash
arandr  # GUI ile ekranları ayarlayın ve .screenlayout/ klasörüne kaydedin
```

### GTK Temasını Uygulayın

```bash
lxappearance  # .themes/ klasöründeki temayı seçin
```

### Tuş Bağlantılarını Test Edin

i3 varsayılan mod tuşu (`$mod`) genellikle **Super (Windows) tuşu**dur.

| Kısayol | Açıklama |
|---|---|
| `$mod + Enter` | Terminal aç (kitty) |
| `$mod + d` | Rofi launcher |
| `$mod + Shift + q` | Pencereyi kapat |
| `$mod + 1-9` | Workspace değiştir |
| `$mod + Shift + r` | i3 yeniden başlat |
| `$mod + Shift + c` | i3 konfigürasyonunu yenile |

---

## Sorun Giderme

**Polybar başlamıyorsa:**
```bash
polybar example 2>&1  # Hata mesajını görmek için
```

**Font ikonları görünmüyorsa:**
```bash
fc-cache -fv
# Terminal oturumunu yeniden başlatın
```

**Ses çalışmıyorsa:**
```bash
pulseaudio --start
# veya
systemctl --user start pipewire pipewire-pulse
```

**Ekran parlaklığı çalışmıyorsa:**
```bash
sudo usermod -aG video $USER
# Yeniden giriş yapın
```
