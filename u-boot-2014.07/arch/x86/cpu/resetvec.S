/*
 *  U-boot - x86 Startup Code
 *
 * (C) Copyright 2002
 * Daniel Engström, Omicron Ceti AB, <daniel@omicron.se>
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

/* Reset vector, jumps to start16.S */

.extern start16

.section .resetvec, "ax"
.code16
reset_vector:
	cli
	cld
	jmp start16

	.org 0xf
	nop
