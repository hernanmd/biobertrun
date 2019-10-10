#!/bin/bash

select_dir () {
	dirs=($1/*)
	read -p "$(
	       	f=0
		for dirname in "${dirs[@]}" ; do
                	echo "$((++f)): $dirname"
	        done
        	echo -ne 'Please select a directory > '
	)" selection

	export selected_dir="${dirs[$((selection-1))]}"
	echo "You selected '$selected_dir'"
}
