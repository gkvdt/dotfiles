import os

exts = [
"curl",
"fpm",
"gd",
"gmagick",
"http",
"json",
"ldap",
"mbstring",
"mcrypt",
"mysql",
"soap",
"xml",
"raphf",
"zip"
        ]

os.system('export DEBIAN_FRONTEND=noninteractive')
phpver = input('phpver:')

command = "sudo apt install -yq "
os.system(command + phpver)

for ext in exts:
    os.system(command +phpver+"-"+ext)

