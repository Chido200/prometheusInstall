#!/bin/bash


#MENU
echo "Faites un choix"
echo "1 - Installation de Prometheus"
echo "2 - Installation de Node Exporteur"


node_exporter = 1.1.2

echo -n "Entrer une Valeur: "
read ACTION

case $ACTION in

	1)
		wget https://github.com/prometheus/prometheus/releases/download/v2.27.0/prometheus-2.27.0.linux-amd64.tar.gz

		echo "--------SOURCE RECUPEREE------------"

		tar xvfz prometheus-*.tar.gz

		echo "-------SOURCE DECOMPRESSEE----------"
	
		rm -f prometheus-*.tar.gz


	2)

		wget https://github.com/prometheus/node_exporter/releases/download/v1.1.2/node_exporter-$node_exporter.linux-amd64.tar.gz
		
		echo "--------SOURCE RECUPEREE------------"

                tar xvfz node_exporter-$node_exporter-amd64.tar.gz

                echo "-------SOURCE DECOMPRESSEE----------"

                rm -f node_exporter-*.tar.gz

	*)
		echo "IMPOSSIBLE VOTRE CHOIX"
