#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo ""
  echo -e "\e[1;31m !EJECUTA ESTE SCRIPT COMO SUPERUSUARIO! \e[0m"
  echo ""
exit
fi
  echo ""
  read -p "   Introduzca el path: " FILE
  size=$(du -s $FILE | cut -f1)
  goodsize=$(echo "scale=2; $size / 1000;" | bc) 
if [ -f $FILE ]; then
  echo ""
  echo "    Esto es un ARCHIVO,"
  echo "    el cual pesa $size kilobytes"
  echo "    O $goodsize MB, que es más comodo de leer"
  echo "" 
elif [ -d $FILE ]; then
  echo ""
  echo "    Esto es un DIRECTORIO"
  echo "    el cual pesa $size kilobytes,"
  echo "    O $goodsize MB, que es más comodo de leer" 
echo ""
else
  echo ""
  echo -e "\e[1;31m     El path introducido no corresponde a nada :( \e[0m"
  echo "" 
fi
