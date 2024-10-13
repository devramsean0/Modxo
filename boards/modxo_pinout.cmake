#
#SPDX short identifier: BSD-2-Clause
#BSD 2-Clause License
#Copyright (c) 2024, Shalx <Alejandro L. Huitron shalxmva@gmail.com>
#

#Default pin values, so the pinout files can skip them if not used
set(LED_STATUS_PIN PICO_DEFAULT_LED_PIN)

set(LED_STRIP1 31) #Not Used
set(LED_STRIP2 31) #Not Used
set(LED_STRIP3 31) #Not Used
set(LED_STRIP4 31) #Not Used

#pinout selector
if(${MODXO_PINOUT} MATCHES "bsx-firmware")
    include(boards/bsx.cmake)
else()
    set(MODXO_PINOUT "official_pico")
    message(STATUS "NOTE: Modxo pinout not defined.")
    include(boards/official_pico.cmake)
endif()
message(STATUS "Building for ${MODXO_PINOUT}.")