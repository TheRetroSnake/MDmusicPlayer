; +-------------------------------------------------------------------------+
; |   This file	has been generated by The Interactive Disassembler (IDA)    |
; |	      Copyright	(c) 2011 Hex-Rays, <support@hex-rays.com>	    |
; |			 License info: B3-432E-F558-21			    |
; |				Ilfak Guilfanov				    |
; +-------------------------------------------------------------------------+
;
; Input	MD5   :	593656C38B49B369F54438C2BB08B459
; Input	CRC32 :	5676C0BE

; ===========================================================================

	include "../../code/LANG Z80.ASM"
	org 0
	z80prog 0
; ===========================================================================
		di
		di
		di
		ld	a, 2Ah ; '*'
		ex	af, af

loc_6:					; CODE XREF: ROM:000Aj	ROM:0089j
		ld	a, (1FFEh)
		zor	a
		jr	z, loc_6
		ld	(1FFFh), a

loc_F:					; CODE XREF: ROM:0013j
		ld	a, (4000h)
		zor	a
		jp	m, loc_F
		ld	a, 2Bh ; '+'
		ld	(4000h), a
		ld	a, 80h ; '�'
		ld	(4001h), a
		xor	a
		ld	(1FFFh), a

loc_24:					; CODE XREF: ROM:005Cj
		xor	a
		ld	(1FFEh), a
		ld	ix, 1FF4h
		call	sub_8C
		ld	hl, 1FFEh
		exx
		ld	bc, 1FFFh
		ld	de, 4001h
		ld	hl, 4000h
		exx

loc_3D:					; CODE XREF: ROM:0059j	ROM:006Ej
		ld	a, e
		zor	d
		jr	z, loc_5F
		ld	a, (bc)
		dec	de
		inc	bc
		ex	af, af
		exx
		ld	(bc), a

loc_47:					; CODE XREF: ROM:0049j
		bit	7, (hl)
		jr	nz, loc_47
		ld	(hl), a
		ret	nz
		ex	af, af
		ld	(de), a
		xor	a
		ld	(bc), a
		exx
		ld	a, 1

loc_54:					; CODE XREF: ROM:0055j
		dec	a
		jr	nz, loc_54
		ld	a, (hl)
		zor	a
		jp	p, loc_3D
		jp	loc_24
; ---------------------------------------------------------------------------

loc_5F:					; CODE XREF: ROM:003Fj
		ld	ix, 1FF4h
		ld	a, (ix+8)
		zor	(ix+9)
		jr	z, loc_71
		call	sub_9F
		jp	loc_3D
; ---------------------------------------------------------------------------

loc_71:					; CODE XREF: ROM:0069j
		ld	a, 80h ; '�'
		ld	(1FFFh), a

loc_76:					; CODE XREF: ROM:007Aj
		ld	a, (4000h)
		zor	a
		jp	m, loc_76
		ld	a, 2Bh ; '+'
		ld	(4000h), a
		xor	a
		ld	(4001h), a
		ld	(1FFFh), a
		jp	loc_6

; =============== S U B	R O U T	I N E =======================================


sub_8C:					; CODE XREF: ROM:002Cp
		call	sub_D6
		ld	(ix+1),	a
		ld	d, (ix+5)
		ld	e, (ix+6)
		ld	b, (ix+3)
		ld	c, (ix+4)
		ret
; End of function sub_8C


; =============== S U B	R O U T	I N E =======================================


sub_9F:					; CODE XREF: ROM:006Bp
		inc	(ix+2)
		call	sub_D6
		ld	bc, 8000h
		ld	a, (ix+8)
		rla
		ld	a, (ix+7)
		rl	a
		jr	z, loc_C7
		ld	a, (ix+8)
		zsub	80h ; '�'
		ld	(ix+8),	a
		ld	a, (ix+7)
		sbc	a, 0
		ld	(ix+7),	a
		ld	de, 8000h
		ret
; ---------------------------------------------------------------------------

loc_C7:					; CODE XREF: sub_9F+12j
		ld	d, (ix+8)
		ld	e, (ix+9)
		ld	(ix+8),	0
		ld	(ix+9),	0
		ret
; End of function sub_9F


; =============== S U B	R O U T	I N E =======================================


sub_D6:					; CODE XREF: sub_8Cp sub_9F+3p
		ld	b, 7
		ld	a, (ix+2)

loc_DB:					; CODE XREF: sub_D6+9j
		ld	(6000h), a
		rrca
		djnz	loc_DB
		xor	a
		ld	(6000h), a
		ld	(6000h), a
		ret
	z80prog
		end
