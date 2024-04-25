Renombrar="C:\Users\Valentin\Documentos\SistemasOperativos\Renombre" 
patron="*.txt"

echo "Ingresa el nombre deseado" 
read nombre 

for archivo in "$Renombrar"/$patron; do 
    nuevo_nombre="${archivo%.*}_$nombre.txt" 
    mv "$archivo" "$nuevo_nombre" 
    echo "El archivo ha sido renombrado correctamente."
done
