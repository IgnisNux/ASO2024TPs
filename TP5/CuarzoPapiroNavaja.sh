#a jugar piedra papel o tijeras, que gane el mejor!, o el mas suertudo

#hacer un ramdon de 3 numeros, usuario introducir uno, generar el otro, comparar ambos numeros
#si son el mismo numero, empate, si son diferente, mirar cual es cual y finalmente definir al ganador


echo "Piedra Papel o tijera, ¿estas listo?!, el ganador se lo lleva todo y el perdedor llora en casa!"
Computadora=$(( (RANDOM%3) +1)) #Genera la Piedra, el Papel o La tijera
echo "{selecciona un numero: Piedra (1), Papel (2) o Tijera! (3) }"
read Eleccion #toma la eleccion del usuario

if [[ $Computadora -eq $Eleccion ]] #si ambos eligen lo mismo, empatan
    then echo "Empate... vamos otra vez!"
         echo "{ambos sacaron lo mismo}"
    else case $Eleccion in #de lo contrario
        1) #si elige piedra
        if [[ $Computadora -eq 3 ]]
            then echo "Tsk, ganaste esta vez" #vence a la tijera
                 echo "{la maquina saco Tijera}" 
            else echo "la maquina supera al hombre" #pierde contra el papel
                 echo "{la maquina saco Papel}"
            fi
        ;;
        2) #aqui elige papel, el proceso se repite con los correspondientes
        if [[ $Computadora -eq 1 ]]
            then echo "Tsk, ganaste esta vez"
                 echo "{la maquina saco Piedra}"
            else echo "la maquina supera al hombre"
                 echo "{la maquina saco Tijera}"
            fi
        ;;
        3) #finalmente elige tijeras
        if [[ $Eleccion -eq 2 ]]
            then echo "Tsk, ganaste esta vez"
                 echo "{la maquina saco Papel}"
            else echo "la maquina supera al hombre"
                 echo "{la maquina saco Piedra}"
            fi
        ;; #y si el usuario eligio cualquier otro numero en lugar de los 3 iniciales...
        *) echo "no se vale usar laser espacial" 
        ;;
    esac
    fi
#queria hacer una mecanica de finta, pero cuando se me complico la vida con el generador de numeros aleatorios, pase completamente del tema