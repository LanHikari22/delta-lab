main() {
  ExtractEmbeddedBinary "LPuz.jar"
  if [[ $? -ne 0  ]]; then 
    echo "error: failed to extract game"
    return 1; 
  fi

  java -jar LPuz.jar
  pause
  return 0

}

# (extract_path: str) -> void
ExtractEmbeddedBinary() {
  export MBEGIN=$(cat $0 | grep -ne  "-----BEGIN CERTIFICATE-----" | tail -n1)
  if [[ $? -ne 0  ]]; then return 1; fi
  export MBEGIN=$(cat $0 | grep -ne  "-----BEGIN CERTIFICATE-----" | tail -n1 | cut -d":" -f1)

  # delete previous output files
  if [[ -f "$1.tmp" ]]; then rm "$1.tmp"; fi
  if [[ -f "$1" ]]; then rm "$1"; fi

  # extract binary encoded file
  more +$(expr $MBEGIN + 1) $0 | sed -e "$ d"> $1.tmp

  # decode binary file
  base64 --decode "$1.tmp" > "$1"
  rm "$1.tmp"

  return 0
}

main
exit
