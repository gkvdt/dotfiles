import imaplib
import os
from dotenv import load_dotenv
from pathlib import Path
import subprocess

# .env dosyasının tam yolunu belirt
env_path = Path.home() / 'dotfiles' / '.env'

# .env dosyasını yükle
load_dotenv(dotenv_path=env_path)

# .env dosyasındaki kullanıcı adı ve şifreyi al
USERNAME = os.getenv("MAIL_USERNAME")
PASSWORD = os.getenv("MAIL_PASSWORD")

# Mail sunucu bilgileri
IMAP_SERVER = "mail.vairosoft.com"
IMAP_PORT = 993

try:
    # IMAP sunucusuna bağlan
    mail = imaplib.IMAP4_SSL(IMAP_SERVER, IMAP_PORT)
    mail.login(USERNAME, PASSWORD)
    
    # Gelen kutusunu seç (Inbox)
    mail.select("INBOX")

    # Okunmamış (UNSEEN) mesajları al
    status, response = mail.search(None, "UNSEEN")
    unread_count = len(response[0].split())  # Okunmamış mesaj sayısını hesapla
    if unread_count > 0 :
        subprocess.run(["notify-send",f"{unread_count} okunmamış mail var."],stdout=subprocess.PIPE, text=True)
        subprocess.run(["canberra-gtk-play","-i","message","-d","dunst"],stdout=subprocess.PIPE, text=True)

    print(f"{unread_count} 📩")

    # Bağlantıyı kapat
    mail.logout()

except Exception as e:
    print(f"Hata oluştu: {e}")
