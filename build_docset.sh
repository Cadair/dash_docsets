#!/bin/bash -e


NAME=$1
WEB=$2

cd $NAME
python setup.py build_docs
cd ..
doc2dash -n $NAME -d output/ -j -u $WEB -v $NAME/build/sphinx/html
tar --exclude='.DS_Store' -cvzf output/$NAME.tgz output/$NAME.docset
