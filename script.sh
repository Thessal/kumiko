
find /mnt/datadir -name "*.jpg" | xargs -P 3 -I fileName sh -c '
echo "fileName"
if test -f "$(dirname "fileName"|sed -e "s/\/datadir\//\/outdir\//")/$(basename -s .jpg "fileName").json"; then
:
else
mkdir -p "$(dirname "fileName"|sed -e "s/\/datadir\//\/outdir\//")"
"/mnt/kumiko" --rtl -i "fileName" -o "$(dirname "fileName"|sed -e "s/\/datadir\//\/outdir\//")/$(basename -s .jpg "fileName").json"
echo "Done"
fi
'


find /mnt/datadir -name "*.JPG" | xargs -P 2 -I fileName sh -c '
echo "fileName"
if test -f "$(dirname "fileName"|sed -e "s/\/datadir\//\/outdir\//")/$(basename -s .JPG "fileName").json"; then
:
else
mkdir -p "$(dirname "fileName"|sed -e "s/\/datadir\//\/outdir\//")"
"/mnt/kumiko" --rtl -i "fileName" -o "$(dirname "fileName"|sed -e "s/\/datadir\//\/outdir\//")/$(basename -s .JPG "fileName").json"
echo "Done"
fi
'

