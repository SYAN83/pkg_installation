#!/bin/bash
usage() {
    echo "USAGE $0 <file>"
    echo "LINE FORMAT: library[:installation method]"
    exit 1
}
if [ "$#" -ne 1 ]
then
    usage
fi

file=$1
while IFS=: read -r f1 f2
do
    lib="/usr/lib64/R/library/$f1"
    echo $lib
    if [ -d $lib ]
    then
        echo "library $f1 exists."
    else
        echo "library $f1 does not exist, installing..."
        if [[ -z "$f2" ]]
        then
            sudo su - \
            -c "R -e \"install.packages('$f1', repos='https://cran.rstudio.com/')\""
        else
	    echo $f1:$f2
            sudo su - \
            -c "R -e \"$f2\""
        fi
    fi
done <"$file"
