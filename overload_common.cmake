
message("-- Including ${CTEST_INCLUDED_SCRIPT_NAME}")

set(MY_OPERATING_SYSTEM   "Windows7") # Windows, Linux, Darwin... 
set(CTEST_SITE            "${HOSTNAME}.kitware") # for example: mymachine.kitware, mymachine.bwh.harvard.edu, ...

get_filename_component(CTEST_SCRIPT_NAME_WE ${CTEST_SCRIPT_NAME} NAME_WE)
set(CTEST_LOG_FILE        "D:/D/Logs/${CTEST_SCRIPT_NAME_WE}.txt")

#-----------------------------------------------------------------------------
# Required executables
#-----------------------------------------------------------------------------
find_program(CTEST_GIT_COMMAND NAMES git)
#find_program(CTEST_SVN_COMMAND NAMES svn)
set(CTEST_SVN_COMMAND "C:/SlikSvn/bin/svn.exe")
find_program(CTEST_COVERAGE_COMMAND NAMES gcov)
find_program(CTEST_MEMORYCHECK_COMMAND NAMES valgrind)

#-----------------------------------------------------------------------------
# Cache for External data downloads
#-----------------------------------------------------------------------------
set(ENV{ExternalData_OBJECT_STORES} "D:/D/.ExternalData")

#-----------------------------------------------------------------------------
# Display variables
#-----------------------------------------------------------------------------
foreach(var MY_OPERATING_SYSTEM CTEST_SITE
            CTEST_LOG_FILE CTEST_BUILD_FLAGS
            CTEST_GIT_COMMAND CTEST_SVN_COMMAND
            CTEST_COVERAGE_COMMAND CTEST_MEMORYCHECK_COMMAND
            )
  message("-- ${var}: ${${var}}")
endforeach()

