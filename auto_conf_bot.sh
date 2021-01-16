#!/bin/sh
echo "\033[0;34mOra controllo gli aggiornamenti\033[m"
sudo apt update -y
echo "\033[0;34mOra controllo che gli aggiornamenti, se ci sono, vengano installati\033[m"
sudo apt upgrade -y

echo "\033[0;34mOra installo python3, mariadb-server, apache2 e samba\033[m"
apt install python3 -y
apt install mariadb-server -y
apt install apache2 -y
apt install samba -y

echo "\033[0;34mOra installo il necessario per far leggere correttamente tutto il mio bot.\033[m"
pip3 install --upgrade --no-cache-dir aiofile
pip3 install --upgrade --no-cache-dir APScheduler
pip3 install --upgrade --no-cache-dir PyMySQL
pip3 install --upgrade --no-cache-dir pyrogram
pip3 install --upgrade --no-cache-dir requests
pip3 install --upgrade --no-cache-dir telegraph


# chmod -R 777 /media/nas ; chown -R root:root /media/nas
# chmod -R 700 /usr/local/bin/noip2; chown root:root /usr/local/bin/noip2

#######################################################
        #! /bin/sh
        # . /etc/rc.d/init.d/functions  # uncomment/modify for your killproc
        case "$1" in
            start)
                echo "Starting noip2."
                /usr/local/bin/noip2
            ;;
            stop)
                echo -n "Shutting down noip2."
                killproc -TERM /usr/local/bin/noip2
            ;;
            *)
                echo "Usage: $0 {start|stop}"
                exit 1
        esac
        exit 0
#######################################################
