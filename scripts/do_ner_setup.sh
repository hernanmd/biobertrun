#!/bin/bash

base_outdir="/tmp/bioner"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

######################################
# Output directory
######################################
echo "Create output in a new timestamped directory (default is $base_outdir)?"
select yn in "Yes" "No"; do
	case $yn in
		Yes ) export out_dir="$base_outdir/$timestamp"; break;;
		No ) export out_dir="$base_outidr"; exit;;
	esac
done
echo "Output directory is $out_dir"

######################################
# Train data
######################################
echo "Train data directory?"
select dir in "Dir1" "Dir2"; do
    case $dir in
        Dir1 ) export biobert_dir=""; break;;
        Dir2 ) export biobert_dir=""; break;;
    esac
done
echo "Train data location is $biobert_dir"

export biobert_dir=$HOME/biobert/train_data/biobert_v1.0_pmc
export ner_dir=$HOME/biobert/train_data/NCBI-disease
