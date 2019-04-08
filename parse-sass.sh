#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t expanded"

_VARIANTS=('' '-light' '-dark')
if [ ! -z "${VARIANTS:-}" ]; then
  IFS=', ' read -r -a _VARIANTS <<< "${VARIANTS:-}"
fi

for variant in "${_VARIANTS[@]}"; do
  sassc $SASSC_OPT src/gtk-3.0/gtk${variant}.{scss,css}
  echo "==> Generating the gtk${variant}.css..."
done
