menu_from_array ()
{

  select item; do
    if [ 1 -le "$REPLY" ] && [ "$REPLY" -le $# ];

    then
      echo "Done. Current: $item"
      cp -r ~/.ssh/$item* ~/.ssh/
      break;
    else
      echo "Wrong selection: Select profile from 1-$#"
    fi
  done
}

profiles=($(ls -1p ~/.ssh/ | grep profile))

menu_from_array "${profiles[@]}"
