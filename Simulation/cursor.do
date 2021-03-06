onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {reset and clock} /cursor_tb/reset
add wave -noupdate -expand -group {reset and clock} /cursor_tb/clock
add wave -noupdate -expand -group {reset and clock} /cursor_tb/testMode
add wave -noupdate -expand -group {Buttons and sensors} /cursor_tb/restart
add wave -noupdate -expand -group {Buttons and sensors} /cursor_tb/go1
add wave -noupdate -expand -group {Buttons and sensors} /cursor_tb/go2
add wave -noupdate -expand -group {Buttons and sensors} /cursor_tb/sensor1
add wave -noupdate -expand -group {Buttons and sensors} /cursor_tb/sensor2
add wave -noupdate -expand -group Encoder /cursor_tb/encoderA
add wave -noupdate -expand -group Encoder /cursor_tb/encoderB
add wave -noupdate -expand -group Encoder /cursor_tb/encoderI
add wave -noupdate -expand -group Internals /cursor_tb/I_DUT/I2/current_state
add wave -noupdate -expand -group Internals -format Analog-Step -height 50 -max 14000.0 -radix unsigned /cursor_tb/I_DUT/position
add wave -noupdate -expand -group {Motor control} /cursor_tb/motorOn
add wave -noupdate -expand -group {Motor control} /cursor_tb/side1
add wave -noupdate -expand -group {Motor control} /cursor_tb/side2
add wave -noupdate /cursor_tb/I_DUT/testOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20313725490 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 240
configure wave -valuecolwidth 71
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {21 ms}
