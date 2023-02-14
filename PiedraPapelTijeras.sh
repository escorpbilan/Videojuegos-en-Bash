#/bin/bash
clear
read -p "Te quieres enfrentar a un Piedra Papel y Tijeras contra la computadora???. SI (Y) NO (N) " a
if [ $a == N ] || [ $a == n ]
	then
		echo "ADIOS! Cobardeeee"
		sleep 1
		exit
	else if [ $a == Y ] || [ $a == y ]
		then
			clear
			echo "******************Bienvenido**********************"
			sleep 2
			clear
			echo "*********Estamos preparando todo para ti**********"
			sleep 2
			clear
			echo "**************Esto no es Windows 10***************"
			sleep 2
			clear
			echo "****************Esto eeeeeeeeees******************"
			sleep 2
			clear
			echo "=================================================="
			echo "=====Un                                      ====="
			echo "=================================================="
			sleep 0.25
			clear
			echo "=================================================="
			echo "=====Un Piedra                               ====="
			echo "=================================================="
			sleep 0.25
			clear
			echo "=================================================="
			echo "=====Un Piedra Papel                         ====="
			echo "=================================================="
			sleep 0.25
			clear
			echo "=================================================="
			echo "=====Un Piedra Papel y                       ====="
			echo "=================================================="
			sleep 0.25
			clear
			echo "=================================================="
			echo "=====Un Piedra Papel y Tijeras               ====="
			echo "=================================================="
			sleep 0.25
			clear
			echo "=================================================="
			echo "=====Un Piedra Papel y Tijeras VS            ====="
			echo "=================================================="	
			sleep 0.25
			clear
			echo "=================================================="
			echo "=====Un Piedra Papel y Tijeras VS Computadora====="
			echo "=================================================="		
			sleep 0.25
			echo "******************¡UN MOMENTO!********************"
			sleep 2
			clear
			echo "=================================================="
			echo "=====Un Piedra Papel y Tijeras VS Computadora====="
			echo "=================================================="
			read -p "Dime tu nombre " b
			clear
			echo "********************COMENZAMOS********************"
			sleep 1
			clear
			echo "3"
			sleep 1
			clear
			echo "2"
			sleep 1
			clear
			echo "1"
			sleep 1
			clear
			echo "=================================================="
			echo "=====Un Piedra Papel y Tijeras VS Computadora====="
			echo "=================================================="
			echo "--------------------------------------------------"
			echo "--------------------¡ELIGE!-----------------------"
			echo "--------------------------------------------------"
			echo "*******************1.PIEDRA***********************"
			echo "********************2.PAPEL***********************"
			echo "*********************3.TIJERAS********************"
			echo "--------------------------------------------------"
	fi
	echo "=============Ganador -> " $ganador "=============="
	echo "--------------------------------------------------"
	echo "Puntos - Computadora ->" $pc "Puntos -" $b "->" $pd
	echo "--------------------------------------------------"
	read -p "===================Qué eliges???================= " e
	if [ $e -lt 1 ] || [ $e -gt 3 ]
		then
			echo "DEBES PULSAR UN NÚMERO DEL 1 AL 3! AMBOS INCLUSIVE!"
			sleep 1
			exit
		else
			pc=0
			pd=0
			while [ $e -ge 1 ] || [ $e -le 3 ]
				do
					if [ $e -eq 1 ]
						then
							y=PIEDRA							
							echo $b "a elegido " $y
							sleep 2
							let x=$((RANDOM%3+1))														 
							if [ $x -eq 1 ]
								then
									z=PIEDRA
									echo "La computadora a elegido " $z
									sleep 1
									echo "PIEDRA CON PIEDRA - EMPATE!"					
								else if [ $x -eq 2 ]
									then
										z=PAPEL
										echo "La computadora a elegido " $z
										sleep 1
										echo "EL PAPEL ENVUELVE A LA PIEDRA! - PUNTO PARA LA COMPUTADORA!"
										let "pc++"
									else if [ $x -eq 3 ]			
										then
											z=TIJERAS	
											echo "La computadora a elegido " $z
											sleep 1
											echo "LA PIEDRA ROMPE LAS TIJERAS! - PUNTO PARA " $b
											let "pd++"
									fi
								fi
							fi
						else if [ $e -eq 2 ]
							then
								y=PAPEL							
								echo $b "a elegido " $y
								sleep 2
								let x=$((RANDOM%3+1))								 
								if [ $x -eq 1 ]
									then
										z=PIEDRA
										echo "La computadora a elegido " $z
										sleep 1
										echo "EL PAPEL ENVUELVE A LA PIEDRA! - PUNTO PARA " $b
										let "pd++"
									else if [ $x -eq 2 ]
										then
											z=PAPEL
											echo "La computadora a elegido " $z
											sleep 1
											echo "PAPEL CON PAPEL EMPATE"		
										else if [ $x -eq 3 ]			
											then
												z=TIJERAS	
												echo "La computadora a elegido " $z
												sleep 1
												echo "LA TIJERAS CORTAN EL PAPEL! - PUNTO PARA LA COMPUTADORA"
												let "pc++"
										fi							
									fi
								fi								
							else if [ $e -eq 3 ]
								then
									y=TIJERAS							
									echo $b "a elegido " $y
									sleep 2
									let x=$((RANDOM%3+1))							 
									if [ $x -eq 1 ]
										then
											z=PIEDRA
											echo "La computadora a elegido " $z
											sleep 1
											echo "LA PIEDRA APLASTA A LAS TIJERAS! - PUNTO PARA LA COMPUTADORA"
											let "pc++"
										else if [ $x -eq 2 ]
											then
												z=PAPEL
												echo "La computadora a elegido " $z
												sleep 1
												echo "LAS TIJERAS CORTAN EL PAPEL! - PUNTO PARA " $b
												let "pd++"
											else if [ $x -eq 3 ]			
												then
													z=TIJERAS	
													echo "La computadora a elegido " $z
													sleep 1
													echo "TIJERAS CON TIJERAS! - EMPATE"
											fi
										fi
									fi								
							fi
						fi
					fi
					if [ $pd -gt $pc ]
						then
							ganador=$b
						else if [ $pd -lt $pc ]
							then
								ganador="Computadora"
							else if [ $pd -eq $pc ]
								then
									ganador="EMPATE"
							fi
						fi
					fi
					read -p "QUIERES CONTINUAR SI(Y) NO(N)" f
					if [ $f == N ]
						then
							if [ $pc -gt $pd ]
								then
									clear
									echo "ADIOS"
									sleep 1
									clear
									echo "LA COMPUTADORA HA VENCIDO! con "$pc "puntacos"									
									sleep 1
									clear
									echo "PERDEDOR"
									sleep 2 
									exit
								else if [ $pc -lt $pd ]
									then
										echo "FELICIDADES!"
										sleep 1
										echo "HAS GANADOOOO! con "$pd "puntacos"
										sleep 2
										clear
										echo "GENIO"
										sleep 1
										clear
										echo "CRACK"
										sleep 1
										clear
										echo "FIGURA"
										sleep 1
										exit
									else if [ $pc -eq $pd ]
										then	
											echo "LA PARTIDA HA TERMINADO EN EMPATE!"
											sleep 2
											exit
									fi
								fi
							fi
						else if [ $f == Y ]
							then
								clear
								echo "=================================================="
								echo "=====Un Piedra Papel y Tijeras VS Computadora====="
								echo "=================================================="
								echo "=============Ganador -> " $ganador "=============="
								echo "--------------------------------------------------"
								echo "Puntos - Computadora ->" $pc "Puntos -" $b "->" $pd
								echo "--------------------------------------------------"
								echo "--------------------¡ELIGE!-----------------------"
								echo "--------------------------------------------------"
								echo "*******************1.PIEDRA***********************"
								echo "********************2.PAPEL***********************"
								echo "*********************3.TIJERAS********************"
								echo "--------------------------------------------------" 
								read -p "===================Qué eliges???================= " e
						fi
					fi							
				done								
	fi			
fi
