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
if(${MODXO_PINOUT} MATCHES "nova")
    include(boards/nova.cmake)
elseif(${MODXO_PINOUT} MATCHES "mini")
    include(boards/mini.cmake)
else()
    set(MODXO_PINOUT "nova")
    message(STATUS "NOTE: pinout not defined.")
    include(boards/nova.cmake)
endif()
message(STATUS "Building for ${MODXO_PINOUT}.")