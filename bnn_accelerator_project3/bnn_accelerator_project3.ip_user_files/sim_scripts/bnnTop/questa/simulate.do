onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib bnnTop_opt

do {wave.do}

view wave
view structure
view signals

do {bnnTop.udo}

run -all

quit -force
