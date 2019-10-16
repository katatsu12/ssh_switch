dirs=( $(ls -1p ~/.ssh/ | grep profile) )

select dir in "${dirs[@]}"
do
  cp -r ~/.ssh/$dir* ~/.ssh/
done
