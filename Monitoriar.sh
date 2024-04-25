memoriaDiscoMB=$(df -h | awk 'NR==2 {print int($4 * 1024)}') 

umbral=3000 

if [ "$memoriaDiscoMB" -lt "$umbral" ]; then #Condicion para verificar que el espacio de la memoria es menor al umbral
    echo "El espacio del disco es menor al umbral" >> "C:\Users\valentin\Documentos\SistemasOperativos\Monitoreo1\Registro.log" #Devuelve un mensaje y lo envia a la ruta seleccionada
else
    echo "Aun queda bastante espacio disponible" >> "C:\Users\valentin\Documentos\SistemasOperativos\Monitoreo1\Registro.log" #Devuelve un mensaje y lo envia a la ruta seleccionada
fi
