#!/bin/bash

source libf_seldir.sh
export base_outdir="/tmp/bioner"
base_train_data="$HOME/biobert/train_data"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

[ -d "$base_train_data" ] || { echo "BioBERT train data directory should be $base_train_data"; exit 1; }

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

######################################
# Train data
######################################
echo "Train data directory? (should contain Checkpoint files .ckpt + config.json + vocab.txt)"
select_dir "$base_train_data"
export biobert_dir="$selected_dir"

echo "NER data directory? (should contain .tsv files)"
select_dir "$base_train_data"
export ner_dir="$selected_dir"

########################################
# Review
########################################

echo "SETUP: Output directory is $out_dir"
echo "SETUP: Train data location is $biobert_dir"
echo "SETUP: NER location is $ner_dir"
