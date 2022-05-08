#!/bin/bash
TEMPO=0
cd /home/lucas/Documentos/teste
#Armazenando hash md5 no vetor
#for x in $(ls | xargs md5sum 2> /dev/null | cut -d" " -f1 ); do 
#vetor[$b]=$x
#b=$[$b+1]
#done
# armazenando nome do arquivo/pasta no vetor
# armazenando nome do arquivo/pasta no vetor
#for y in $(ls -l | cut --fields=13 -d" "); do 
#vetor2[$a]=$y
#a=$[$a+1]
#done

for=0
cont=2
lin=1

while [ $TEMPO -le 600 ]
do
for i in $(ls | xargs md5sum 2> /dev/null | cut -d" " -f1 ); do
echo ">> testando MD5"=$i "CONTAGEM nº" $for "<<"
# recheck
sleep 0.5
#echo vetor $i : ${vetor[$i]}
    #lin=$[$cont+1]
    #cont=$[$cont+1]
    lin=$[$cont]
    #for z in ${vetor[@]:$cont}; do
    for z in $(ls | xargs md5sum 2> /dev/null | cut -d" " -f1 | tail -n +$lin ); do
    #arq= $(ls  | md5sum 2> /dev/null | cut -d" " -f3 | head -n  | tail -n 1)
    
    ARQ=$(ls  | xargs md5sum 2> /dev/null | cut -d" " -f3 | head -n $lin | tail -n 1)
    #echo "Arquivo: " $ARQ 
    echo $ARQ
    
     
    #echo "PRIMEIRO VETOR =="$i #${vetor2[$for]} 
    #echo "LINHA: " $lin "A ser testado: " $z "ARQUIVO="$ARQ #${vetor2[$contvt]}
    if [[ $i = $z ]]; then
    echo "IGUAL" "!!VOU MOVER o ARQUIVO!!" $z "nome: "
    vetor[$af]=$ARQ  #${vetor2[$contvt]}
    mv ${vetor[$af]} excluir/
    af=$[$af+1]
    #continue
    #rm $ARQ    
    fi
 #   contvt=$[$contvt+1]
    
    lin=$[$lin+1]
    
    done
    cont=$[$cont+1]
    for=$[$for+1]
    
    done

for=0
cont=2
lin=1
    
TEMPO=$(($TEMPO+1))
done
echo ${vetor[@]}
sleep 1
#done
echo OK


#echo $i

#done
#echo ${vetor[@]}

