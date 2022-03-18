	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"sensirion_i2c.c"
	.text
.Ltext0:
	.section	.text.sensirion_i2c_generate_crc,"ax",%progbits
	.align	1
	.global	sensirion_i2c_generate_crc
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_generate_crc, %function
sensirion_i2c_generate_crc:
.LVL0:
.LFB0:
	.file 1 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_i2c.c"
	.loc 1 37 73 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 38 5 view .LVU1
	.loc 1 39 5 view .LVU2
	.loc 1 40 5 view .LVU3
	.loc 1 43 5 view .LVU4
	.loc 1 37 73 is_stmt 0 view .LVU5
	push	{r4, lr}
.LCFI0:
	mov	r2, r0
	add	r1, r1, r0
.LVL1:
	.loc 1 39 13 view .LVU6
	movs	r0, #255
.LVL2:
.L2:
	.loc 1 43 28 is_stmt 1 discriminator 1 view .LVU7
	.loc 1 43 5 is_stmt 0 discriminator 1 view .LVU8
	cmp	r1, r2
	bne	.L6
	.loc 1 52 5 is_stmt 1 view .LVU9
	.loc 1 53 1 is_stmt 0 view .LVU10
	pop	{r4, pc}
.L6:
	.loc 1 44 9 is_stmt 1 view .LVU11
	.loc 1 44 21 is_stmt 0 view .LVU12
	ldrb	r3, [r2], #1	@ zero_extendqisi2
.LVL3:
	.loc 1 44 13 view .LVU13
	movs	r4, #8
	eors	r0, r0, r3
.LVL4:
	.loc 1 45 9 is_stmt 1 view .LVU14
	.loc 1 45 27 view .LVU15
.L5:
	.loc 1 46 13 view .LVU16
	.loc 1 46 16 is_stmt 0 view .LVU17
	tst	r0, #128
	lsl	r3, r0, #1
	.loc 1 47 17 is_stmt 1 view .LVU18
	.loc 1 47 34 is_stmt 0 view .LVU19
	it	ne
	eorne	r3, r3, #49
	.loc 1 49 17 is_stmt 1 view .LVU20
	.loc 1 49 21 is_stmt 0 view .LVU21
	uxtb	r0, r3
.LVL5:
	.loc 1 45 40 is_stmt 1 view .LVU22
	.loc 1 45 27 view .LVU23
	.loc 1 45 9 is_stmt 0 view .LVU24
	subs	r3, r4, #1
	ands	r4, r3, #255
.LVL6:
	.loc 1 45 9 view .LVU25
	bne	.L5
	b	.L2
.LFE0:
	.size	sensirion_i2c_generate_crc, .-sensirion_i2c_generate_crc
	.section	.text.sensirion_i2c_check_crc,"ax",%progbits
	.align	1
	.global	sensirion_i2c_check_crc
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_check_crc, %function
sensirion_i2c_check_crc:
.LVL7:
.LFB1:
	.loc 1 56 50 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 57 5 view .LVU27
	.loc 1 56 50 is_stmt 0 view .LVU28
	push	{r4, lr}
.LCFI1:
	.loc 1 56 50 view .LVU29
	mov	r4, r2
	.loc 1 57 9 view .LVU30
	bl	sensirion_i2c_generate_crc
.LVL8:
	.loc 1 60 1 view .LVU31
	subs	r0, r0, r4
	it	ne
	movne	r0, #1
	pop	{r4, pc}
.LFE1:
	.size	sensirion_i2c_check_crc, .-sensirion_i2c_check_crc
	.section	.text.sensirion_i2c_general_call_reset,"ax",%progbits
	.align	1
	.global	sensirion_i2c_general_call_reset
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_general_call_reset, %function
sensirion_i2c_general_call_reset:
.LFB2:
	.loc 1 62 48 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 63 5 view .LVU33
	.loc 1 62 48 is_stmt 0 view .LVU34
	push	{r0, r1, r2, lr}
