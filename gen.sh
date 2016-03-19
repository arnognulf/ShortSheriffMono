#!/bin/bash
rm mono/*.ttf
for font in orig/*ttf
do
    NAME="Short Sheriff Pro Mono"
    basename=${font##*/}
    basename=${basename%%.ttf}
    weight=${basename#*-}
    psname="${basename/SourceSerifPro/Short Sheriff Pro Mono}"
    python monospaci.py/monospaci.py \
        -psname "${psname/-/ }" \
        -fullname "${psname/-/ }" \
        -familyname "${NAME}" \
        -nameslist monospaci.py/NamesList.txt \
        $font
done
rm TTFAutoHint-Input.ttf
mv *ttf mono/

