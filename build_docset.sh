#!/bin/bash -e


NAME=$1
WEB=$2
ICON=$3

cd $NAME
python setup.py build_docs

cd ..
wget $ICON -O $NAME.png
doc2dash -n $NAME -d output/ -j -u $WEB -v $NAME/build/sphinx/html -i $NAME.png

cd output/$NAME.docset
tar --exclude='.DS_Store' -cvzf ../$NAME.tgz .
