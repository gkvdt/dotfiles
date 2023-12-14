import os
from datetime import datetime
import json

home= os.path.expanduser('~')

scriptDir = os.path.dirname(os.path.realpath(__file__))



f= open(scriptDir + '/auto_install.json')

installLists  = json.load(f)

os.system('export DEBIAN_FRONTEND=noninteractive')
command = "sudo apt install -yq "
for il in installLists:
    if(il['type'] == 'app'):
        os.system(command + il['name'])
    elif(il['type'] == 'command'):
        os.system(il['name'])
    else:
        pass



oldConfigs = [
    '/.fonts',
    '/.config/i3',
    '/.config/polybar',
    '/.config/kitty',
    '/.config/nvim',
]

dotfiles = {
'/dotfiles/.fonts' :'/',
'/dotfiles/i3' :'/.config/',
'/dotfiles/polybar' :'/.config/',
'/dotfiles/.vimrc' :'/',
'/dotfiles/kitty' :'/.config/',
'/dotfiles/nvim' :'/.config/',
}

random = datetime.now().strftime('%y%m%d%H%M')

for oc in oldConfigs : 
    if os.path.exists( home+ oc ):
       oldName = r""+ home+oc
       newName = r""+ home+oc+".bak"+random
       os.rename(oldName,newName)


for _from,_to in dotfiles.items():
    os.symlink(home+_from,home+_to)