.LCFI2:
	.loc 1 63 19 view .LVU35
	movs	r3, #6
	.loc 1 64 12 view .LVU36
	movs	r2, #1
	add	r1, sp, #7
	movs	r0, #0
	.loc 1 63 19 view .LVU37
	strb	r3, [sp, #7]
	.loc 1 64 5 is_stmt 1 view .LVU38
	.loc 1 64 12 is_stmt 0 view .LVU39
	bl	sensirion_i2c_hal_write
.LVL9:
	.loc 1 65 1 view .LVU40
	sxth	r0, r0
	add	sp, sp, #12
.LCFI3:
	@ sp needed
	ldr	pc, [sp], #4
.LFE2:
	.size	sensirion_i2c_general_call_reset, .-sensirion_i2c_general_call_reset
	.section	.text.sensirion_i2c_fill_cmd_send_buf,"ax",%progbits
	.align	1
	.global	sensirion_i2c_fill_cmd_send_buf
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_fill_cmd_send_buf, %function
sensirion_i2c_fill_cmd_send_buf:
.LVL10:
.LFB3:
	.loc 1 69 60 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 70 5 view .LVU42
	.loc 1 71 5 view .LVU43
	.loc 1 73 5 view .LVU44
	.loc 1 69 60 is_stmt 0 view .LVU45
	push	{r3, r4, r5, r6, r7, lr}
.LCFI4:
	.loc 1 69 60 view .LVU46
	mov	r5, r3
	.loc 1 73 43 view .LVU47
	lsrs	r3, r1, #8
.LVL11:
	.loc 1 73 18 view .LVU48
	strb	r3, [r0]
	.loc 1 74 5 is_stmt 1 view .LVU49
.LVL12:
	.loc 1 74 18 is_stmt 0 view .LVU50
	strb	r1, [r0, #1]
	.loc 1 76 5 is_stmt 1 view .LVU51
.LVL13:
	.loc 1 76 5 is_stmt 0 view .LVU52
	mov	r6, r2
	adds	r4, r0, #2
	add	r7, r2, r5, lsl #1
.LVL14:
.L11:
	.loc 1 76 17 is_stmt 1 discriminator 1 view .LVU53
	.loc 1 76 5 is_stmt 0 discriminator 1 view .LVU54
	cmp	r6, r7
	bne	.L12
	.loc 1 84 5 is_stmt 1 view .LVU55
	.loc 1 84 12 is_stmt 0 view .LVU56
	add	r5, r5, r5, lsl #1
	.loc 1 85 1 view .LVU57
	adds	r0, r5, #2
	pop	{r3, r4, r5, r6, r7, pc}
.LVL15:
.L12:
.LBB3:
	.loc 1 77 9 is_stmt 1 discriminator 3 view .LVU58
	.loc 1 77 37 is_stmt 0 discriminator 3 view .LVU59
	ldrh	r3, [r6]
.LVL16:
	.loc 1 77 51 discriminator 3 view .LVU60
	lsrs	r3, r3, #8
	.loc 1 77 22 discriminator 3 view .LVU61
	strb	r3, [r4]
	.loc 1 78 9 is_stmt 1 discriminator 3 view .LVU62
.LVL17:
	.loc 1 78 22 is_stmt 0 discriminator 3 view .LVU63
	ldrh	r3, [r6], #2
.LVL18:
	.loc 1 78 22 discriminator 3 view .LVU64
	strb	r3, [r4, #1]
	.loc 1 80 9 is_stmt 1 discriminator 3 view .LVU65
	.loc 1 80 23 is_stmt 0 discriminator 3 view .LVU66
	mov	r0, r4
	movs	r1, #2
	bl	sensirion_i2c_generate_crc
.LVL19:
	.loc 1 82 9 is_stmt 1 discriminator 3 view .LVU67
	.loc 1 82 9 is_stmt 0 discriminator 3 view .LVU68
	adds	r4, r4, #3
.LVL20:
	.loc 1 82 20 discriminator 3 view .LVU69
	strb	r0, [r4, #-1]
.LBE3:
	.loc 1 76 31 is_stmt 1 discriminator 3 view .LVU70
.LVL21:
	.loc 1 76 31 is_stmt 0 discriminator 3 view .LVU71
	b	.L11
.LFE3:
	.size	sensirion_i2c_fill_cmd_send_buf, .-sensirion_i2c_fill_cmd_send_buf
	.section	.text.sensirion_i2c_read_words_as_bytes,"ax",%progbits
	.align	1
	.global	sensirion_i2c_read_words_as_bytes
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_read_words_as_bytes, %function
sensirion_i2c_read_words_as_bytes:
.LVL22:
.LFB4:
	.loc 1 88 63 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 89 5 view .LVU73
	.loc 1 90 5 view .LVU74
	.loc 1 91 5 view .LVU75
	.loc 1 88 63 is_stmt 0 view .LVU76
	push	{r4, r5, r6, r7, r8, r9, lr}
.LCFI5:
	.loc 1 91 14 view .LVU77
	add	r2, r2, r2, lsl #1
.LVL23:
	.loc 1 88 63 view .LVU78
	sub	sp, sp, #68
.LCFI6:
	.loc 1 91 14 view .LVU79
	uxth	r6, r2
.LVL24:
	.loc 1 92 5 is_stmt 1 view .LVU80
	.loc 1 93 5 view .LVU81
	.loc 1 95 5 view .LVU82
	.loc 1 88 63 is_stmt 0 view .LVU83
	mov	r8, r1
	.loc 1 95 11 view .LVU84
	mov	r2, r6
	mov	r1, sp
.LVL25:
	.loc 1 95 11 view .LVU85
	bl	sensirion_i2c_hal_read
.LVL26:
	.loc 1 95 9 view .LVU86
	sxth	r5, r0
.LVL27:
	.loc 1 96 5 is_stmt 1 view .LVU87
	.loc 1 96 8 is_stmt 0 view .LVU88
	cbnz	r5, .L14
	.loc 1 100 19 view .LVU89
	mov	r7, r5
	.loc 1 100 12 view .LVU90
	mov	r4, r5
.LVL28:
.L15:
	.loc 1 100 24 is_stmt 1 discriminator 1 view .LVU91
	.loc 1 100 5 is_stmt 0 discriminator 1 view .LVU92
	cmp	r4, r6
	bcc	.L16
.LVL29:
.L14:
	.loc 1 112 1 view .LVU93
	mov	r0, r5
	add	sp, sp, #68
.LCFI7:
.LVL30:
	.loc 1 112 1 view .LVU94
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.LVL31:
.L16:
.LCFI8:
	.loc 1 102 9 is_stmt 1 view .LVU95
	.loc 1 102 15 is_stmt 0 view .LVU96
	add	r3, r4, #64
	add	r9, sp, r3
	movs	r1, #2
	ldrb	r2, [r9, #-62]	@ zero_extendqisi2
	add	r0, sp, r4
	bl	sensirion_i2c_check_crc
.LVL32:
	.loc 1 102 13 view .LVU97
	sxth	r0, r0
.LVL33:
	.loc 1 104 9 is_stmt 1 view .LVU98
	.loc 1 104 12 is_stmt 0 view .LVU99
	cbnz	r0, .L17
	.loc 1 107 9 is_stmt 1 discriminator 2 view .LVU100
	.loc 1 107 15 is_stmt 0 discriminator 2 view .LVU101
	adds	r3, r7, #1
	.loc 1 107 19 discriminator 2 view .LVU102
	ldrb	r2, [sp, r4]	@ zero_extendqisi2
	strb	r2, [r8, r7]
	.loc 1 107 15 discriminator 2 view .LVU103
	uxth	r3, r3
.LVL34:
	.loc 1 108 9 is_stmt 1 discriminator 2 view .LVU104
	.loc 1 108 19 is_stmt 0 discriminator 2 view .LVU105
	ldrb	r2, [r9, #-63]	@ zero_extendqisi2
	strb	r2, [r8, r3]
	.loc 1 108 15 discriminator 2 view .LVU106
	adds	r7, r7, #2
	.loc 1 100 36 discriminator 2 view .LVU107
	adds	r4, r4, #3
.LVL35:
	.loc 1 108 15 discriminator 2 view .LVU108
	uxth	r7, r7
.LVL36:
	.loc 1 100 34 is_stmt 1 discriminator 2 view .LVU109
	.loc 1 100 36 is_stmt 0 discriminator 2 view .LVU110
	uxth	r4, r4
.LVL37:
	.loc 1 100 36 discriminator 2 view .LVU111
	b	.L15
.L17:
	.loc 1 100 36 discriminator 2 view .LVU112
	mov	r5, r0
	b	.L14
.LFE4:
	.size	sensirion_i2c_read_words_as_bytes, .-sensirion_i2c_read_words_as_bytes
	.section	.text.sensirion_i2c_read_words,"ax",%progbits
	.align	1
	.global	sensirion_i2c_read_words
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_read_words, %function
sensirion_i2c_read_words:
.LVL38:
.LFB5:
	.loc 1 115 54 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 116 5 view .LVU114
	.loc 1 117 5 view .LVU115
	.loc 1 119 5 view .LVU116
	.loc 1 115 54 is_stmt 0 view .LVU117
	push	{r3, r4, r5, lr}
.LCFI9:
	.loc 1 115 54 view .LVU118
	mov	r4, r1
	mov	r5, r2
	.loc 1 119 11 view .LVU119
	bl	sensirion_i2c_read_words_as_bytes
.LVL39:
	.loc 1 121 5 is_stmt 1 view .LVU120
	.loc 1 121 8 is_stmt 0 view .LVU121
	cbnz	r0, .L19
	mov	r3, r0
.L20:
.LVL40:
.LBB7:
.LBB8:
	.loc 1 124 17 is_stmt 1 view .LVU122
	.loc 1 124 19 is_stmt 0 view .LVU123
	uxtb	r2, r3
	.loc 1 124 5 view .LVU124
	cmp	r2, r5
	add	r1, r3, #1
	bcc	.L21
.LVL41:
.L19:
	.loc 1 124 5 view .LVU125
.LBE8:
.LBE7:
	.loc 1 130 1 view .LVU126
	pop	{r3, r4, r5, pc}
.LVL42:
.L21:
.LBB12:
.LBB11:
.LBB9:
	.loc 1 125 9 is_stmt 1 view .LVU127
	.loc 1 126 9 view .LVU128
	.loc 1 126 23 is_stmt 0 view .LVU129
	ldrh	r3, [r4, r2, lsl #1]	@ unaligned
.LVL43:
	.loc 1 126 23 view .LVU130
	rev16	r3, r3
	strh	r3, [r4, r2, lsl #1]	@ movhi
.LBE9:
	.loc 1 124 32 is_stmt 1 view .LVU131
.LVL44:
.LBB10:
	.loc 1 126 23 is_stmt 0 view .LVU132
	mov	r3, r1
	b	.L20
.LBE10:
.LBE11:
.LBE12:
.LFE5:
	.size	sensirion_i2c_read_words, .-sensirion_i2c_read_words
	.section	.text.sensirion_i2c_write_cmd,"ax",%progbits
	.align	1
	.global	sensirion_i2c_write_cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_write_cmd, %function
sensirion_i2c_write_cmd:
.LVL45:
.LFB6:
	.loc 1 132 68 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 133 5 view .LVU134
	.loc 1 135 5 view .LVU135
	.loc 1 132 68 is_stmt 0 view .LVU136
	push	{r0, r1, r4, lr}
.LCFI10:
	.loc 1 135 5 view .LVU137
	movs	r3, #0
	mov	r2, r3
	.loc 1 132 68 view .LVU138
	mov	r4, r0
	.loc 1 135 5 view .LVU139
	add	r0, sp, #4
.LVL46:
	.loc 1 135 5 view .LVU140
	bl	sensirion_i2c_fill_cmd_send_buf
.LVL47:
	.loc 1 136 5 is_stmt 1 view .LVU141
	.loc 1 136 12 is_stmt 0 view .LVU142
	movs	r2, #2
	add	r1, sp, #4
	mov	r0, r4
	bl	sensirion_i2c_hal_write
.LVL48:
	.loc 1 137 1 view .LVU143
	sxth	r0, r0
	add	sp, sp, #8
.LCFI11:
	@ sp needed
	pop	{r4, pc}
.LFE6:
	.size	sensirion_i2c_write_cmd, .-sensirion_i2c_write_cmd
	.section	.text.sensirion_i2c_write_cmd_with_args,"ax",%progbits
	.align	1
	.global	sensirion_i2c_write_cmd_with_args
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_write_cmd_with_args, %function
sensirion_i2c_write_cmd_with_args:
.LVL49:
.LFB7:
	.loc 1 141 63 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 142 5 view .LVU145
	.loc 1 143 5 view .LVU146
	.loc 1 145 5 view .LVU147
	.loc 1 141 63 is_stmt 0 view .LVU148
	push	{r4, lr}
.LCFI12:
	sub	sp, sp, #32
.LCFI13:
	.loc 1 141 63 view .LVU149
	mov	r4, r0
	.loc 1 146 9 view .LVU150
	uxtb	r3, r3
.LVL50:
	.loc 1 146 9 view .LVU151
	mov	r0, sp
.LVL51:
	.loc 1 146 9 view .LVU152
	bl	sensirion_i2c_fill_cmd_send_buf
.LVL52:
	.loc 1 147 12 view .LVU153
	mov	r1, sp
	.loc 1 146 9 view .LVU154
	mov	r2, r0
.LVL53:
	.loc 1 147 5 is_stmt 1 view .LVU155
	.loc 1 147 12 is_stmt 0 view .LVU156
	mov	r0, r4
	bl	sensirion_i2c_hal_write
.LVL54:
	.loc 1 148 1 view .LVU157
	sxth	r0, r0
	add	sp, sp, #32
.LCFI14:
	@ sp needed
	pop	{r4, pc}
.LFE7:
	.size	sensirion_i2c_write_cmd_with_args, .-sensirion_i2c_write_cmd_with_args
	.section	.text.sensirion_i2c_delayed_read_cmd,"ax",%progbits
	.align	1
	.global	sensirion_i2c_delayed_read_cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_delayed_read_cmd, %function
sensirion_i2c_delayed_read_cmd:
.LVL55:
.LFB8:
	.loc 1 152 60 is_stmt 1 view -0
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 152 60 is_stmt 0 view .LVU159
	push	{r0, r1, r4, r5, r6, lr}
.LCFI15:
	.loc 1 152 60 view .LVU160
	mov	r6, r3
	.loc 1 156 5 view .LVU161
	movs	r3, #0
.LVL56:
	.loc 1 152 60 view .LVU162
	mov	r4, r0
	.loc 1 153 5 is_stmt 1 view .LVU163
	.loc 1 154 5 view .LVU164
	.loc 1 156 5 view .LVU165
	.loc 1 152 60 is_stmt 0 view .LVU166
	mov	r5, r2
	.loc 1 156 5 view .LVU167
	add	r0, sp, #4
.LVL57:
	.loc 1 156 5 view .LVU168
	mov	r2, r3
.LVL58:
	.loc 1 156 5 view .LVU169
	bl	sensirion_i2c_fill_cmd_send_buf
.LVL59:
	.loc 1 157 5 is_stmt 1 view .LVU170
	.loc 1 157 11 is_stmt 0 view .LVU171
	movs	r2, #2
	add	r1, sp, #4
	mov	r0, r4
	bl	sensirion_i2c_hal_write
.LVL60:
	.loc 1 157 9 view .LVU172
	sxth	r0, r0
.LVL61:
	.loc 1 158 5 is_stmt 1 view .LVU173
	.loc 1 158 8 is_stmt 0 view .LVU174
	cbnz	r0, .L25
.LVL62:
.LBB15:
.LBI15:
	.loc 1 150 9 is_stmt 1 view .LVU175
.LBB16:
	.loc 1 161 5 view .LVU176
	.loc 1 161 8 is_stmt 0 view .LVU177
	cbz	r5, .L26
	.loc 1 162 9 is_stmt 1 view .LVU178
	mov	r0, r5
.LVL63:
	.loc 1 162 9 is_stmt 0 view .LVU179
	bl	sensirion_i2c_hal_sleep_usec
.LVL64:
.L26:
	.loc 1 164 5 is_stmt 1 view .LVU180
	.loc 1 164 12 is_stmt 0 view .LVU181
	ldrh	r2, [sp, #24]
	mov	r1, r6
	mov	r0, r4
	bl	sensirion_i2c_read_words
.LVL65:
.L25:
	.loc 1 164 12 view .LVU182
.LBE16:
.LBE15:
	.loc 1 165 1 view .LVU183
	add	sp, sp, #8
.LCFI16:
	@ sp needed
	pop	{r4, r5, r6, pc}
	.loc 1 165 1 view .LVU184
.LFE8:
	.size	sensirion_i2c_delayed_read_cmd, .-sensirion_i2c_delayed_read_cmd
	.section	.text.sensirion_i2c_read_cmd,"ax",%progbits
	.align	1
	.global	sensirion_i2c_read_cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_read_cmd, %function
sensirion_i2c_read_cmd:
.LVL66:
.LFB9:
	.loc 1 168 74 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 169 5 view .LVU186
	.loc 1 168 74 is_stmt 0 view .LVU187
	push	{r0, r1, r2, lr}
.LCFI17:
	.loc 1 169 12 view .LVU188
	str	r3, [sp]
	mov	r3, r2
.LVL67:
	.loc 1 169 12 view .LVU189
	movs	r2, #0
.LVL68:
	.loc 1 169 12 view .LVU190
	bl	sensirion_i2c_delayed_read_cmd
.LVL69:
	.loc 1 171 1 view .LVU191
	add	sp, sp, #12
.LCFI18:
	@ sp needed
	ldr	pc, [sp], #4
.LFE9:
	.size	sensirion_i2c_read_cmd, .-sensirion_i2c_read_cmd
	.section	.text.sensirion_i2c_add_command_to_buffer,"ax",%progbits
	.align	1
	.global	sensirion_i2c_add_command_to_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_add_command_to_buffer, %function
sensirion_i2c_add_command_to_buffer:
.LVL70:
.LFB10:
	.loc 1 174 64 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 175 5 view .LVU193
	.loc 1 175 53 is_stmt 0 view .LVU194
	lsrs	r3, r2, #8
	.loc 1 175 24 view .LVU195
	strb	r3, [r0, r1]
	.loc 1 176 5 is_stmt 1 view .LVU196
.LVL71:
	.loc 1 175 18 is_stmt 0 view .LVU197
	adds	r3, r1, #1
	.loc 1 176 18 view .LVU198
	uxth	r3, r3
	adds	r1, r1, #2
.LVL72:
	.loc 1 176 24 view .LVU199
	strb	r2, [r0, r3]
	.loc 1 177 5 is_stmt 1 view .LVU200
	.loc 1 178 1 is_stmt 0 view .LVU201
	uxth	r0, r1
.LVL73:
	.loc 1 178 1 view .LVU202
	bx	lr
.LFE10:
	.size	sensirion_i2c_add_command_to_buffer, .-sensirion_i2c_add_command_to_buffer
	.section	.text.sensirion_i2c_add_uint32_t_to_buffer,"ax",%progbits
	.align	1
	.global	sensirion_i2c_add_uint32_t_to_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_add_uint32_t_to_buffer, %function
sensirion_i2c_add_uint32_t_to_buffer:
.LVL74:
.LFB11:
	.loc 1 181 62 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 182 5 view .LVU204
	.loc 1 181 62 is_stmt 0 view .LVU205
	push	{r3, r4, r5, r6, r7, lr}
.LCFI19:
	.loc 1 182 54 view .LVU206
	lsrs	r3, r2, #24
	.loc 1 182 24 view .LVU207
	strb	r3, [r0, r1]
	.loc 1 183 5 is_stmt 1 view .LVU208
.LVL75:
	.loc 1 182 18 is_stmt 0 view .LVU209
	adds	r3, r1, #1
	.loc 1 183 18 view .LVU210
	uxth	r3, r3
	adds	r7, r1, #2
	.loc 1 181 62 view .LVU211
	mov	r6, r2
	.loc 1 185 16 view .LVU212
	uxth	r7, r7
	.loc 1 183 54 view .LVU213
	lsrs	r2, r2, #16
.LVL76:
	.loc 1 181 62 view .LVU214
	mov	r5, r0
	.loc 1 183 24 view .LVU215
	strb	r2, [r0, r3]
	.loc 1 184 5 is_stmt 1 view .LVU216
	.loc 1 185 16 is_stmt 0 view .LVU217
	subs	r0, r7, #2
.LVL77:
	.loc 1 181 62 view .LVU218
	mov	r4, r1
	.loc 1 184 22 view .LVU219
	add	r0, r0, r5
	movs	r1, #2
.LVL78:
	.loc 1 184 22 view .LVU220
	bl	sensirion_i2c_generate_crc
.LVL79:
	.loc 1 186 11 view .LVU221
	adds	r3, r4, #3
	.loc 1 187 18 view .LVU222
	uxth	r3, r3
	.loc 1 187 54 view .LVU223
	lsrs	r2, r6, #8
	.loc 1 184 20 view .LVU224
	strb	r0, [r5, r7]
	.loc 1 186 5 is_stmt 1 view .LVU225
.LVL80:
	.loc 1 187 5 view .LVU226
	.loc 1 187 24 is_stmt 0 view .LVU227
	strb	r2, [r5, r3]
	.loc 1 188 5 is_stmt 1 view .LVU228
.LVL81:
	.loc 1 187 18 is_stmt 0 view .LVU229
	adds	r3, r4, #4
	.loc 1 188 18 view .LVU230
	uxth	r3, r3
	.loc 1 189 22 view .LVU231
	movs	r1, #2
	.loc 1 188 24 view .LVU232
	strb	r6, [r5, r3]
	.loc 1 189 5 is_stmt 1 view .LVU233
	.loc 1 188 18 is_stmt 0 view .LVU234
	adds	r6, r4, #5
.LVL82:
	.loc 1 190 16 view .LVU235
	uxth	r6, r6
	subs	r0, r6, #2
	.loc 1 189 22 view .LVU236
	add	r0, r0, r5
	bl	sensirion_i2c_generate_crc
.LVL83:
	.loc 1 189 20 view .LVU237
	strb	r0, [r5, r6]
	.loc 1 191 5 is_stmt 1 view .LVU238
.LVL84:
	.loc 1 193 5 view .LVU239
	.loc 1 191 11 is_stmt 0 view .LVU240
	adds	r0, r4, #6
	.loc 1 194 1 view .LVU241
	uxth	r0, r0
	pop	{r3, r4, r5, r6, r7, pc}
	.loc 1 194 1 view .LVU242
.LFE11:
	.size	sensirion_i2c_add_uint32_t_to_buffer, .-sensirion_i2c_add_uint32_t_to_buffer
	.section	.text.sensirion_i2c_add_int32_t_to_buffer,"ax",%progbits
	.align	1
	.global	sensirion_i2c_add_int32_t_to_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_add_int32_t_to_buffer, %function
sensirion_i2c_add_int32_t_to_buffer:
.LVL85:
.LFB12:
	.loc 1 197 60 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 198 5 view .LVU244
	.loc 1 198 12 is_stmt 0 view .LVU245
	b	sensirion_i2c_add_uint32_t_to_buffer
.LVL86:
	.loc 1 198 12 view .LVU246
.LFE12:
	.size	sensirion_i2c_add_int32_t_to_buffer, .-sensirion_i2c_add_int32_t_to_buffer
	.section	.text.sensirion_i2c_add_uint16_t_to_buffer,"ax",%progbits
	.align	1
	.global	sensirion_i2c_add_uint16_t_to_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_add_uint16_t_to_buffer, %function
sensirion_i2c_add_uint16_t_to_buffer:
.LVL87:
.LFB13:
	.loc 1 202 62 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 203 5 view .LVU248
	.loc 1 203 50 is_stmt 0 view .LVU249
	lsrs	r3, r2, #8
	.loc 1 202 62 view .LVU250
	push	{r4, r5, r6, lr}
.LCFI20:
	.loc 1 203 24 view .LVU251
	strb	r3, [r0, r1]
	.loc 1 204 5 is_stmt 1 view .LVU252
.LVL88:
	.loc 1 203 18 is_stmt 0 view .LVU253
	adds	r3, r1, #1
	.loc 1 204 18 view .LVU254
	uxth	r3, r3
	adds	r6, r1, #2
	.loc 1 206 16 view .LVU255
	uxth	r6, r6
	.loc 1 202 62 view .LVU256
	mov	r5, r0
	.loc 1 204 24 view .LVU257
	strb	r2, [r0, r3]
	.loc 1 205 5 is_stmt 1 view .LVU258
	.loc 1 206 16 is_stmt 0 view .LVU259
	subs	r0, r6, #2
.LVL89:
	.loc 1 202 62 view .LVU260
	mov	r4, r1
	.loc 1 205 22 view .LVU261
	add	r0, r0, r5
	movs	r1, #2
.LVL90:
	.loc 1 205 22 view .LVU262
	bl	sensirion_i2c_generate_crc
.LVL91:
	.loc 1 205 20 view .LVU263
	strb	r0, [r5, r6]
	.loc 1 207 5 is_stmt 1 view .LVU264
.LVL92:
	.loc 1 209 5 view .LVU265
	.loc 1 207 11 is_stmt 0 view .LVU266
	adds	r0, r4, #3
	.loc 1 210 1 view .LVU267
	uxth	r0, r0
	pop	{r4, r5, r6, pc}
	.loc 1 210 1 view .LVU268
.LFE13:
	.size	sensirion_i2c_add_uint16_t_to_buffer, .-sensirion_i2c_add_uint16_t_to_buffer
	.section	.text.sensirion_i2c_add_int16_t_to_buffer,"ax",%progbits
	.align	1
	.global	sensirion_i2c_add_int16_t_to_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_add_int16_t_to_buffer, %function
sensirion_i2c_add_int16_t_to_buffer:
.LVL93:
.LFB14:
	.loc 1 213 60 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 214 5 view .LVU270
	.loc 1 214 12 is_stmt 0 view .LVU271
	uxth	r2, r2
	.loc 1 214 12 view .LVU272
	b	sensirion_i2c_add_uint16_t_to_buffer
.LVL94:
	.loc 1 214 12 view .LVU273
.LFE14:
	.size	sensirion_i2c_add_int16_t_to_buffer, .-sensirion_i2c_add_int16_t_to_buffer
	.section	.text.sensirion_i2c_add_float_to_buffer,"ax",%progbits
	.align	1
	.global	sensirion_i2c_add_float_to_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_add_float_to_buffer, %function
sensirion_i2c_add_float_to_buffer:
.LVL95:
.LFB15:
	.loc 1 218 56 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 218 56 is_stmt 0 view .LVU275
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
.LCFI21:
	.loc 1 219 5 is_stmt 1 view .LVU276
	.loc 1 224 5 view .LVU277
	.loc 1 218 56 is_stmt 0 view .LVU278
	vstr.32	s0, [sp, #4]
	.loc 1 224 24 view .LVU279
	ldr	r6, [sp, #4]
.LVL96:
	.loc 1 226 5 is_stmt 1 view .LVU280
	.loc 1 226 69 is_stmt 0 view .LVU281
	lsrs	r3, r6, #24
	.loc 1 226 24 view .LVU282
	strb	r3, [r0, r1]
	.loc 1 227 5 is_stmt 1 view .LVU283
.LVL97:
	.loc 1 226 18 is_stmt 0 view .LVU284
	adds	r3, r1, #1
	.loc 1 227 18 view .LVU285
	uxth	r3, r3
	adds	r7, r1, #2
	.loc 1 227 69 view .LVU286
	lsrs	r2, r6, #16
	.loc 1 229 16 view .LVU287
	uxth	r7, r7
	.loc 1 218 56 view .LVU288
	mov	r5, r0
	.loc 1 227 24 view .LVU289
	strb	r2, [r0, r3]
	.loc 1 228 5 is_stmt 1 view .LVU290
	.loc 1 229 16 is_stmt 0 view .LVU291
	subs	r0, r7, #2
.LVL98:
	.loc 1 218 56 view .LVU292
	mov	r4, r1
	.loc 1 228 22 view .LVU293
	add	r0, r0, r5
	movs	r1, #2
.LVL99:
	.loc 1 228 22 view .LVU294
	bl	sensirion_i2c_generate_crc
.LVL100:
	.loc 1 230 11 view .LVU295
	adds	r3, r4, #3
	.loc 1 231 18 view .LVU296
	uxth	r3, r3
	.loc 1 231 69 view .LVU297
	lsrs	r2, r6, #8
	.loc 1 228 20 view .LVU298
	strb	r0, [r5, r7]
	.loc 1 230 5 is_stmt 1 view .LVU299
.LVL101:
	.loc 1 231 5 view .LVU300
	.loc 1 231 24 is_stmt 0 view .LVU301
	strb	r2, [r5, r3]
	.loc 1 232 5 is_stmt 1 view .LVU302
.LVL102:
	.loc 1 231 18 is_stmt 0 view .LVU303
	adds	r3, r4, #4
	.loc 1 232 18 view .LVU304
	uxth	r3, r3
	.loc 1 233 22 view .LVU305
	movs	r1, #2
	.loc 1 232 24 view .LVU306
	strb	r6, [r5, r3]
	.loc 1 233 5 is_stmt 1 view .LVU307
	.loc 1 232 18 is_stmt 0 view .LVU308
	adds	r6, r4, #5
	.loc 1 234 16 view .LVU309
	uxth	r6, r6
	subs	r0, r6, #2
	.loc 1 233 22 view .LVU310
	add	r0, r0, r5
	bl	sensirion_i2c_generate_crc
.LVL103:
	.loc 1 233 20 view .LVU311
	strb	r0, [r5, r6]
	.loc 1 235 5 is_stmt 1 view .LVU312
.LVL104:
	.loc 1 237 5 view .LVU313
	.loc 1 235 11 is_stmt 0 view .LVU314
	adds	r0, r4, #6
	.loc 1 238 1 view .LVU315
	uxth	r0, r0
	add	sp, sp, #12
.LCFI22:
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.loc 1 238 1 view .LVU316
.LFE15:
	.size	sensirion_i2c_add_float_to_buffer, .-sensirion_i2c_add_float_to_buffer
	.section	.text.sensirion_i2c_add_bytes_to_buffer,"ax",%progbits
	.align	1
	.global	sensirion_i2c_add_bytes_to_buffer
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_add_bytes_to_buffer, %function
sensirion_i2c_add_bytes_to_buffer:
.LVL105:
.LFB16:
	.loc 1 242 66 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 243 5 view .LVU318
	.loc 1 245 5 view .LVU319
	.loc 1 242 66 is_stmt 0 view .LVU320
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
.LCFI23:
	.loc 1 245 8 view .LVU321
	ands	r5, r3, #1
	.loc 1 242 66 view .LVU322
	mov	r7, r0
	mov	r4, r1
	mov	r8, r2
	mov	r9, r3
	.loc 1 245 8 view .LVU323
	beq	.L39
	.loc 1 246 16 view .LVU324
	movs	r4, #4
	b	.L38
.LVL106:
.L40:
	.loc 1 250 9 is_stmt 1 discriminator 3 view .LVU325
	.loc 1 250 32 is_stmt 0 discriminator 3 view .LVU326
	ldrb	r3, [r8, r5]	@ zero_extendqisi2
	.loc 1 250 26 discriminator 3 view .LVU327
	strb	r3, [r7, r4]
	.loc 1 251 9 is_stmt 1 discriminator 3 view .LVU328
.LVL107:
	.loc 1 250 22 is_stmt 0 discriminator 3 view .LVU329
	adds	r1, r4, #1
	.loc 1 251 32 discriminator 3 view .LVU330
	add	r3, r8, r5
	.loc 1 251 22 discriminator 3 view .LVU331
	adds	r6, r4, #2
	uxth	r1, r1
	.loc 1 254 20 discriminator 3 view .LVU332
	uxth	r6, r6
	.loc 1 251 32 discriminator 3 view .LVU333
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 1 251 26 discriminator 3 view .LVU334
	strb	r3, [r7, r1]
	.loc 1 253 9 is_stmt 1 discriminator 3 view .LVU335
	.loc 1 254 20 is_stmt 0 discriminator 3 view .LVU336
	subs	r0, r6, #2
	.loc 1 253 26 discriminator 3 view .LVU337
	movs	r1, #2
	add	r0, r0, r7
	bl	sensirion_i2c_generate_crc
.LVL108:
	.loc 1 255 15 discriminator 3 view .LVU338
	adds	r4, r4, #3
.LVL109:
	.loc 1 249 36 discriminator 3 view .LVU339
	adds	r5, r5, #2
.LVL110:
	.loc 1 253 24 discriminator 3 view .LVU340
	strb	r0, [r7, r6]
	.loc 1 255 9 is_stmt 1 discriminator 3 view .LVU341
	.loc 1 255 15 is_stmt 0 discriminator 3 view .LVU342
	uxth	r4, r4
.LVL111:
	.loc 1 249 34 is_stmt 1 discriminator 3 view .LVU343
	.loc 1 249 36 is_stmt 0 discriminator 3 view .LVU344
	uxth	r5, r5
.LVL112:
.L39:
	.loc 1 249 17 is_stmt 1 discriminator 1 view .LVU345
	.loc 1 249 5 is_stmt 0 discriminator 1 view .LVU346
	cmp	r5, r9
	bcc	.L40
.LVL113:
.L38:
	.loc 1 259 1 view .LVU347
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.loc 1 259 1 view .LVU348
.LFE16:
	.size	sensirion_i2c_add_bytes_to_buffer, .-sensirion_i2c_add_bytes_to_buffer
	.section	.text.sensirion_i2c_write_data,"ax",%progbits
	.align	1
	.global	sensirion_i2c_write_data
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_write_data, %function
sensirion_i2c_write_data:
.LVL114:
.LFB17:
	.loc 1 262 56 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 263 5 view .LVU350
	.loc 1 262 56 is_stmt 0 view .LVU351
	push	{r3, lr}
.LCFI24:
	.loc 1 263 12 view .LVU352
	bl	sensirion_i2c_hal_write
.LVL115:
	.loc 1 264 1 view .LVU353
	sxth	r0, r0
	pop	{r3, pc}
.LFE17:
	.size	sensirion_i2c_write_data, .-sensirion_i2c_write_data
	.section	.text.sensirion_i2c_read_data_inplace,"ax",%progbits
	.align	1
	.global	sensirion_i2c_read_data_inplace
	.syntax unified
	.thumb
	.thumb_func
	.type	sensirion_i2c_read_data_inplace, %function
sensirion_i2c_read_data_inplace:
.LVL116:
.LFB18:
	.loc 1 267 72 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 268 5 view .LVU355
	.loc 1 269 5 view .LVU356
	.loc 1 270 5 view .LVU357
	.loc 1 273 5 view .LVU358
	.loc 1 267 72 is_stmt 0 view .LVU359
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
.LCFI25:
	.loc 1 273 8 view .LVU360
	ands	r7, r2, #1
	.loc 1 267 72 view .LVU361
	mov	r8, r1
	.loc 1 273 8 view .LVU362
	bne	.L47
	.loc 1 270 14 view .LVU363
	lsrs	r2, r2, #1
.LVL117:
	.loc 1 270 14 view .LVU364
	add	r2, r2, r2, lsl #1
	uxth	r4, r2
	.loc 1 277 5 is_stmt 1 view .LVU365
	.loc 1 277 13 is_stmt 0 view .LVU366
	mov	r2, r4
	bl	sensirion_i2c_hal_read
.LVL118:
	.loc 1 277 11 view .LVU367
	sxth	r5, r0
.LVL119:
	.loc 1 278 5 is_stmt 1 view .LVU368
	.loc 1 278 8 is_stmt 0 view .LVU369
	cbnz	r5, .L44
	.loc 1 282 12 view .LVU370
	mov	r6, r5
.LVL120:
.L45:
	.loc 1 282 24 is_stmt 1 discriminator 1 view .LVU371
	.loc 1 282 5 is_stmt 0 discriminator 1 view .LVU372
	cmp	r6, r4
	bcc	.L46
.LVL121:
.L44:
	.loc 1 294 1 view .LVU373
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL122:
.L46:
	.loc 1 284 9 is_stmt 1 view .LVU374
	.loc 1 284 41 is_stmt 0 view .LVU375
	add	r9, r8, r6
	.loc 1 284 17 view .LVU376
	movs	r1, #2
	ldrb	r2, [r9, #2]	@ zero_extendqisi2
	mov	r0, r9
	bl	sensirion_i2c_check_crc
.LVL123:
	.loc 1 284 15 view .LVU377
	sxth	r0, r0
.LVL124:
	.loc 1 286 9 is_stmt 1 view .LVU378
	.loc 1 286 12 is_stmt 0 view .LVU379
	cbnz	r0, .L48
	.loc 1 289 9 is_stmt 1 discriminator 2 view .LVU380
	.loc 1 289 29 is_stmt 0 discriminator 2 view .LVU381
	ldrb	r2, [r8, r6]	@ zero_extendqisi2
	.loc 1 289 21 discriminator 2 view .LVU382
	strb	r2, [r8, r7]
	.loc 1 289 17 discriminator 2 view .LVU383
	adds	r3, r7, #1
	uxth	r3, r3
.LVL125:
	.loc 1 290 9 is_stmt 1 discriminator 2 view .LVU384
	.loc 1 290 29 is_stmt 0 discriminator 2 view .LVU385
	ldrb	r2, [r9, #1]	@ zero_extendqisi2
	.loc 1 290 21 discriminator 2 view .LVU386
	strb	r2, [r8, r3]
	.loc 1 290 17 discriminator 2 view .LVU387
	adds	r7, r7, #2
	.loc 1 282 36 discriminator 2 view .LVU388
	adds	r6, r6, #3
.LVL126:
	.loc 1 290 17 discriminator 2 view .LVU389
	uxth	r7, r7
.LVL127:
	.loc 1 282 34 is_stmt 1 discriminator 2 view .LVU390
	.loc 1 282 36 is_stmt 0 discriminator 2 view .LVU391
	uxth	r6, r6
.LVL128:
	.loc 1 282 36 discriminator 2 view .LVU392
	b	.L45
.LVL129:
.L47:
	.loc 1 274 16 view .LVU393
	movs	r5, #4
	b	.L44
.LVL130:
.L48:
	.loc 1 274 16 view .LVU394
	mov	r5, r0
	b	.L44
.LFE18:
	.size	sensirion_i2c_read_data_inplace, .-sensirion_i2c_read_data_inplace
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI1-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI4-.LFB3
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x6
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI5-.LFB4
	.byte	0xe
	.uleb128 0x1c
	.byte	0x84
	.uleb128 0x7
	.byte	0x85
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.byte	0x87
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xa
	.byte	0xe
	.uleb128 0x1c
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xb
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI9-.LFB5
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x4
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI10-.LFB6
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI12-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI15-.LFB8
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI17-.LFB9
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI19-.LFB11
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x6
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI20-.LFB13
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI21-.LFB15
	.byte	0xe
	.uleb128 0x20
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x14
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI23-.LFB16
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x7
	.byte	0x85
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.byte	0x87
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI24-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI25-.LFB18
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x7
	.byte	0x85
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.byte	0x87
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE36:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdint.h"
	.file 3 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_i2c_hal.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd56
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF647
	.byte	0xc
	.4byte	.LASF648
	.4byte	.LASF649
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF584
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF585
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF586
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF587
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF588
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF589
	.uleb128 0x4
	.4byte	.LASF591
	.byte	0x2
	.byte	0x29
	.byte	0x1c
	.4byte	0x66
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF590
	.uleb128 0x4
	.4byte	.LASF592
	.byte	0x2
	.byte	0x2a
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x5
	.4byte	0x6d
	.uleb128 0x4
	.4byte	.LASF593
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.4byte	0x8a
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF594
	.uleb128 0x4
	.4byte	.LASF595
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x91
	.uleb128 0x4
	.4byte	.LASF596
	.byte	0x2
	.byte	0x36
	.byte	0x1c
	.4byte	0x29
	.uleb128 0x4
	.4byte	.LASF597
	.byte	0x2
	.byte	0x37
	.byte	0x1c
	.4byte	0x3e
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF598
	.uleb128 0x6
	.4byte	.LASF604
	.byte	0x1
	.2byte	0x10a
	.byte	0x9
	.4byte	0x7e
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19b
	.uleb128 0x7
	.4byte	.LASF599
	.byte	0x1
	.2byte	0x10a
	.byte	0x31
	.4byte	0x6d
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x7
	.4byte	.LASF600
	.byte	0x1
	.2byte	0x10a
	.byte	0x43
	.4byte	0x19b
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x10b
	.byte	0x32
	.4byte	0x91
	.4byte	.LLST75
	.4byte	.LVUS75
	.uleb128 0x8
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x10c
	.byte	0xd
	.4byte	0x7e
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x9
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10d
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x9
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x10d
	.byte	0x11
	.4byte	0x91
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x8
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x10e
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0xa
	.4byte	.LVL118
	.4byte	0xd35
	.4byte	0x185
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL123
	.4byte	0xa6f
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6d
	.uleb128 0x5
	.4byte	0x19b
	.uleb128 0x6
	.4byte	.LASF605
	.byte	0x1
	.2byte	0x105
	.byte	0x9
	.4byte	0x7e
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x212
	.uleb128 0x7
	.4byte	.LASF599
	.byte	0x1
	.2byte	0x105
	.byte	0x2a
	.4byte	0x6d
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x7
	.4byte	.LASF606
	.byte	0x1
	.2byte	0x105
	.byte	0x42
	.4byte	0x212
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x7
	.4byte	.LASF607
	.byte	0x1
	.2byte	0x106
	.byte	0x2b
	.4byte	0x91
	.4byte	.LLST72
	.4byte	.LVUS72
	.uleb128 0xc
	.4byte	.LVL115
	.4byte	0xd41
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x79
	.uleb128 0xe
	.4byte	.LASF608
	.byte	0x1
	.byte	0xf0
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2af
	.uleb128 0xf
	.4byte	.LASF600
	.byte	0x1
	.byte	0xf0
	.byte	0x35
	.4byte	0x19b
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0xf
	.4byte	.LASF609
	.byte	0x1
	.byte	0xf0
	.byte	0x46
	.4byte	0x91
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x1
	.byte	0xf1
	.byte	0x35
	.4byte	0x19b
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0xf
	.4byte	.LASF607
	.byte	0x1
	.byte	0xf2
	.byte	0x35
	.4byte	0x91
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.byte	0xf3
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST69
	.4byte	.LVUS69
	.uleb128 0xc
	.4byte	.LVL108
	.4byte	0xad7
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x77
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF610
	.byte	0x1
	.byte	0xd9
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x367
	.uleb128 0xf
	.4byte	.LASF600
	.byte	0x1
	.byte	0xd9
	.byte	0x35
	.4byte	0x19b
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0xf
	.4byte	.LASF609
	.byte	0x1
	.byte	0xd9
	.byte	0x46
	.4byte	0x91
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x11
	.4byte	.LASF606
	.byte	0x1
	.byte	0xda
	.byte	0x32
	.4byte	0x367
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x12
	.byte	0x4
	.byte	0x1
	.byte	0xdb
	.byte	0x5
	.4byte	0x322
	.uleb128 0x13
	.4byte	.LASF611
	.byte	0x1
	.byte	0xdc
	.byte	0x12
	.4byte	0xae
	.uleb128 0x13
	.4byte	.LASF612
	.byte	0x1
	.byte	0xdd
	.byte	0xf
	.4byte	0x367
	.byte	0
	.uleb128 0x14
	.4byte	.LASF624
	.byte	0x1
	.byte	0xde
	.byte	0x7
	.4byte	0x300
	.uleb128 0xa
	.4byte	.LVL100
	.4byte	0xad7
	.4byte	0x34c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LVL103
	.4byte	0xad7
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF613
	.uleb128 0xe
	.4byte	.LASF614
	.byte	0x1
	.byte	0xd4
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3dd
	.uleb128 0xf
	.4byte	.LASF600
	.byte	0x1
	.byte	0xd4
	.byte	0x37
	.4byte	0x19b
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0xf
	.4byte	.LASF609
	.byte	0x1
	.byte	0xd4
	.byte	0x48
	.4byte	0x91
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x1
	.byte	0xd5
	.byte	0x36
	.4byte	0x7e
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x15
	.4byte	.LVL94
	.4byte	0x3dd
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF615
	.byte	0x1
	.byte	0xc9
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44e
	.uleb128 0xf
	.4byte	.LASF600
	.byte	0x1
	.byte	0xc9
	.byte	0x38
	.4byte	0x19b
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0xf
	.4byte	.LASF609
	.byte	0x1
	.byte	0xc9
	.byte	0x49
	.4byte	0x91
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x1
	.byte	0xca
	.byte	0x38
	.4byte	0x91
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0xc
	.4byte	.LVL91
	.4byte	0xad7
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF616
	.byte	0x1
	.byte	0xc4
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bd
	.uleb128 0xf
	.4byte	.LASF600
	.byte	0x1
	.byte	0xc4
	.byte	0x37
	.4byte	0x19b
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0xf
	.4byte	.LASF609
	.byte	0x1
	.byte	0xc4
	.byte	0x48
	.4byte	0x91
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x1
	.byte	0xc5
	.byte	0x36
	.4byte	0xa2
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x15
	.4byte	.LVL86
	.4byte	0x4bd
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF617
	.byte	0x1
	.byte	0xb4
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54c
	.uleb128 0xf
	.4byte	.LASF600
	.byte	0x1
	.byte	0xb4
	.byte	0x38
	.4byte	0x19b
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0xf
	.4byte	.LASF609
	.byte	0x1
	.byte	0xb4
	.byte	0x49
	.4byte	0x91
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x1
	.byte	0xb5
	.byte	0x38
	.4byte	0xae
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0xa
	.4byte	.LVL79
	.4byte	0xad7
	.4byte	0x531
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xc
	.4byte	.LVL83
	.4byte	0xad7
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF618
	.byte	0x1
	.byte	0xad
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59d
	.uleb128 0xf
	.4byte	.LASF600
	.byte	0x1
	.byte	0xad
	.byte	0x37
	.4byte	0x19b
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0xf
	.4byte	.LASF609
	.byte	0x1
	.byte	0xad
	.byte	0x48
	.4byte	0x91
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x11
	.4byte	.LASF619
	.byte	0x1
	.byte	0xae
	.byte	0x37
	.4byte	0x91
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xe
	.4byte	.LASF620
	.byte	0x1
	.byte	0xa7
	.byte	0x9
	.4byte	0x7e
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61e
	.uleb128 0xf
	.4byte	.LASF599
	.byte	0x1
	.byte	0xa7
	.byte	0x28
	.4byte	0x6d
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x16
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0xa7
	.byte	0x3a
	.4byte	0x91
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0xf
	.4byte	.LASF621
	.byte	0x1
	.byte	0xa8
	.byte	0x2a
	.4byte	0x61e
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0xf
	.4byte	.LASF622
	.byte	0x1
	.byte	0xa8
	.byte	0x3f
	.4byte	0x91
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0xc
	.4byte	.LVL69
	.4byte	0x624
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x91
	.uleb128 0x17
	.4byte	.LASF628
	.byte	0x1
	.byte	0x96
	.byte	0x9
	.4byte	0x7e
	.byte	0x1
	.4byte	0x68a
	.uleb128 0x18
	.4byte	.LASF599
	.byte	0x1
	.byte	0x96
	.byte	0x30
	.4byte	0x6d
	.uleb128 0x19
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0x96
	.byte	0x42
	.4byte	0x91
	.uleb128 0x18
	.4byte	.LASF623
	.byte	0x1
	.byte	0x97
	.byte	0x31
	.4byte	0xae
	.uleb128 0x18
	.4byte	.LASF621
	.byte	0x1
	.byte	0x97
	.byte	0x45
	.4byte	0x61e
	.uleb128 0x18
	.4byte	.LASF622
	.byte	0x1
	.byte	0x98
	.byte	0x31
	.4byte	0x91
	.uleb128 0x1a
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x99
	.byte	0xd
	.4byte	0x7e
	.uleb128 0x1a
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x9a
	.byte	0xd
	.4byte	0x68a
	.byte	0
	.uleb128 0x1b
	.4byte	0x6d
	.4byte	0x69a
	.uleb128 0x1c
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	.LASF625
	.byte	0x1
	.byte	0x8b
	.byte	0x9
	.4byte	0x7e
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x760
	.uleb128 0xf
	.4byte	.LASF599
	.byte	0x1
	.byte	0x8b
	.byte	0x33
	.4byte	0x6d
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0xf
	.4byte	.LASF619
	.byte	0x1
	.byte	0x8b
	.byte	0x45
	.4byte	0x91
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0xf
	.4byte	.LASF621
	.byte	0x1
	.byte	0x8c
	.byte	0x3b
	.4byte	0x760
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0xf
	.4byte	.LASF622
	.byte	0x1
	.byte	0x8d
	.byte	0x34
	.4byte	0x91
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x1d
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x8e
	.byte	0xd
	.4byte	0x766
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.4byte	.LASF626
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0xa
	.4byte	.LVL52
	.4byte	0x967
	.4byte	0x749
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xc
	.4byte	.LVL54
	.4byte	0xd41
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9d
	.uleb128 0x1b
	.4byte	0x6d
	.4byte	0x776
	.uleb128 0x1c
	.4byte	0x3e
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF627
	.byte	0x1
	.byte	0x84
	.byte	0x9
	.4byte	0x7e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x801
	.uleb128 0xf
	.4byte	.LASF599
	.byte	0x1
	.byte	0x84
	.byte	0x29
	.4byte	0x6d
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0xf
	.4byte	.LASF619
	.byte	0x1
	.byte	0x84
	.byte	0x3b
	.4byte	0x91
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x1d
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x85
	.byte	0xd
	.4byte	0x68a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LVL47
	.4byte	0x967
	.4byte	0x7e5
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.4byte	.LVL48
	.4byte	0xd41
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF629
	.byte	0x1
	.byte	0x72
	.byte	0x9
	.4byte	0x7e
	.byte	0x1
	.4byte	0x85b
	.uleb128 0x18
	.4byte	.LASF599
	.byte	0x1
	.byte	0x72
	.byte	0x2a
	.4byte	0x6d
	.uleb128 0x18
	.4byte	.LASF621
	.byte	0x1
	.byte	0x72
	.byte	0x3d
	.4byte	0x61e
	.uleb128 0x18
	.4byte	.LASF622
	.byte	0x1
	.byte	0x73
	.byte	0x2b
	.4byte	0x91
	.uleb128 0x1a
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0x7e
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.4byte	0x6d
	.uleb128 0x1f
	.uleb128 0x14
	.4byte	.LASF630
	.byte	0x1
	.byte	0x7d
	.byte	0x18
	.4byte	0x212
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF631
	.byte	0x1
	.byte	0x57
	.byte	0x9
	.4byte	0x7e
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x957
	.uleb128 0xf
	.4byte	.LASF599
	.byte	0x1
	.byte	0x57
	.byte	0x33
	.4byte	0x6d
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x1
	.byte	0x57
	.byte	0x45
	.4byte	0x19b
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xf
	.4byte	.LASF622
	.byte	0x1
	.byte	0x58
	.byte	0x34
	.4byte	0x91
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x10
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x59
	.byte	0xd
	.4byte	0x7e
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x10
	.ascii	"j\000"
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	0x91
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x1e
	.4byte	.LASF603
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x20
	.4byte	.LASF632
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0x957
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.4byte	.LASF633
	.byte	0x1
	.byte	0x5d
	.byte	0x14
	.4byte	0x1a1
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xa
	.4byte	.LVL26
	.4byte	0xd35
	.4byte	0x93b
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL32
	.4byte	0xa6f
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.byte	0x91
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x60
	.byte	0x1c
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0x91
	.4byte	0x967
	.uleb128 0x1c
	.4byte	0x3e
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF634
	.byte	0x1
	.byte	0x43
	.byte	0xa
	.4byte	0x91
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2b
	.uleb128 0x16
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x43
	.byte	0x33
	.4byte	0x19b
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x16
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0x43
	.byte	0x41
	.4byte	0x91
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xf
	.4byte	.LASF635
	.byte	0x1
	.byte	0x44
	.byte	0x3a
	.4byte	0x760
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xf
	.4byte	.LASF636
	.byte	0x1
	.byte	0x45
	.byte	0x32
	.4byte	0x6d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.byte	0x46
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x10
	.ascii	"idx\000"
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x21
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x10
	.ascii	"crc\000"
	.byte	0x1
	.byte	0x50
	.byte	0x11
	.4byte	0x6d
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xc
	.4byte	.LVL19
	.4byte	0xad7
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF637
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0x7e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6f
	.uleb128 0x20
	.4byte	.LASF606
	.byte	0x1
	.byte	0x3f
	.byte	0x13
	.4byte	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xc
	.4byte	.LVL9
	.4byte	0xd41
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF638
	.byte	0x1
	.byte	0x37
	.byte	0x8
	.4byte	0x5a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xad7
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x1
	.byte	0x37
	.byte	0x2f
	.4byte	0x212
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xf
	.4byte	.LASF639
	.byte	0x1
	.byte	0x37
	.byte	0x3e
	.4byte	0x91
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xf
	.4byte	.LASF640
	.byte	0x1
	.byte	0x38
	.byte	0x28
	.4byte	0x6d
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xc
	.4byte	.LVL8
	.4byte	0xad7
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF641
	.byte	0x1
	.byte	0x25
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb56
	.uleb128 0xf
	.4byte	.LASF606
	.byte	0x1
	.byte	0x25
	.byte	0x33
	.4byte	0x212
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xf
	.4byte	.LASF639
	.byte	0x1
	.byte	0x25
	.byte	0x42
	.4byte	0x91
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1e
	.4byte	.LASF642
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.4byte	0x91
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x10
	.ascii	"crc\000"
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1e
	.4byte	.LASF643
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x22
	.4byte	0x801
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc08
	.uleb128 0x23
	.4byte	0x812
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x23
	.4byte	0x81e
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x23
	.4byte	0x82a
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x24
	.4byte	0x836
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x25
	.4byte	0x842
	.uleb128 0x26
	.4byte	0x801
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x72
	.byte	0x9
	.4byte	0xbf1
	.uleb128 0x27
	.4byte	0x812
	.uleb128 0x27
	.4byte	0x82a
	.uleb128 0x27
	.4byte	0x81e
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x25
	.4byte	0x836
	.uleb128 0x24
	.4byte	0x842
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x29
	.4byte	0x84c
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.4byte	0x84d
	.4byte	.LLST28
	.4byte	.LVUS28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL39
	.4byte	0x85b
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0x624
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd35
	.uleb128 0x23
	.4byte	0x635
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x23
	.4byte	0x641
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x23
	.4byte	0x64d
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x23
	.4byte	0x659
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x2a
	.4byte	0x665
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.4byte	0x671
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x2b
	.4byte	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.4byte	0x624
	.4byte	.LBI15
	.byte	.LVU175
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.byte	0x96
	.byte	0x9
	.4byte	0xcfb
	.uleb128 0x27
	.4byte	0x641
	.uleb128 0x23
	.4byte	0x665
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x23
	.4byte	0x659
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x23
	.4byte	0x64d
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x23
	.4byte	0x635
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x25
	.4byte	0x671
	.uleb128 0x25
	.4byte	0x67d
	.uleb128 0xa
	.4byte	.LVL64
	.4byte	0xd4d
	.4byte	0xcdc
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL65
	.4byte	0x801
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL59
	.4byte	0x967
	.4byte	0xd19
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xc
	.4byte	.LVL60
	.4byte	0xd41
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF644
	.4byte	.LASF644
	.byte	0x3
	.byte	0x4a
	.byte	0x8
	.uleb128 0x2d
	.4byte	.LASF645
	.4byte	.LASF645
	.byte	0x3
	.byte	0x57
	.byte	0x8
	.uleb128 0x2d
	.4byte	.LASF646
	.4byte	.LASF646
	.byte	0x3
	.byte	0x6a
	.byte	0x6
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS73:
	.uleb128 0
	.uleb128 .LVU367
	.uleb128 .LVU367
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 0
.LLST73:
	.4byte	.LVL116
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL118-1
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL130
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS74:
	.uleb128 0
	.uleb128 .LVU367
	.uleb128 .LVU367
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 0
.LLST74:
	.4byte	.LVL116
	.4byte	.LVL118-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL118-1
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL130
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS75:
	.uleb128 0
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 0
.LLST75:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL130
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS76:
	.uleb128 .LVU368
	.uleb128 .LVU371
	.uleb128 .LVU378
	.uleb128 .LVU393
	.uleb128 .LVU394
	.uleb128 0
.LLST76:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL124
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL130
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS77:
	.uleb128 .LVU371
	.uleb128 .LVU373
	.uleb128 .LVU374
	.uleb128 .LVU389
	.uleb128 .LVU392
	.uleb128 .LVU393
	.uleb128 .LVU394
	.uleb128 0
.LLST77:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL122
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL130
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS78:
	.uleb128 .LVU371
	.uleb128 .LVU373
	.uleb128 .LVU374
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 .LVU390
	.uleb128 .LVU390
	.uleb128 .LVU393
	.uleb128 .LVU394
	.uleb128 0
.LLST78:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL130
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS79:
	.uleb128 .LVU358
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU394
	.uleb128 .LVU394
	.uleb128 0
.LLST79:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL129
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LFE18
	.2byte	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x31
	.byte	0x25
	.byte	0x33
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS70:
	.uleb128 0
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 0
.LLST70:
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 0
.LLST71:
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL115-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS72:
	.uleb128 0
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 0
.LLST72:
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL115-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 0
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 0
.LLST65:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL106
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 0
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU329
	.uleb128 .LVU329
	.uleb128 .LVU339
	.uleb128 .LVU343
	.uleb128 .LVU347
.LLST66:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL106
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x3
	.byte	0x74
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS67:
	.uleb128 0
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 0
.LLST67:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL106
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS68:
	.uleb128 0
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 0
.LLST68:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS69:
	.uleb128 .LVU325
	.uleb128 .LVU340
	.uleb128 .LVU345
	.uleb128 .LVU347
.LLST69:
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 0
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 0
.LLST63:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS64:
	.uleb128 0
	.uleb128 .LVU281
	.uleb128 .LVU281
	.uleb128 .LVU284
	.uleb128 .LVU284
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU301
	.uleb128 .LVU301
	.uleb128 .LVU303
	.uleb128 .LVU303
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 0
.LLST64:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x71
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x74
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x3
	.byte	0x74
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LFE15
	.2byte	0x3
	.byte	0x74
	.sleb128 6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 0
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 0
.LLST60:
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL94-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 0
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 0
.LLST61:
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL94-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 0
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 0
.LLST62:
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 0
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 0
.LLST57:
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 0
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 0
.LLST58:
	.4byte	.LVL87
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x71
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x74
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 0
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 0
.LLST59:
	.4byte	.LVL87
	.4byte	.LVL91-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL91-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 0
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 0
.LLST54:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 0
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 0
.LLST55:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL86-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 0
.LLST56:
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 0
.LLST51:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 0
.LLST52:
	.4byte	.LVL74
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x71
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x74
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x3
	.byte	0x74
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE11
	.2byte	0x3
	.byte	0x74
	.sleb128 6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 0
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 0
.LLST53:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL76
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL82
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 0
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST49:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST50:
	.4byte	.LVL70
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x71
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE10
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 0
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST45:
	.4byte	.LVL66
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST46:
	.4byte	.LVL66
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL69-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST47:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL69-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST48:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 0
.LLST31:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 0
.LLST32:
	.4byte	.LVL49
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL52-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 0
.LLST33:
	.4byte	.LVL49
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 0
.LLST34:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU155
	.uleb128 .LVU157
.LLST35:
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 0
.LLST29:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST30:
	.4byte	.LVL45
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST17:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL23
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU98
	.uleb128 0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL33
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU95
	.uleb128 .LVU108
	.uleb128 .LVU111
	.uleb128 0
.LLST19:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU95
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST20:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU80
	.uleb128 0
.LLST21:
	.4byte	.LVL24
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU82
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST22:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST11:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST12:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x9
	.byte	0x76
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0xb
	.byte	0x76
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x32
	.byte	0x1c
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE3
	.2byte	0xd
	.byte	0x76
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x1c
	.byte	0x32
	.byte	0x1c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU44
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU69
.LLST13:
	.4byte	.LVL10
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x2
	.byte	0x1c
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x2
	.byte	0x1c
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x2
	.byte	0x1c
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x2
	.byte	0x1c
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU67
	.uleb128 0
.LLST14:
	.4byte	.LVL19
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU13
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU3
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU25
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST23:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST24:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39-1
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST25:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU120
	.uleb128 0
.LLST26:
	.4byte	.LVL39
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU122
	.uleb128 .LVU125
	.uleb128 .LVU127
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 0
.LLST27:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU128
	.uleb128 0
.LLST28:
	.4byte	.LVL42
	.4byte	.LFE5
	.2byte	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 0
.LLST36:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 0
.LLST37:
	.4byte	.LVL55
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL59-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST38:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 0
.LLST39:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU173
	.uleb128 .LVU179
.LLST40:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU175
	.uleb128 .LVU182
.LLST41:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU175
	.uleb128 .LVU182
.LLST42:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU175
	.uleb128 .LVU182
.LLST43:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU175
	.uleb128 .LVU182
.LLST44:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x2ac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd5a
	.4byte	0xc1
	.ascii	"sensirion_i2c_read_data_inplace\000"
	.4byte	0x1a6
	.ascii	"sensirion_i2c_write_data\000"
	.4byte	0x218
	.ascii	"sensirion_i2c_add_bytes_to_buffer\000"
	.4byte	0x2af
	.ascii	"sensirion_i2c_add_float_to_buffer\000"
	.4byte	0x36e
	.ascii	"sensirion_i2c_add_int16_t_to_buffer\000"
	.4byte	0x3dd
	.ascii	"sensirion_i2c_add_uint16_t_to_buffer\000"
	.4byte	0x44e
	.ascii	"sensirion_i2c_add_int32_t_to_buffer\000"
	.4byte	0x4bd
	.ascii	"sensirion_i2c_add_uint32_t_to_buffer\000"
	.4byte	0x54c
	.ascii	"sensirion_i2c_add_command_to_buffer\000"
	.4byte	0x59d
	.ascii	"sensirion_i2c_read_cmd\000"
	.4byte	0x624
	.ascii	"sensirion_i2c_delayed_read_cmd\000"
	.4byte	0x69a
	.ascii	"sensirion_i2c_write_cmd_with_args\000"
	.4byte	0x776
	.ascii	"sensirion_i2c_write_cmd\000"
	.4byte	0x801
	.ascii	"sensirion_i2c_read_words\000"
	.4byte	0x85b
	.ascii	"sensirion_i2c_read_words_as_bytes\000"
	.4byte	0x967
	.ascii	"sensirion_i2c_fill_cmd_send_buf\000"
	.4byte	0xa2b
	.ascii	"sensirion_i2c_general_call_reset\000"
	.4byte	0xa6f
	.ascii	"sensirion_i2c_check_crc\000"
	.4byte	0xad7
	.ascii	"sensirion_i2c_generate_crc\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x104
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd5a
	.4byte	0x29
	.ascii	"int\000"
	.4byte	0x30
	.ascii	"long int\000"
	.4byte	0x37
	.ascii	"char\000"
	.4byte	0x3e
	.ascii	"unsigned int\000"
	.4byte	0x45
	.ascii	"unsigned char\000"
	.4byte	0x4c
	.ascii	"short unsigned int\000"
	.4byte	0x53
	.ascii	"long long int\000"
	.4byte	0x66
	.ascii	"signed char\000"
	.4byte	0x5a
	.ascii	"int8_t\000"
	.4byte	0x6d
	.ascii	"uint8_t\000"
	.4byte	0x8a
	.ascii	"short int\000"
	.4byte	0x7e
	.ascii	"int16_t\000"
	.4byte	0x91
	.ascii	"uint16_t\000"
	.4byte	0xa2
	.ascii	"int32_t\000"
	.4byte	0xae
	.ascii	"uint32_t\000"
	.4byte	0xba
	.ascii	"long long unsigned int\000"
	.4byte	0x367
	.ascii	"float\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 4 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_i2c.h"
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF472
	.file 5 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_config.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF473
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdlib.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF474
	.file 7 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/__crossworks.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4b
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 9 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_common.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF583
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.cf10e6f2b8cc3644998958c058b7f862,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0
	.4byte	.LASF398
	.byte	0x6
	.uleb128 0
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x6
	.uleb128 0
	.4byte	.LASF404
	.byte	0x6
	.uleb128 0
	.4byte	.LASF405
	.byte	0x6
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x6
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0
	.4byte	.LASF431
	.byte	0x6
	.uleb128 0
	.4byte	.LASF432
	.byte	0x6
	.uleb128 0
	.4byte	.LASF433
	.byte	0x6
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x6
	.uleb128 0
	.4byte	.LASF436
	.byte	0x6
	.uleb128 0
	.4byte	.LASF437
	.byte	0x6
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x6
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x6
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x6
	.uleb128 0
	.4byte	.LASF449
	.byte	0x6
	.uleb128 0
	.4byte	.LASF450
	.byte	0x6
	.uleb128 0
	.4byte	.LASF451
	.byte	0x6
	.uleb128 0
	.4byte	.LASF452
	.byte	0x6
	.uleb128 0
	.4byte	.LASF453
	.byte	0x6
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0
	.4byte	.LASF471
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.39.ff21eb83ebfc80fb95245a821dd1e413,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF476
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF495
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.48.46499b9a2c5c0782586f14a39a906a6b,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF502
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.39.fe42d6eb18d369206696c6985313e641,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF562
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdbool.h.39.3758cb47b714dfcbf7837a03b10a6ad6,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF567
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sensirion_i2c.h.41.f66fdebae9ba698c27f6b1eaa5dc3539,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF578
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sensirion_common.h.33.d8b730ec9b213ba3b188c1530e5da984,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF578
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF171:
	.ascii	"__DBL_NORM_MAX__ ((double)1.1)\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF239:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF425:
	.ascii	"__ARMEL__ 1\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF197:
	.ascii	"__FLT16_MIN_10_EXP__ (-4)\000"
.LASF222:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF516:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF63:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF229:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF334:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF421:
	.ascii	"__thumb2__ 1\000"
.LASF208:
	.ascii	"__FLT16_HAS_QUIET_NAN__ 1\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF474:
	.ascii	"__stdlib_H \000"
.LASF578:
	.ascii	"SENSIRION_MAX_BUFFER_WORDS 32\000"
.LASF466:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF324:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF494:
	.ascii	"__RAL_WCHAR_T __WCHAR_TYPE__\000"
.LASF216:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF209:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF298:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF436:
	.ascii	"__ARM_NEON__\000"
.LASF392:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF336:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF352:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF246:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF165:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF450:
	.ascii	"__ARM_FEATURE_CDE_COPROC\000"
.LASF625:
	.ascii	"sensirion_i2c_write_cmd_with_args\000"
.LASF412:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF402:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF286:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF600:
	.ascii	"buffer\000"
.LASF262:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF567:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF446:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF529:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF626:
	.ascii	"buf_size\000"
.LASF397:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF551:
	.ascii	"INT16_C(x) (x)\000"
.LASF25:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF40:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF24:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF29:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF293:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF394:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF620:
	.ascii	"sensirion_i2c_read_cmd\000"
.LASF163:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF58:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF250:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF634:
	.ascii	"sensirion_i2c_fill_cmd_send_buf\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF195:
	.ascii	"__FLT16_DIG__ 3\000"
.LASF374:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF44:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF399:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF244:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF179:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF249:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF527:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
.LASF326:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF468:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF601:
	.ascii	"expected_data_length\000"
.LASF21:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF189:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF202:
	.ascii	"__FLT16_NORM_MAX__ 1.1\000"
.LASF51:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF403:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF506:
	.ascii	"INT8_MIN (-128)\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF602:
	.ascii	"error\000"
.LASF635:
	.ascii	"args\000"
.LASF31:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF212:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF175:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF276:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF493:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF532:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF417:
	.ascii	"__ARM_ARCH 7\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF331:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF409:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF291:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF226:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF525:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF395:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF434:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF574:
	.ascii	"CRC8_LEN 1\000"
.LASF317:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF333:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF322:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF428:
	.ascii	"__ARM_FP 4\000"
.LASF160:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF340:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF483:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF55:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF368:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF537:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF580:
	.ascii	"NO_ERROR 0\000"
.LASF62:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF224:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF590:
	.ascii	"signed char\000"
.LASF415:
	.ascii	"__arm__ 1\000"
.LASF251:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF541:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF627:
	.ascii	"sensirion_i2c_write_cmd\000"
.LASF430:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF332:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF597:
	.ascii	"uint32_t\000"
.LASF591:
	.ascii	"int8_t\000"
.LASF401:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF437:
	.ascii	"__ARM_NEON\000"
.LASF564:
	.ascii	"bool _Bool\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF405:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF68:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF157:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF221:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF603:
	.ascii	"size\000"
.LASF375:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF553:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF539:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF358:
	.ascii	"__SA_IBIT__ 16\000"
.LASF288:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF162:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF613:
	.ascii	"float\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF640:
	.ascii	"checksum\000"
.LASF496:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF359:
	.ascii	"__DA_FBIT__ 31\000"
.LASF194:
	.ascii	"__FLT16_MANT_DIG__ 11\000"
.LASF639:
	.ascii	"count\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF598:
	.ascii	"long long unsigned int\000"
.LASF607:
	.ascii	"data_length\000"
.LASF459:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF304:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF593:
	.ascii	"int16_t\000"
.LASF223:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF273:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF258:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF199:
	.ascii	"__FLT16_MAX_10_EXP__ 4\000"
.LASF442:
	.ascii	"__ARM_EABI__ 1\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF568:
	.ascii	"CRC_ERROR 1\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF284:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF53:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF281:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF325:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF524:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF633:
	.ascii	"buf8\000"
.LASF292:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF177:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF312:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF488:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF279:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF59:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF579:
	.ascii	"SENSIRION_COMMON_H \000"
.LASF238:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF585:
	.ascii	"char\000"
.LASF649:
	.ascii	"C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My "
	.ascii	"Projects\\Progetto_tesi\\pca10040\\blank\\ses\000"
.LASF220:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF432:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF482:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF295:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF218:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF624:
	.ascii	"convert\000"
.LASF457:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF615:
	.ascii	"sensirion_i2c_add_uint16_t_to_buffer\000"
.LASF479:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF560:
	.ascii	"WCHAR_MAX __WCHAR_MAX__\000"
.LASF314:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF511:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF204:
	.ascii	"__FLT16_EPSILON__ 1.1\000"
.LASF306:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF464:
	.ascii	"BOARD_PCA10040 1\000"
.LASF477:
	.ascii	"__RAL_SIZE_T\000"
.LASF230:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF296:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF393:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF390:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF508:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF617:
	.ascii	"sensirion_i2c_add_uint32_t_to_buffer\000"
.LASF366:
	.ascii	"__USA_IBIT__ 16\000"
.LASF460:
	.ascii	"__HEAP_SIZE__ 8192\000"
.LASF444:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF557:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF398:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF492:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF641:
	.ascii	"sensirion_i2c_generate_crc\000"
.LASF476:
	.ascii	"__THREAD __thread\000"
.LASF303:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF367:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF604:
	.ascii	"sensirion_i2c_read_data_inplace\000"
.LASF571:
	.ascii	"BYTE_NUM_ERROR 4\000"
.LASF630:
	.ascii	"word_bytes\000"
.LASF609:
	.ascii	"offset\000"
.LASF530:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF422:
	.ascii	"__THUMBEL__ 1\000"
.LASF188:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF27:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF316:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF263:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF28:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF389:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF327:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF536:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF16:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF357:
	.ascii	"__SA_FBIT__ 15\000"
.LASF228:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF433:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF517:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF299:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF60:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF196:
	.ascii	"__FLT16_MIN_EXP__ (-13)\000"
.LASF215:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF48:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF583:
	.ascii	"SENSIRION_I2C_HAL_H \000"
.LASF465:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF373:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF348:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF270:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF408:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF489:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF46:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF328:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF198:
	.ascii	"__FLT16_MAX_EXP__ 16\000"
.LASF471:
	.ascii	"NRF52_PAN_74 1\000"
.LASF329:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF302:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF240:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF443:
	.ascii	"__FDPIC__\000"
.LASF447:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF282:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF416:
	.ascii	"__ARM_ARCH\000"
.LASF231:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF371:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF538:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF211:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF502:
	.ascii	"MB_CUR_MAX __RAL_mb_max(&__RAL_global_locale)\000"
.LASF311:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF64:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF485:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF166:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF301:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF271:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1014\000"
.LASF210:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF23:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF503:
	.ascii	"__stdint_H \000"
.LASF237:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF252:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF526:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF236:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF521:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF321:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF431:
	.ascii	"__ARM_FP16_ARGS 1\000"
.LASF285:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF498:
	.ascii	"NULL 0\000"
.LASF606:
	.ascii	"data\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF365:
	.ascii	"__USA_FBIT__ 16\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF554:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF156:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF491:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF504:
	.ascii	"UINT8_MAX 255\000"
.LASF310:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF592:
	.ascii	"uint8_t\000"
.LASF544:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF369:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF449:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF275:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF458:
	.ascii	"__SES_ARM 1\000"
.LASF561:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF52:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF213:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF576:
	.ascii	"SENSIRION_WORD_SIZE 2\000"
.LASF462:
	.ascii	"__GNU_LINKER 1\000"
.LASF164:
	.ascii	"__DBL_DIG__ 15\000"
.LASF565:
	.ascii	"true 1\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF423:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF315:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF354:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF570:
	.ascii	"I2C_NACK_ERROR 3\000"
.LASF174:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF241:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF309:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF518:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF351:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF187:
	.ascii	"__LDBL_NORM_MAX__ 1.1\000"
.LASF424:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF614:
	.ascii	"sensirion_i2c_add_int16_t_to_buffer\000"
.LASF353:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF155:
	.ascii	"__FLT_NORM_MAX__ 1.1\000"
.LASF589:
	.ascii	"long long int\000"
.LASF26:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF427:
	.ascii	"__ARM_FP\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF305:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF17:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF36:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF646:
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
.LASF256:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF616:
	.ascii	"sensirion_i2c_add_int32_t_to_buffer\000"
.LASF178:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF344:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF363:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF520:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF419:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__ 1\000"
.LASF217:
	.ascii	"__FLT32_NORM_MAX__ 1.1\000"
.LASF456:
	.ascii	"__ELF__ 1\000"
.LASF413:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF323:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF632:
	.ascii	"word_buf\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF35:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF610:
	.ascii	"sensirion_i2c_add_float_to_buffer\000"
.LASF173:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF267:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF207:
	.ascii	"__FLT16_HAS_INFINITY__ 1\000"
.LASF448:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF490:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF19:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF543:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF167:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF454:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF37:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF581:
	.ascii	"NOT_IMPLEMENTED_ERROR 31\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF280:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF307:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF542:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF638:
	.ascii	"sensirion_i2c_check_crc\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF619:
	.ascii	"command\000"
.LASF455:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF200:
	.ascii	"__FLT16_DECIMAL_DIG__ 5\000"
.LASF268:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF320:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF272:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF636:
	.ascii	"num_args\000"
.LASF438:
	.ascii	"__ARM_NEON_FP\000"
.LASF429:
	.ascii	"__ARM_FP16_FORMAT_IEEE 1\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF266:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF318:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF361:
	.ascii	"__TA_FBIT__ 63\000"
.LASF192:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF201:
	.ascii	"__FLT16_MAX__ 1.1\000"
.LASF648:
	.ascii	"C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My "
	.ascii	"Projects\\Progetto_tesi\\SENSIRION\\sensirion_i2c.c"
	.ascii	"\000"
.LASF180:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF605:
	.ascii	"sensirion_i2c_write_data\000"
.LASF391:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF461:
	.ascii	"__SES_VERSION 57001\000"
.LASF32:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF396:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF289:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF556:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF470:
	.ascii	"NRF52832_XXAA 1\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF255:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF41:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF628:
	.ascii	"sensirion_i2c_delayed_read_cmd\000"
.LASF515:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF338:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF608:
	.ascii	"sensirion_i2c_add_bytes_to_buffer\000"
.LASF595:
	.ascii	"uint16_t\000"
.LASF372:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF206:
	.ascii	"__FLT16_HAS_DENORM__ 1\000"
.LASF480:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF57:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF341:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF257:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF407:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF487:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF453:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF30:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF56:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF5:
	.ascii	"__GNUC__ 10\000"
.LASF522:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF540:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF549:
	.ascii	"INT8_C(x) (x)\000"
.LASF345:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF350:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF411:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF534:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF594:
	.ascii	"short int\000"
.LASF274:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF562:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF347:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF45:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF243:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF452:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF584:
	.ascii	"long int\000"
.LASF445:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF182:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF339:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF572:
	.ascii	"CRC8_POLYNOMIAL 0x31\000"
.LASF277:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF546:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF242:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF290:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF505:
	.ascii	"INT8_MAX 127\000"
.LASF481:
	.ascii	"__CODE \000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF555:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF531:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF420:
	.ascii	"__thumb__ 1\000"
.LASF193:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF43:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF501:
	.ascii	"RAND_MAX 32767\000"
.LASF185:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF370:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF343:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF264:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF577:
	.ascii	"SENSIRION_NUM_WORDS(x) (sizeof(x) / SENSIRION_WORD_"
	.ascii	"SIZE)\000"
.LASF514:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF642:
	.ascii	"current_byte\000"
.LASF260:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF337:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF232:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF364:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF410:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF644:
	.ascii	"sensirion_i2c_hal_read\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF507:
	.ascii	"UINT16_MAX 65535\000"
.LASF47:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF523:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF513:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF54:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF547:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF499:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF49:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF181:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF247:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF33:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF313:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF586:
	.ascii	"unsigned int\000"
.LASF426:
	.ascii	"__VFP_FP__ 1\000"
.LASF283:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF355:
	.ascii	"__HA_FBIT__ 7\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF645:
	.ascii	"sensirion_i2c_hal_write\000"
.LASF569:
	.ascii	"I2C_BUS_ERROR 2\000"
.LASF297:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF319:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF548:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF259:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF346:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF349:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF356:
	.ascii	"__HA_IBIT__ 8\000"
.LASF308:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF599:
	.ascii	"address\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF472:
	.ascii	"SENSIRION_I2C_H \000"
.LASF158:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF596:
	.ascii	"int32_t\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF205:
	.ascii	"__FLT16_DENORM_MIN__ 1.1\000"
.LASF463:
	.ascii	"NDEBUG 1\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF497:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF172:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF248:
	.ascii	"__FLT32X_NORM_MAX__ 1.1\000"
.LASF467:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF612:
	.ascii	"float_data\000"
.LASF509:
	.ascii	"INT16_MAX 32767\000"
.LASF528:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF519:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF622:
	.ascii	"num_words\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF66:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF587:
	.ascii	"unsigned char\000"
.LASF39:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF478:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF360:
	.ascii	"__DA_IBIT__ 32\000"
.LASF510:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF67:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF441:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF219:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF469:
	.ascii	"NRF52 1\000"
.LASF261:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF500:
	.ascii	"EXIT_FAILURE 1\000"
.LASF65:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF475:
	.ascii	"__crossworks_H \000"
.LASF533:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF190:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF342:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF473:
	.ascii	"SENSIRION_CONFIG_H \000"
.LASF34:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF559:
	.ascii	"WCHAR_MIN __WCHAR_MIN__\000"
.LASF330:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF550:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF558:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF643:
	.ascii	"crc_bit\000"
.LASF629:
	.ascii	"sensirion_i2c_read_words\000"
.LASF265:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF8:
	.ascii	"__VERSION__ \"10.3.1 20210824 (release)\"\000"
.LASF15:
	.ascii	"__OPTIMIZE_SIZE__ 1\000"
.LASF637:
	.ascii	"sensirion_i2c_general_call_reset\000"
.LASF618:
	.ascii	"sensirion_i2c_add_command_to_buffer\000"
.LASF269:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF227:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF176:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF170:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF61:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF161:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF18:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF582:
	.ascii	"ARRAY_SIZE(x) (sizeof(x) / sizeof(*(x)))\000"
.LASF38:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF563:
	.ascii	"__stdbool_h \000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF623:
	.ascii	"delay_us\000"
.LASF404:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF418:
	.ascii	"__APCS_32__ 1\000"
.LASF235:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF535:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF573:
	.ascii	"CRC8_INIT 0xFF\000"
.LASF50:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF254:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF168:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF233:
	.ascii	"__FLT64_NORM_MAX__ 1.1\000"
.LASF588:
	.ascii	"short unsigned int\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF362:
	.ascii	"__TA_IBIT__ 64\000"
.LASF22:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF631:
	.ascii	"sensirion_i2c_read_words_as_bytes\000"
.LASF253:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF552:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF414:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF486:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF451:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF184:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF439:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF566:
	.ascii	"false 0\000"
.LASF611:
	.ascii	"uint32_data\000"
.LASF647:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m4 -mlittle-endian -mfloa"
	.ascii	"t-abi=hard -mfpu=fpv4-sp-d16 -mthumb -mtp=soft -mfp"
	.ascii	"16-format=ieee -munaligned-access -gdwarf-4 -g3 -gp"
	.ascii	"ubnames -Os -fomit-frame-pointer -fno-dwarf2-cfi-as"
	.ascii	"m -ffunction-sections -fdata-sections -fshort-enums"
	.ascii	" -fno-common\000"
.LASF183:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF245:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF203:
	.ascii	"__FLT16_MIN__ 1.1\000"
.LASF400:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF214:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF335:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF278:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF440:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF512:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF186:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF484:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF42:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF495:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF545:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF287:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF575:
	.ascii	"SENSIRION_COMMAND_SIZE 2\000"
.LASF234:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF435:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF294:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF191:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF406:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF621:
	.ascii	"data_words\000"
.LASF225:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF300:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF159:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF169:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (based on arm-10.3-2021.10 GCC) 10.3.1 20210824 (release)"
