#!/bin/bash -e

./build_docset.sh sunpy http://docs.sunpy.org https://raw.githubusercontent.com/sunpy/sunpy-logo/master/generated/sunpy_icon_64x64.png
./build_docset.sh astropy http://docs.astropy.org https://raw.githubusercontent.com/astropy/astropy-logo/master/generated/astropy_logo_notext.png
./build_docset.sh wcsaxes http://wcsaxes.readthedocs.io https://raw.githubusercontent.com/astropy/astropy-logo/master/generated/astropy_logo_notext.png
