#!/bin/bash 

FILE="${1}"
cp incoming/$FILE .
SPAN=${2:-2}
SPAN_LESS_1=$((SPAN - 1))
COUNTER=1
NUMBEROFPAGES=`pdftk $FILE dump_data |grep NumberOfPages | awk '{print $2}'`
while [  $COUNTER -lt $NUMBEROFPAGES ]; do
    CANDIDATE_END=$(($COUNTER+$SPAN_LESS_1))
    END=$(($CANDIDATE_END<$NUMBEROFPAGES ? $CANDIDATE_END : $NUMBEROFPAGES))
    OUT_NAME="chunk-${FILE%.*}__${COUNTER}-${END}.pdf"
    echo $OUT_NAME
    pdftk $FILE cat $COUNTER-$END output ${OUT_NAME}
    let COUNTER=COUNTER+SPAN
done
cp chunk*.pdf output