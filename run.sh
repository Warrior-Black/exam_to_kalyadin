#!/bin/bash

# Проверка прав суперпользователя
#echo "
#-------------------------------------
# Перед выполнением скрипта:
#1. Войдите от имени суперпользователя
#2. Заидите на хост slave по SSH
#Продолжить выполнение? y/n
#-------------------------------------"
#read keyb
#if [ $keyb != 'y' ]
#    then
#        exit 0
#fi
#if [ `whoami` != root ]
#    then
#        echo "
#-------------------------------------
#Вы не являетесь привелигированным пользователем, выполните <<sudo -s>>, после чего запустите скрипт
#-------------------------------------
#"
#        exit 0
#fi
#apt udate

# Установка sshpass при необходимости
#sshpass=`dpkg -l | grep sshpass | wc -l`
#if [ $sshpass -eq 0 ]
#	then#
#	    apt install -y sshpass
#fi

# Проверка доступности слейва и 1 прохода по ssh
#echo "Введите IP адрес SLAVE"
#read ip_slave
#echo "Введите имя пользователя SLAVE"
#read u_slave
#echo "Введите пароль SLAVE"
#read p_slave
#slave_ping=`ping -c 3 $ip_slave | grep ttl | wc -l`
#if [ $slave_ping -ne 3 ]
#    then
#        echo "Отсутствует пинг до хоста slave"
#        exit 0
#fi

#address=$p_slave" ssh "$u_slave"@"$ip_slave
#trek=`sshpass -p $address 'hostname' | wc -l`
#if [ $trek -ne 1 ]
#    then
#	echo "Для корректной работы утилиты sshpass необходимо один раз воити по ssh"
#	exit 0
#fi

# _!!!!!можно попробовать добавить закачку пакета wget-ом
#sudo dpkg -i git.deb
#sudo apt install -y git
git init
git config --global user.email "akalyadin@astralinux.ru"
git config --global user.name "AlexeyKalyadin"
git remote add origin https://github.com/akalyadin/exam.git
git pull https://github.com/akalyadin/exam.git main
#./web.sh
