#!/usr/bin/env bash
#exit if error
set -e
#show error when there is unset variable
set -u
#print out command
#set -x

SQUAD_DIR=/home/ec2-user/mrc_bert/notebooks/data
python3 run_squad.py \
  --bert_model bert-base-uncased \
  --do_train \
  --do_predict \
  --do_lower_case \
  --train_file $SQUAD_DIR/train-v1.1.json \
  --predict_file $SQUAD_DIR/dev-v1.1.json \
  --train_batch_size 12 \
  --learning_rate 3e-5 \
  --num_train_epochs 2.0 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir /home/ec2-user/tmp/debug_squad/



