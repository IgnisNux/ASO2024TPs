#  https://api.agify.io/?name=nombre

echo "Ingresa un nombre para determinar la edad probable del mismo"
read nombre
if [ -z $nombre ]
    then
    echo "no se detecto ningun nombre"
    exit 1
fi
#primero verifico que haya un nombre

URL="https://api.agify.io/?name=$nombre"
Proceso=$(curl -s $URL)
#acto seguido, proceso la URL para obtener los datos, el -S es para que el Curl no salga en pantalla

Edad=$(echo $Proceso | jq -r '.age')
#obtengo la variable de la Api que me interesa y la guardo en local (me costo dar con este comando)
echo "la edad estimada del nombre es: $Edad"
#y finalmente, devuelvo la edad estimada por la API
#un dato curioso que me confundio al principio cuando elegi los ejercicios es que en el practico los links estan al revez, el ejercicio de edad tiene el link de genero, y el ejercicio de genero tiene la api de edad