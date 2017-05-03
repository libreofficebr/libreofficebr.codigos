#!/bin/bash
# Autor: Marcos Ferreira da Rocha
# Email: marcos.fr.rocha@gmail.com
# Objetivo: Este script, faz uma instalação automatizada do libreoffice. 
# Versão: 1.0
# Data: 03/05/2017
# Nota : O script baixa as versões  Fresh ( Que oferece os mais  novos recursos também está mais próxima à versão de desenvolvimento) baixa também a versão Still ( Versão Estável e que oferece maior estabilidade que a versão fresh)



whiptail --title  "Esclarecimento" --msgbox  "O LibreOffice  é oferecido pela TDF | The Document Fundation
O https://pt-br.libreoffice.org é o portal da comunidade Brasileira.

Este script baixa e instala o LibreOffice Estável ou Novo, também conhecidos como Still e Fresh diretamente da instituição, mais precisamente do repositório cedido na linorg.USP.br

Este trabalho não possui vinculo algum com a mesma ou com seus colaboradores diretos.


Convidamo-lo a visitar a  página do projeto ( LibreOffice ).

https://pt-br.libreoffice.org 

Clique em Ok para continuar" 20 80


vs=$(whiptail --title " Escolher a Versão Nova ou Estável" --inputbox "Digite a Versão a ser instalada exemplo: 5.3.2:" --fb 10 60 3>&1 1>&2 2>&3)
statussaida=$?
if [ $statussaida = 0 ]; then
   


	if whiptail --title "Escolhendo o tipo de instalação" --yes-button " 32 Bits" --no-button "64 Bits"  --yesno "Escolha o tipo de instalação desejada" --fb 10 50
		then
    
		####################
		plafatorma=x86
		plafatorma2=x86
		####################

		# Abrir a pagina do LibreOffice Brasil.



		
		
		#Removendo o LibreOffice
		echo "Digite sua senha para entrar temporárimente como root"

		sudo apt-get remove --purge libreoffice* -y

		#Baixando os pacotes
		

		
		sudo wget -c http://linorg.usp.br/LibreOffice/libreoffice/stable/$vs/deb/"$plafatorma"/LibreOffice_"$vs"_Linux_"$plafatorma2"_deb.tar.gz

		sudo wget -c http://linorg.usp.br/LibreOffice/libreoffice/stable/$vs/deb/"$plafatorma"/LibreOffice_"$vs"_Linux_"$plafatorma2"_deb_helppack_pt-BR.tar.gz

		sudo wget -c http://mirror.pop-sc.rnp.br/mirror/tdf/libreoffice/stable/$vs/deb/"$plafatorma"/LibreOffice_"$vs"_Linux_"$plafatorma2"_deb_langpack_pt-BR.tar.gz


		# Descompactando os pacotes 
		# Libre Office
		sudo tar -zxpvf LibreOffice_"$vs"_Linux_"$plafatorma2"_deb.tar.gz

		# Pacote de Linguagem Portugues BR
		sudo tar -zxpvf LibreOffice_"$vs"_Linux_"$plafatorma2"_deb_langpack_pt-BR.tar.gz

		# Pacote de Ajuda em Portugues BR
		sudo tar -zxpvf LibreOffice_"$vs"_Linux_"$plafatorma2"_deb_helppack_pt-BR.tar.gz


			# Aqui ocorre a instalação do pacote principal do Libre Office


			if 	[ -n "$(ls -A LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb/DEBS/*
					
			else
  	
					echo "Não encontrado"
			fi



			
			# Aqui ocorre a instalação do Pacote de ajuda em Portugues BR
			echo "Instalar Pacote de Ajuda em Portugues BR"



			if 	[ -n "$(ls -A LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					
			else
					echo "Não encontrado"
			fi
		
		



			# Aqui ocorre a instalação do Pacote de idioma em Portugues BR
			echo "Instalar Pacote de idioma Portugues BR"



			if 	[ -n "$(ls -A LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*
					
			else
					echo "Não encontrado"
			fi



## Instalação em 64 Bits

		else
    	echo "Você escolheu a versão 64 Bits."


		####################
		plafatorma=x86_64
		plafatorma2=x86-64
		####################

		# Abrir a pagina do LibreOffice Brasil.
		
		#Removendo o LibreOffice
		sudo apt-get remove --purge libreoffice* -y
		
		
		# Baixando os pacotes
			
		sudo wget -c http://linorg.usp.br/LibreOffice/libreoffice/stable/$vs/deb/"$plafatorma"/LibreOffice_"$vs"_Linux_"$plafatorma2"_deb.tar.gz

		sudo wget -c http://linorg.usp.br/LibreOffice/libreoffice/stable/$vs/deb/"$plafatorma"/LibreOffice_"$vs"_Linux_"$plafatorma2"_deb_helppack_pt-BR.tar.gz

		sudo wget -c http://mirror.pop-sc.rnp.br/mirror/tdf/libreoffice/stable/$vs/deb/"$plafatorma"/LibreOffice_"$vs"_Linux_"$plafatorma2"_deb_langpack_pt-BR.tar.gz

		# Descompactando os pacotes 

		# Libre Office
		sudo tar -zxpvf LibreOffice_"$vs"_Linux_"$plafatorma2"_deb.tar.gz

		# Pacote de Linguagem Portugues BR
		sudo tar -zxpvf LibreOffice_"$vs"_Linux_"$plafatorma2"_deb_langpack_pt-BR.tar.gz

		# Pacote de Ajuda em Portugues BR
		sudo tar -zxpvf LibreOffice_"$vs"_Linux_"$plafatorma2"_deb_helppack_pt-BR.tar.gz




			# 1 instalando os pacotes principal Libre Office

	
			if 	[ -n "$(ls -A LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb/DEBS/*
					
			else
  	
					echo "Não encontrado"
			fi



			# Aqui ocorre a instalação do Pacote de ajuda em Portugues BR			
			echo "Instalar Pacote de Ajuda em Portugues BR"


			if 	[ -n "$(ls -A LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					

			elif	[ -n "$(ls -A LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb_helppack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb_helppack_pt-BR/DEBS/*
					
			else
					echo "Não encontrado"
		
			fi



			#  Aqui ocorre a instalação do Pacote de idioma em Porugues BR
			echo "Instalar Pacote de Idioma em Portugues BR"


	
			if 	[ -n "$(ls -A LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."1_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*

			elif	[ -n "$(ls -A LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."2_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*

			elif	[ -n "$(ls -A LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."3_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*

			elif	[ -n "$(ls -A LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."4_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*

			elif	[ -n "$(ls -A LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."5_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*

			elif	[ -n "$(ls -A LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."6_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*

			elif	[ -n "$(ls -A LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."7_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*

			elif	[ -n "$(ls -A LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."8_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*

			elif	[ -n "$(ls -A LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb_langpack_pt-BR)" ]
				then
					sudo dpkg -i LibreOffice_"$vs""."9_Linux_"$plafatorma2"_deb_langpack_pt-BR/DEBS/*s
			else
  				echo "Não encontrado"
			fi


		#Testando se o LibreOffice foi instalado
		
		if	[ -n "$(ls -A /opt/libreoffic* )" ]
			
			then
  				echo " Libre office instalado com sucesso !"
		
		else
  				echo "Nãoi foi possível instalar o LibreOffice :("
		
		fi

	fi

else
    echo "Ação cancelada pelo usuário."
fi
