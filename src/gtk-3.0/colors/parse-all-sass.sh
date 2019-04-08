#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t expanded"

_VARIANTS=('' '-dark')
if [ ! -z "${VARIANTS:-}" ]; then
  IFS=', ' read -r -a _VARIANTS <<< "${VARIANTS:-}"
fi

_COLOR_VARIANTS=('red' 'pink' 'purple' 'indigo' 'blue' 'cyan' 'teal' 'green' 'lime' 'yellow' 'amber' 'orange' 'brown')
if [ ! -z "${COLOR_VARIANTS:-}" ]; then
  IFS=', ' read -r -a _COLOR_VARIANTS <<< "${COLOR_VARIANTS:-}"
fi

for variant in "${_VARIANTS[@]}"; do
  sassc $SASSC_OPT src/gtk-3.0/gtk${variant}.{scss,css}
  echo "==> Generating the gtk${variant}.css..."
done

for variant in "${_VARIANTS[@]}"; do
  for color in "${_COLOR_VARIANTS[@]}"; do
  sassc $SASSC_OPT src/gtk-3.0/colors/gtk${variant}-${color}.{scss,css}
  echo "==> Generating the gtk${variant}-${color}.css..."
  done
done
