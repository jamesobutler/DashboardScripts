# CMAKE_VERSION=NA - This comment is used by the maintenance script to look up the cmake version

# Slicer 'Stable' release
/Volumes/D/Support/CMake-3.22.1.app/Contents/bin/ctest -S /Volumes/D/DashboardScripts/factory-south-macos-slicer_500_release_package.cmake -VV -O /Volumes/D/Logs/factory-south-macos-slicer_500_release_package.log

cp -rp \
  /Volumes/D/S/S-0-build/python-install/lib/python3.9/site-packages \
  /Volumes/D/S/S-0-build/python-install/lib/python3.9/site-packages.bkp

# Slicer 'Stable' release extensions
/Volumes/D/Support/CMake-3.22.1.app/Contents/bin/ctest -S /Volumes/D/DashboardScripts/factory-south-macos-slicerextensions_stable_nightly.cmake -VV -O /Volumes/D/Logs/factory-south-macos-slicerextensions_stable_nightly.log
