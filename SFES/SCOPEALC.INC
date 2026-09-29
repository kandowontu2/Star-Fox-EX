; I don't know what the syntax for alc is. Change these to match correct syntax
	alc scope_no_latch_flag,2   ; ($013F) Not sure if flag or counter. Counter implies rollover after 65536 frames
	alc scope_held,2            ; ($0058) Super Scope "held" buttons
	alc scope_new,2             ; ($005C) Super Scope newly PRESSED buttons
	alc scope_prev,2            ; ($0060) Super Scope previously (last frame) PRESSED buttons
scope_fire	equ	%10000000
scope_cursor	equ	%01000000
scope_turbo	equ	%00100000
scope_pause	equ	%00010000

	alc scope_h,2               ; ($0137) Super Scope H position
	alc scope_v,2               ; ($0139) Super Scope V position
	alc scope_h_offset,2    	; ($0133) Super Scope H position offset, set with calibration
	alc scope_v_offset,2  	  ; ($0135) Super Scope V position offset, set with calibration
	alc	scope_h_final,2			;corrected value
	alc	scope_v_final,2			;corrected value
	alc	htotal,2			;corrected value
	alc	vtotal,2			;corrected value
	alc	currcolor,2
	alc	currsize,2