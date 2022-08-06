#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# This file is a .xdc for AD9283 ADC Expansion Modules on Saturn Expansion Connector            #
# To use it in your project :                                                                   #
# * Remove or comment the lines corresponding to unused pins                                    #
# * Rename the used signals according to the your project                                       #
#																								#
#	*ADC Expansion module with Skoll Kintex 7 Board.                                            #
#	*Input is from ADC Expansion module															#
#	*ADC Expansion module (P2 & P3)is connected to Saturn Expansion module 					    #
#    Headers (P6 & P12)																		#
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#####################################################################
#                          Clock 100 MHz                            #
#####################################################################
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports CLK]

set_property PACKAGE_PIN C12 [get_ports RST_n]
set_property IOSTANDARD LVCMOS33 [get_ports RST_n]
set_property PULLUP true [get_ports RST_n]
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports tx]

########################################################################
#       ADC9283ExpansionModule on P12 & P6 Headers of IO breakout      #
########################################################################
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {ADC_Din[7]}]
set_property -dict { PACKAGE_PIN "JD10"   IOSTANDARD LVCMOS33 } [get_ports { ADC_Din[7] }];
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {ADC_Din[6]}]
set_property -dict { PACKAGE_PIN "JD9"   IOSTANDARD LVCMOS33 } [get_ports { ADC_Din[6] }];
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports {ADC_Din[5]}]
set_property -dict { PACKAGE_PIN "JD8"   IOSTANDARD LVCMOS33 } [get_ports { ADC_Din[5] }];
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports {ADC_Din[4]}]
set_property -dict { PACKAGE_PIN "JD7"   IOSTANDARD LVCMOS33 } [get_ports { ADC_Din[4] }];
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS33} [get_ports {ADC_Din[3]}]
set_property -dict { PACKAGE_PIN "JD4"   IOSTANDARD LVCMOS33 } [get_ports { ADC_Din[3] }];
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports {ADC_Din[2]}]
set_property -dict { PACKAGE_PIN "JD3"   IOSTANDARD LVCMOS33 } [get_ports { ADC_Din[2] }];
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {ADC_Din[0]}]
set_property -dict { PACKAGE_PIN "JD2"   IOSTANDARD LVCMOS33 } [get_ports { ADC_Din[0] }];
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports {ADC_Din[1]}]
set_property -dict { PACKAGE_PIN "JD1"   IOSTANDARD LVCMOS33 } [get_ports { ADC_Din[1] }];

set_property -dict {PACKAGE_PIN T8 IOSTANDARD LVCMOS33} [get_ports ADC_PWR]
set_property -dict { PACKAGE_PIN "T20"   IOSTANDARD LVCMOS33 } [get_ports { ADC_PWR }];
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports ADC_CLK]
set_property -dict { PACKAGE_PIN "JC1"   IOSTANDARD LVCMOS33 } [get_ports { ADC_CLK }];


