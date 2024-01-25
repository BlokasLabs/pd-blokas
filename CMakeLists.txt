cmake_minimum_required(VERSION 3.12)
project(pd-blokas)

set(DISABLE_LIBUSB 1)
set(DISABLE_SOUNDPLANELITE 1)
set(DISABLE_PUSH2 1)
set(DISABLE_EIGENHARP 1)
add_subdirectory(MEC)

install(TARGETS KontrolModule KontrolRack mec-kontrol-api mec-utils oscpack cjson DESTINATION lib/pd/extra/blokas)
install(FILES ktrl.pd monorack.pd DESTINATION lib/pd/extra/blokas)
