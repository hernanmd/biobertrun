#!/bin/bash

source do_setup.sh

python biocodes/ner_detokenize.py \
	--token_test_path="$out_dir"/token_test.txt \
	--label_test_path="$out_dir"/label_test.txt \
	--answer_path="$ner_dir"/test.tsv \
	--output_dir=/tmp/bioner
