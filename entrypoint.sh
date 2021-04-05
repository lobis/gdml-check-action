#!/bin/sh -l

echo "Starting..."

export FILE=$1
root "CheckGDML.C(\"$FILE\")" > output.txt

echo "\n --- Output of TGeoManager::Import ---\n";

cat output.txt
# check if the test failed, if it was successful, $success should be equal to 1
export success=$(cat output.txt | grep " --- TEST WAS SUCCESSFUL ---" | wc -l)

if [ $success = "0" ]; then
    # we exit with error
    echo ""
    echo " --- TEST FAILED --- "
    exit 1
fi
