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