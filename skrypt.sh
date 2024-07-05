#!/bin/bash

function show_help {
	echo "Dostępne opcje:"
	echo "--date -d		Wyświetlanie daty"
	echo "--logs -l [N]	Tworzenie N plików logx.txt (domyślnie 100)"
	echo "--help -h		Pomoc"
}

function show_date {
	date
}

function create_logs {
	num_files=${1:-100}
	for i in $(seq 1 $num_files); do
	echo "log${i}.txt, skrypt.sh, $(date)" > log${i}.txt
	done
}

case "$1" in
	--date|-d)
        show_date
        ;;
    	--logs|-l)
        create_logs $2
        ;;
    	--help|-h)
        show_help
        ;;
*)
        show_help
        ;;
esac

