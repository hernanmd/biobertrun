#!/bin/sh

source do_setup.sh
outdir=/tmp/bioner

rmdir "$outdir"
mkdir "$outdir"

python3 run_ner.py \
    --do_train=true \
    --do_eval=true \
    --vocab_file=$BIOBERT_DIR/vocab.txt \
    --bert_config_file=$BIOBERT_DIR/bert_config.json \
    --init_checkpoint=$BIOBERT_DIR/biobert_model.ckpt \
    --num_train_epochs=10.0 \
    --data_dir=$NER_DIR/ \
    --output_dir="$outdir"

./do_detokenize.sh
perl biocodes/conlleval.pl < "$outdir"/NER_result_conll.txt
