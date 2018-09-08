Iniciar un script sempre só co «shebang» #!/bin/bash

As variábeis en bash só poden conter caracteres alfanuméricos e deben iniciar cunha letra ou un «_»
  Correcto			Incorrecto
   a12               12a
   _a_3              -a_3
   _a_3              _a-3

Hai unha serie de variábeis propias:
  $? → Código de erro. 0 significa todo foi correcto, ningún erro.

Diferencias entre [ e [[.
	[[ : é mas «intelixente» que [, mais o script que vaiamos a empregar xa non podería executarse sobre calquera shell.
	Hai que valorar se imos controlar a execución do script ou non.

-d → o ficheiro existe e é un directorio
-e → o ficheiro existe
-f → o ficheiro existe e é un ficheiro regular (non un directorio, ou outro tipo de ficheiro especial)

-r → tes permiso de lectura en ficheiro
-s → o ficheiro existe e non está baleiro
-w → tes permiso de escritura en ficheiro
-x → tes permiso de execución en ficheiro (ou de busca se é un directorio)

-z → a cadea é nula → ten lonxitude cero ou non existe

-O → és o propietario do ficheiro
-G → o grupo do ficheiro é igual ao teu.

ficheiro1 -nt ficheiro2	ficheiro1 é máis recente que ficheiro2
ficheiro1 -ot ficheiro2	ficheiro1 é máis antigo que ficheiro2

-gt, -ge, -eq, -nq, -le, -lt → corresponden a: >, >=, =, !=, <= e < respectivamente

Exemplos de uso:
  [ -e /tmp/ficheiro ]
  [ -d /tmp ]
  [ -f "$tmpfile" ]
  [ $var1 -ge $var2 ]
  [ $var1 -ne $var2 ]
  un exemplo do diferentes que son [ e [[
  [ "q$var" = "q" ] && echo var é nulo
  [[ -z $var ]] && echo var é nulo

Facer operacións matemáticas con bash:
  var=$((RANDOM%10)) # Var é un numero ao chou entre 0 e 9
  var1=$((var*2+5)) # duplicamos var e sumámoslle 5
  var2=$((var*(2+5))) # Multiplicamos var * 7

Sentencias de control:
  * Se verdadeiro entón fai isto; senón fai estoutro
      if [[ -d /tmp ]]; then
        echo "Fai isto"
      else
        echo "Fai estoutro"
      fi
  * No caso de coincidir con algunha executalo:
      case $var in
        algo)
          echo "var é algo"
        ;;
        nada)
          echo "var é nada"
        ;;
        *)
          echo "var é distinto de algo e de nada"
        ;;
      esac
  * Mentres sexa verdade fai isto:
      while [[ $count -gt 5 ]]; do
        echo "O contador pon $count"
        count=$((count+1))
      done
  * Para todos os valores da lista fai isto
      for i in $(seq 1 10); do
        echo $i
      done

Oneliners: a execución de varias ordes nunha soa liña:

orde 1 ; orde 2  → executase primeiro a orden 1 e a seguir a orde 2
orde 1 & orde 2  → execútanse case en paralelo: orde 1 pasa a segundo plano e inicia o proceso orde 2
orde 1 && orde 2  → executase a orde 2 só se a orde 1 sae sen ningún erro
orde 1 || orde 2  → executase a orde 2 só se a orde 1 sae con algún erro

