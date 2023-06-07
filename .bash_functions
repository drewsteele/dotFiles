#!/bin/bash

csf(){
    SEARCHST = $1
    if [[ -z $SEARCHST ]]; then
        echo "Enter search string:"
        read SEARCHST
    fi
    grep -iIRn $SEARCHST * --exclude=*{.js,.css,testResults.xml}
}

