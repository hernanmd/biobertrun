#!/bin/bash

source do_setup.sh

python biocodes/ner_detokenize.py \
	--token_test_path=/tmp/bioner/token_test.txt \
	--label_test_path=/tmp/bioner/label_test.txt \
	--answer_path=$NER_DIR/test.tsv \
	--output_dir=/tmp/bioner
