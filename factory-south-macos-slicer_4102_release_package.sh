# CMAKE_VERSION=NA - This comment is used by the maintenance script to look up the cmake version

# Slicer 'Stable' release
/Volumes/D/Support/CMake-3.12.2.app/Contents/bin/ctest -S /Volumes/D/DashboardScripts/factory-south-macos-slicer_4102_release_package.cmake -VV -O /Volumes/D/Logs/factory-south-macos-slicer_4102_release_package.log

# Slicer 'Stable' release extensions
/Volumes/D/Support/CMake-3.12.2.app/Contents/bin/ctest -S /Volumes/D/DashboardScripts/factory-south-macos-slicerextensions_stable_nightly.cmake -VV -O /Volumes/D/Logs/factory-south-macos-slicerextensions_stable_nightly.log
