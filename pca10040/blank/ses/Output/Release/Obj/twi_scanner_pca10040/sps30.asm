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
	.file	"sps30.c"
	.text
.Ltext0:
	.section	.text.sps_get_driver_version,"ax",%progbits
	.align	1
	.global	sps_get_driver_version
	.syntax unified
	.thumb
	.thumb_func
	.type	sps_get_driver_version, %function
sps_get_driver_version:
.LFB0:
	.file 1 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sps30.c"
	.loc 1 57 42 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 58 5 view .LVU1
	.loc 1 59 1 is_stmt 0 view .LVU2
	ldr	r3, .L2
	ldr	r0, [r3]
	bx	lr
.L3:
	.align	2
.L2:
	.word	SPS_DRV_VERSION_STR
.LFE0:
	.size	sps_get_driver_version, .-sps_get_driver_version
	.section	.text.sps30_read_firmware_version,"ax",%progbits
	.align	1
	.global	sps30_read_firmware_version
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_read_firmware_version, %function
sps30_read_firmware_version:
.LVL0:
.LFB2:
	.loc 1 70 69 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 71 5 view .LVU4
	.loc 1 72 5 view .LVU5
	.loc 1 74 5 view .LVU6
	.loc 1 70 69 is_stmt 0 view .LVU7
	push	{r0, r1, r2, r4, r5, lr}
.LCFI0:
	.loc 1 74 11 view .LVU8
	movs	r3, #1
	.loc 1 70 69 view .LVU9
	mov	r5, r0
	mov	r4, r1
	.loc 1 74 11 view .LVU10
	add	r2, sp, #6
	mov	r1, #53504
.LVL1:
	.loc 1 74 11 view .LVU11
	movs	r0, #105
.LVL2:
	.loc 1 74 11 view .LVU12
	bl	sensirion_i2c_read_cmd
.LVL3:
	.loc 1 76 5 is_stmt 1 view .LVU13
	.loc 1 76 33 is_stmt 0 view .LVU14
	ldrh	r3, [sp, #6]
	lsrs	r2, r3, #8
	.loc 1 76 12 view .LVU15
	strb	r2, [r5]
	.loc 1 77 5 is_stmt 1 view .LVU16
	.loc 1 77 12 is_stmt 0 view .LVU17
	strb	r3, [r4]
	.loc 1 78 5 is_stmt 1 view .LVU18
	.loc 1 79 1 is_stmt 0 view .LVU19
	add	sp, sp, #12
.LCFI1:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 79 1 view .LVU20
.LFE2:
	.size	sps30_read_firmware_version, .-sps30_read_firmware_version
	.section	.text.sps30_get_serial,"ax",%progbits
	.align	1
	.global	sps30_get_serial
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_get_serial, %function
sps30_get_serial:
.LVL4:
.LFB3:
	.loc 1 81 40 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 82 5 view .LVU22
	.loc 1 84 5 view .LVU23
	.loc 1 81 40 is_stmt 0 view .LVU24
	push	{r3, r4, r5, lr}
.LCFI2:
	.loc 1 84 13 view .LVU25
	movw	r1, #53299
	.loc 1 81 40 view .LVU26
	mov	r4, r0
	.loc 1 84 13 view .LVU27
	movs	r0, #105
.LVL5:
	.loc 1 84 13 view .LVU28
	bl	sensirion_i2c_write_cmd
.LVL6:
	mov	r5, r0
.LVL7:
	.loc 1 86 5 is_stmt 1 view .LVU29
	.loc 1 86 8 is_stmt 0 view .LVU30
	cbnz	r0, .L6
.LVL8:
.LBB4:
.LBI4:
	.loc 1 81 9 is_stmt 1 view .LVU31
.LBB5:
	.loc 1 90 5 view .LVU32
	.loc 1 90 13 is_stmt 0 view .LVU33
	movs	r2, #16
	mov	r1, r4
	movs	r0, #105
.LVL9:
	.loc 1 90 13 view .LVU34
	bl	sensirion_i2c_read_words_as_bytes
.LVL10:
	.loc 1 96 5 is_stmt 1 view .LVU35
	.loc 1 96 38 is_stmt 0 view .LVU36
	strb	r5, [r4, #31]
	.loc 1 98 5 is_stmt 1 view .LVU37
.LVL11:
.L6:
	.loc 1 98 5 is_stmt 0 view .LVU38
.LBE5:
.LBE4:
	.loc 1 99 1 view .LVU39
	pop	{r3, r4, r5, pc}
	.loc 1 99 1 view .LVU40
.LFE3:
	.size	sps30_get_serial, .-sps30_get_serial
	.section	.text.sps30_start_measurement,"ax",%progbits
	.align	1
	.global	sps30_start_measurement
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_start_measurement, %function
sps30_start_measurement:
.LFB4:
	.loc 1 101 39 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 102 5 view .LVU42
	.loc 1 101 39 is_stmt 0 view .LVU43
	push	{r0, r1, r4, lr}
.LCFI3:
	.loc 1 102 20 view .LVU44
	mov	r3, #768
	strh	r3, [sp, #6]	@ movhi
	.loc 1 104 5 is_stmt 1 view .LVU45
	.loc 1 104 19 is_stmt 0 view .LVU46
	add	r2, sp, #6
	movs	r3, #1
	movs	r1, #16
	movs	r0, #105
	bl	sensirion_i2c_write_cmd_with_args
.LVL12:
	mov	r4, r0
.LVL13:
	.loc 1 109 9 is_stmt 1 view .LVU47
	movw	r0, #5000
	bl	sensirion_i2c_hal_sleep_usec
.LVL14:
	.loc 1 112 5 view .LVU48
	.loc 1 113 1 is_stmt 0 view .LVU49
	mov	r0, r4
	add	sp, sp, #8
.LCFI4:
	@ sp needed
	pop	{r4, pc}
	.loc 1 113 1 view .LVU50
.LFE4:
	.size	sps30_start_measurement, .-sps30_start_measurement
	.section	.text.sps30_stop_measurement,"ax",%progbits
	.align	1
	.global	sps30_stop_measurement
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_stop_measurement, %function
sps30_stop_measurement:
.LFB5:
	.loc 1 115 38 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 116 5 view .LVU52
	.loc 1 115 38 is_stmt 0 view .LVU53
	push	{r4, lr}
.LCFI5:
	.loc 1 117 9 view .LVU54
	mov	r1, #260
	movs	r0, #105
	bl	sensirion_i2c_write_cmd
.LVL15:
	mov	r4, r0
.LVL16:
	.loc 1 119 9 is_stmt 1 view .LVU55
	movw	r0, #5000
	bl	sensirion_i2c_hal_sleep_usec
.LVL17:
	.loc 1 120 5 view .LVU56
	.loc 1 121 1 is_stmt 0 view .LVU57
	mov	r0, r4
	pop	{r4, pc}
	.loc 1 121 1 view .LVU58
.LFE5:
	.size	sps30_stop_measurement, .-sps30_stop_measurement
	.section	.text.sps30_read_data_ready,"ax",%progbits
	.align	1
	.global	sps30_read_data_ready
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_read_data_ready, %function
sps30_read_data_ready:
.LVL18:
.LFB6:
	.loc 1 123 53 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 124 5 view .LVU60
	.loc 1 123 53 is_stmt 0 view .LVU61
	mov	r2, r0
	.loc 1 124 12 view .LVU62
	movs	r3, #1
	movw	r1, #514
	movs	r0, #105
.LVL19:
	.loc 1 124 12 view .LVU63
	b	sensirion_i2c_read_cmd
.LVL20:
	.loc 1 124 12 view .LVU64
.LFE6:
	.size	sps30_read_data_ready, .-sps30_read_data_ready
	.section	.text.sps30_read_measurement,"ax",%progbits
	.align	1
	.global	sps30_read_measurement
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_read_measurement, %function
sps30_read_measurement:
.LVL21:
.LFB7:
	.loc 1 128 71 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 129 5 view .LVU66
	.loc 1 130 5 view .LVU67
	.loc 1 132 5 view .LVU68
	.loc 1 128 71 is_stmt 0 view .LVU69
	push	{r4, r5, lr}
.LCFI6:
	.loc 1 133 9 view .LVU70
	mov	r1, #768
	.loc 1 128 71 view .LVU71
	sub	sp, sp, #44
.LCFI7:
	.loc 1 128 71 view .LVU72
	mov	r4, r0
	.loc 1 133 9 view .LVU73
	movs	r0, #105
.LVL22:
	.loc 1 133 9 view .LVU74
	bl	sensirion_i2c_write_cmd
.LVL23:
	.loc 1 134 5 is_stmt 1 view .LVU75
	.loc 1 134 8 is_stmt 0 view .LVU76
	mov	r5, r0
	cmp	r0, #0
	bne	.L11
	.loc 1 138 5 is_stmt 1 view .LVU77
	.loc 1 138 13 is_stmt 0 view .LVU78
	movs	r2, #20
	mov	r1, sp
	movs	r0, #105
.LVL24:
	.loc 1 138 13 view .LVU79
	bl	sensirion_i2c_read_words_as_bytes
.LVL25:
	.loc 1 141 5 is_stmt 1 view .LVU80
	.loc 1 141 8 is_stmt 0 view .LVU81
	mov	r5, r0
	cbnz	r0, .L11
	.loc 1 145 5 is_stmt 1 view .LVU82
	.loc 1 145 27 is_stmt 0 view .LVU83
	mov	r0, sp
.LVL26:
	.loc 1 145 27 view .LVU84
	bl	sensirion_common_bytes_to_float
.LVL27:
	.loc 1 146 27 view .LVU85
	add	r0, sp, #4
	.loc 1 145 25 view .LVU86
	vstr.32	s0, [r4]
	.loc 1 146 5 is_stmt 1 view .LVU87
	.loc 1 146 27 is_stmt 0 view .LVU88
	bl	sensirion_common_bytes_to_float
.LVL28:
	.loc 1 147 27 view .LVU89
	add	r0, sp, #8
	.loc 1 146 25 view .LVU90
	vstr.32	s0, [r4, #4]
	.loc 1 147 5 is_stmt 1 view .LVU91
	.loc 1 147 27 is_stmt 0 view .LVU92
	bl	sensirion_common_bytes_to_float
.LVL29:
	.loc 1 148 28 view .LVU93
	add	r0, sp, #12
	.loc 1 147 25 view .LVU94
	vstr.32	s0, [r4, #8]
	.loc 1 148 5 is_stmt 1 view .LVU95
	.loc 1 148 28 is_stmt 0 view .LVU96
	bl	sensirion_common_bytes_to_float
.LVL30:
	.loc 1 149 27 view .LVU97
	add	r0, sp, #16
	.loc 1 148 26 view .LVU98
	vstr.32	s0, [r4, #12]
	.loc 1 149 5 is_stmt 1 view .LVU99
	.loc 1 149 27 is_stmt 0 view .LVU100
	bl	sensirion_common_bytes_to_float
.LVL31:
	.loc 1 150 27 view .LVU101
	add	r0, sp, #20
	.loc 1 149 25 view .LVU102
	vstr.32	s0, [r4, #16]
	.loc 1 150 5 is_stmt 1 view .LVU103
	.loc 1 150 27 is_stmt 0 view .LVU104
	bl	sensirion_common_bytes_to_float
.LVL32:
	.loc 1 151 27 view .LVU105
	add	r0, sp, #24
	.loc 1 150 25 view .LVU106
	vstr.32	s0, [r4, #20]
	.loc 1 151 5 is_stmt 1 view .LVU107
	.loc 1 151 27 is_stmt 0 view .LVU108
	bl	sensirion_common_bytes_to_float
.LVL33:
	.loc 1 152 27 view .LVU109
	add	r0, sp, #28
	.loc 1 151 25 view .LVU110
	vstr.32	s0, [r4, #24]
	.loc 1 152 5 is_stmt 1 view .LVU111
	.loc 1 152 27 is_stmt 0 view .LVU112
	bl	sensirion_common_bytes_to_float
.LVL34:
	.loc 1 153 28 view .LVU113
	add	r0, sp, #32
	.loc 1 152 25 view .LVU114
	vstr.32	s0, [r4, #28]
	.loc 1 153 5 is_stmt 1 view .LVU115
	.loc 1 153 28 is_stmt 0 view .LVU116
	bl	sensirion_common_bytes_to_float
.LVL35:
	.loc 1 154 42 view .LVU117
	add	r0, sp, #36
	.loc 1 153 26 view .LVU118
	vstr.32	s0, [r4, #32]
	.loc 1 154 5 is_stmt 1 view .LVU119
	.loc 1 154 42 is_stmt 0 view .LVU120
	bl	sensirion_common_bytes_to_float
.LVL36:
	.loc 1 154 40 view .LVU121
	vstr.32	s0, [r4, #36]
	.loc 1 156 5 is_stmt 1 view .LVU122
.L11:
	.loc 1 157 1 is_stmt 0 view .LVU123
	mov	r0, r5
	add	sp, sp, #44
.LCFI8:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 157 1 view .LVU124
.LFE7:
	.size	sps30_read_measurement, .-sps30_read_measurement
	.section	.text.sps30_get_fan_auto_cleaning_interval,"ax",%progbits
	.align	1
	.global	sps30_get_fan_auto_cleaning_interval
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_get_fan_auto_cleaning_interval, %function
sps30_get_fan_auto_cleaning_interval:
.LVL37:
.LFB8:
	.loc 1 159 74 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 160 5 view .LVU126
	.loc 1 161 5 view .LVU127
	.loc 1 163 5 view .LVU128
	.loc 1 159 74 is_stmt 0 view .LVU129
	push	{r0, r1, r2, r4, r5, lr}
.LCFI9:
	.loc 1 159 74 view .LVU130
	mov	r5, r0
	.loc 1 164 9 view .LVU131
	movw	r1, #32772
	movs	r0, #105
.LVL38:
	.loc 1 164 9 view .LVU132
	bl	sensirion_i2c_write_cmd
.LVL39:
	.loc 1 165 5 is_stmt 1 view .LVU133
	.loc 1 165 8 is_stmt 0 view .LVU134
	mov	r4, r0
	cbnz	r0, .L13
.LVL40:
.LBB8:
.LBI8:
	.loc 1 159 9 is_stmt 1 view .LVU135
.LBB9:
	.loc 1 170 5 view .LVU136
	movw	r0, #5000
.LVL41:
	.loc 1 170 5 is_stmt 0 view .LVU137
	bl	sensirion_i2c_hal_sleep_usec
.LVL42:
	.loc 1 173 5 is_stmt 1 view .LVU138
	.loc 1 173 13 is_stmt 0 view .LVU139
	movs	r2, #2
	add	r1, sp, #4
	movs	r0, #105
	bl	sensirion_i2c_read_words_as_bytes
.LVL43:
	.loc 1 175 5 is_stmt 1 view .LVU140
	.loc 1 175 8 is_stmt 0 view .LVU141
	mov	r4, r0
	cbnz	r0, .L13
	.loc 1 179 5 is_stmt 1 view .LVU142
	.loc 1 179 25 is_stmt 0 view .LVU143
	add	r0, sp, #4
.LVL44:
	.loc 1 179 25 view .LVU144
	bl	sensirion_common_bytes_to_uint32_t
.LVL45:
	.loc 1 179 23 view .LVU145
	str	r0, [r5]
	.loc 1 181 5 is_stmt 1 view .LVU146
.LVL46:
.L13:
	.loc 1 181 5 is_stmt 0 view .LVU147
.LBE9:
.LBE8:
	.loc 1 182 1 view .LVU148
	mov	r0, r4
	add	sp, sp, #12
.LCFI10:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 182 1 view .LVU149
.LFE8:
	.size	sps30_get_fan_auto_cleaning_interval, .-sps30_get_fan_auto_cleaning_interval
	.section	.text.sps30_set_fan_auto_cleaning_interval,"ax",%progbits
	.align	1
	.global	sps30_set_fan_auto_cleaning_interval
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_set_fan_auto_cleaning_interval, %function
sps30_set_fan_auto_cleaning_interval:
.LVL47:
.LFB9:
	.loc 1 184 73 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 185 5 view .LVU151
	.loc 1 186 5 view .LVU152
	.loc 1 184 73 is_stmt 0 view .LVU153
	push	{r0, r1, r4, lr}
.LCFI11:
	.loc 1 186 73 view .LVU154
	lsrs	r3, r0, #16
	.loc 1 186 30 view .LVU155
	strh	r3, [sp, #4]	@ movhi
	.loc 1 187 30 view .LVU156
	strh	r0, [sp, #6]	@ movhi
	.loc 1 189 5 is_stmt 1 view .LVU157
	.loc 1 189 11 is_stmt 0 view .LVU158
	movs	r3, #2
	add	r2, sp, #4
	movw	r1, #32772
	movs	r0, #105
.LVL48:
	.loc 1 189 11 view .LVU159
	bl	sensirion_i2c_write_cmd_with_args
.LVL49:
	mov	r4, r0
.LVL50:
	.loc 1 193 5 is_stmt 1 view .LVU160
	movw	r0, #5000
	bl	sensirion_i2c_hal_sleep_usec
.LVL51:
	.loc 1 194 5 view .LVU161
	.loc 1 195 1 is_stmt 0 view .LVU162
	mov	r0, r4
	add	sp, sp, #8
.LCFI12:
	@ sp needed
	pop	{r4, pc}
	.loc 1 195 1 view .LVU163
.LFE9:
	.size	sps30_set_fan_auto_cleaning_interval, .-sps30_set_fan_auto_cleaning_interval
	.section	.text.sps30_get_fan_auto_cleaning_interval_days,"ax",%progbits
	.align	1
	.global	sps30_get_fan_auto_cleaning_interval_days
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_get_fan_auto_cleaning_interval_days, %function
sps30_get_fan_auto_cleaning_interval_days:
.LVL52:
.LFB10:
	.loc 1 197 75 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 198 5 view .LVU165
	.loc 1 199 5 view .LVU166
	.loc 1 201 5 view .LVU167
	.loc 1 197 75 is_stmt 0 view .LVU168
	push	{r0, r1, r4, lr}
.LCFI13:
	.loc 1 197 75 view .LVU169
	mov	r4, r0
	.loc 1 201 11 view .LVU170
	add	r0, sp, #4
.LVL53:
	.loc 1 201 11 view .LVU171
	bl	sps30_get_fan_auto_cleaning_interval
.LVL54:
	.loc 1 202 5 is_stmt 1 view .LVU172
	.loc 1 202 8 is_stmt 0 view .LVU173
	cmp	r0, #0
.LVL55:
	.loc 1 205 5 is_stmt 1 view .LVU174
	.loc 1 205 39 is_stmt 0 view .LVU175
	itttt	ge
	ldrge	r3, [sp, #4]
	ldrge	r2, .L18
	udivge	r3, r3, r2
	.loc 1 205 20 view .LVU176
	strbge	r3, [r4]
	.loc 1 206 5 is_stmt 1 view .LVU177
	.loc 1 207 1 is_stmt 0 view .LVU178
	add	sp, sp, #8
.LCFI14:
	@ sp needed
	pop	{r4, pc}
.LVL56:
.L19:
	.loc 1 207 1 view .LVU179
	.align	2
.L18:
	.word	86400
.LFE10:
	.size	sps30_get_fan_auto_cleaning_interval_days, .-sps30_get_fan_auto_cleaning_interval_days
	.section	.text.sps30_set_fan_auto_cleaning_interval_days,"ax",%progbits
	.align	1
	.global	sps30_set_fan_auto_cleaning_interval_days
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_set_fan_auto_cleaning_interval_days, %function
sps30_set_fan_auto_cleaning_interval_days:
.LVL57:
.LFB11:
	.loc 1 209 74 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 210 5 view .LVU181
	.loc 1 210 12 is_stmt 0 view .LVU182
	ldr	r3, .L21
	muls	r0, r3, r0
.LVL58:
	.loc 1 210 12 view .LVU183
	b	sps30_set_fan_auto_cleaning_interval
.LVL59:
.L22:
	.align	2
.L21:
	.word	86400
.LFE11:
	.size	sps30_set_fan_auto_cleaning_interval_days, .-sps30_set_fan_auto_cleaning_interval_days
	.section	.text.sps30_start_manual_fan_cleaning,"ax",%progbits
	.align	1
	.global	sps30_start_manual_fan_cleaning
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_start_manual_fan_cleaning, %function
sps30_start_manual_fan_cleaning:
.LFB12:
	.loc 1 214 47 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 215 5 view .LVU185
	.loc 1 217 5 view .LVU186
	.loc 1 214 47 is_stmt 0 view .LVU187
	push	{r4, lr}
.LCFI15:
	.loc 1 217 11 view .LVU188
	movw	r1, #22023
	movs	r0, #105
	bl	sensirion_i2c_write_cmd
.LVL60:
	.loc 1 219 5 is_stmt 1 view .LVU189
	.loc 1 219 8 is_stmt 0 view .LVU190
	mov	r4, r0
	cbnz	r0, .L24
	.loc 1 223 5 is_stmt 1 view .LVU191
	movw	r0, #5000
.LVL61:
	.loc 1 223 5 is_stmt 0 view .LVU192
	bl	sensirion_i2c_hal_sleep_usec
.LVL62:
	.loc 1 224 5 is_stmt 1 view .LVU193
.L24:
	.loc 1 225 1 is_stmt 0 view .LVU194
	mov	r0, r4
	pop	{r4, pc}
.LFE12:
	.size	sps30_start_manual_fan_cleaning, .-sps30_start_manual_fan_cleaning
	.section	.text.sps30_reset,"ax",%progbits
	.align	1
	.global	sps30_reset
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_reset, %function
sps30_reset:
.LFB13:
	.loc 1 227 27 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 228 5 view .LVU196
	.loc 1 228 12 is_stmt 0 view .LVU197
	movw	r1, #54020
	movs	r0, #105
	b	sensirion_i2c_write_cmd
.LVL63:
.LFE13:
	.size	sps30_reset, .-sps30_reset
	.section	.text.sps30_sleep,"ax",%progbits
	.align	1
	.global	sps30_sleep
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_sleep, %function
sps30_sleep:
.LFB14:
	.loc 1 231 27 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 232 5 view .LVU199
	.loc 1 234 5 view .LVU200
	.loc 1 231 27 is_stmt 0 view .LVU201
	push	{r4, lr}
.LCFI16:
	.loc 1 234 11 view .LVU202
	movw	r1, #4097
	movs	r0, #105
	bl	sensirion_i2c_write_cmd
.LVL64:
	.loc 1 235 5 is_stmt 1 view .LVU203
	.loc 1 235 8 is_stmt 0 view .LVU204
	mov	r4, r0
	cbnz	r0, .L27
	.loc 1 239 5 is_stmt 1 view .LVU205
	movw	r0, #5000
.LVL65:
	.loc 1 239 5 is_stmt 0 view .LVU206
	bl	sensirion_i2c_hal_sleep_usec
.LVL66:
	.loc 1 240 5 is_stmt 1 view .LVU207
.L27:
	.loc 1 241 1 is_stmt 0 view .LVU208
	mov	r0, r4
	pop	{r4, pc}
.LFE14:
	.size	sps30_sleep, .-sps30_sleep
	.section	.text.sps30_wake_up,"ax",%progbits
	.align	1
	.global	sps30_wake_up
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_wake_up, %function
sps30_wake_up:
.LFB15:
	.loc 1 243 29 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 244 5 view .LVU210
	.loc 1 247 5 view .LVU211
	.loc 1 243 29 is_stmt 0 view .LVU212
	push	{r4, lr}
.LCFI17:
	.loc 1 247 11 view .LVU213
	movw	r1, #4355
	movs	r0, #105
	bl	sensirion_i2c_write_cmd
.LVL67:
	.loc 1 248 5 is_stmt 1 view .LVU214
	.loc 1 248 11 is_stmt 0 view .LVU215
	movw	r1, #4355
	movs	r0, #105
	bl	sensirion_i2c_write_cmd
.LVL68:
	.loc 1 249 5 is_stmt 1 view .LVU216
	.loc 1 249 8 is_stmt 0 view .LVU217
	mov	r4, r0
	cbnz	r0, .L29
	.loc 1 253 5 is_stmt 1 view .LVU218
	movw	r0, #5000
.LVL69:
	.loc 1 253 5 is_stmt 0 view .LVU219
	bl	sensirion_i2c_hal_sleep_usec
.LVL70:
	.loc 1 254 5 is_stmt 1 view .LVU220
.L29:
	.loc 1 255 1 is_stmt 0 view .LVU221
	mov	r0, r4
	pop	{r4, pc}
.LFE15:
	.size	sps30_wake_up, .-sps30_wake_up
	.section	.text.sps30_probe,"ax",%progbits
	.align	1
	.global	sps30_probe
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_probe, %function
sps30_probe:
.LFB1:
	.loc 1 61 27 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 62 5 view .LVU223
	.loc 1 65 5 view .LVU224
	.loc 1 61 27 is_stmt 0 view .LVU225
	push	{lr}
.LCFI18:
	sub	sp, sp, #36
.LCFI19:
	.loc 1 65 11 view .LVU226
	bl	sps30_wake_up
.LVL71:
	.loc 1 67 5 is_stmt 1 view .LVU227
	.loc 1 67 12 is_stmt 0 view .LVU228
	mov	r0, sp
	bl	sps30_get_serial
.LVL72:
	.loc 1 68 1 view .LVU229
	add	sp, sp, #36
.LCFI20:
	@ sp needed
	ldr	pc, [sp], #4
.LFE1:
	.size	sps30_probe, .-sps30_probe
	.section	.text.sps30_read_device_status_register,"ax",%progbits
	.align	1
	.global	sps30_read_device_status_register
	.syntax unified
	.thumb
	.thumb_func
	.type	sps30_read_device_status_register, %function
sps30_read_device_status_register:
.LVL73:
.LFB16:
	.loc 1 257 74 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 258 5 view .LVU231
	.loc 1 259 5 view .LVU232
	.loc 1 261 5 view .LVU233
	.loc 1 257 74 is_stmt 0 view .LVU234
	push	{r0, r1, r2, r3, r4, lr}
.LCFI21:
	.loc 1 261 11 view .LVU235
	movs	r3, #2
	.loc 1 257 74 view .LVU236
	mov	r4, r0
	.loc 1 261 11 view .LVU237
	str	r3, [sp]
	movw	r2, #5000
	add	r3, sp, #12
	movw	r1, #53766
	movs	r0, #105
.LVL74:
	.loc 1 261 11 view .LVU238
	bl	sensirion_i2c_delayed_read_cmd
.LVL75:
	.loc 1 264 5 is_stmt 1 view .LVU239
	.loc 1 264 8 is_stmt 0 view .LVU240
	cbnz	r0, .L32
	.loc 1 267 5 is_stmt 1 view .LVU241
	.loc 1 267 30 is_stmt 0 view .LVU242
	ldrh	r2, [sp, #12]
	.loc 1 267 70 view .LVU243
	ldrh	r3, [sp, #14]
	.loc 1 267 60 view .LVU244
	orr	r3, r3, r2, lsl #16
	.loc 1 267 26 view .LVU245
	str	r3, [r4]
	.loc 1 268 5 is_stmt 1 view .LVU246
.L32:
	.loc 1 269 1 is_stmt 0 view .LVU247
	add	sp, sp, #16
.LCFI22:
	@ sp needed
	pop	{r4, pc}
	.loc 1 269 1 view .LVU248
.LFE16:
	.size	sps30_read_device_status_register, .-sps30_read_device_status_register
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI2-.LFB3
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
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI3-.LFB4
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI5-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI6-.LFB7
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI9-.LFB8
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI11-.LFB9
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI13-.LFB10
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI15-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI16-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI17-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI18-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI21-.LFB16
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE32:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdint.h"
	.file 3 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sps30.h"
	.file 4 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sps_git_version.h"
	.file 5 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_i2c.h"
	.file 6 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_common.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xab2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF670
	.byte	0xc
	.4byte	.LASF671
	.4byte	.LASF672
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF609
	.uleb128 0x3
	.4byte	.LASF611
	.byte	0x2
	.byte	0x2a
	.byte	0x1c
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF610
	.uleb128 0x3
	.4byte	.LASF612
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF613
	.uleb128 0x3
	.4byte	.LASF614
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x67
	.uleb128 0x4
	.4byte	0x56
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF615
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF616
	.byte	0x2
	.byte	0x37
	.byte	0x1c
	.4byte	0x81
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF617
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF618
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF619
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF620
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF621
	.uleb128 0x4
	.4byte	0xa3
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x7
	.4byte	.LASF673
	.byte	0x28
	.byte	0x3
	.byte	0x38
	.byte	0x8
	.4byte	0x145
	.uleb128 0x8
	.4byte	.LASF622
	.byte	0x3
	.byte	0x39
	.byte	0xb
	.4byte	0x145
	.byte	0
	.uleb128 0x8
	.4byte	.LASF623
	.byte	0x3
	.byte	0x3a
	.byte	0xb
	.4byte	0x145
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF624
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.4byte	0x145
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF625
	.byte	0x3
	.byte	0x3c
	.byte	0xb
	.4byte	0x145
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF626
	.byte	0x3
	.byte	0x3d
	.byte	0xb
	.4byte	0x145
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF627
	.byte	0x3
	.byte	0x3e
	.byte	0xb
	.4byte	0x145
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF628
	.byte	0x3
	.byte	0x3f
	.byte	0xb
	.4byte	0x145
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF629
	.byte	0x3
	.byte	0x40
	.byte	0xb
	.4byte	0x145
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF630
	.byte	0x3
	.byte	0x41
	.byte	0xb
	.4byte	0x145
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF631
	.byte	0x3
	.byte	0x42
	.byte	0xb
	.4byte	0x145
	.byte	0x24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF632
	.uleb128 0x9
	.4byte	.LASF633
	.byte	0x4
	.byte	0x23
	.byte	0x14
	.4byte	0xaf
	.uleb128 0xa
	.4byte	.LASF634
	.byte	0x1
	.2byte	0x101
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d8
	.uleb128 0xb
	.4byte	.LASF641
	.byte	0x1
	.2byte	0x101
	.byte	0x35
	.4byte	0x1d8
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xc
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x102
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0xd
	.4byte	.LASF644
	.byte	0x1
	.2byte	0x103
	.byte	0xe
	.4byte	0x1de
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LVL75
	.4byte	0xa55
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0xd206
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x75
	.uleb128 0x10
	.4byte	0x56
	.4byte	0x1ee
	.uleb128 0x11
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x1
	.byte	0xf3
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x276
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xf4
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x14
	.4byte	.LASF637
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x6e
	.4byte	0x22e
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL67
	.4byte	0xa61
	.4byte	0x249
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1103
	.byte	0
	.uleb128 0x16
	.4byte	.LVL68
	.4byte	0xa61
	.4byte	0x264
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1103
	.byte	0
	.uleb128 0xe
	.4byte	.LVL70
	.4byte	0xa6d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x1
	.byte	0xe7
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e3
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xe8
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x14
	.4byte	.LASF637
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x6e
	.4byte	0x2b6
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL64
	.4byte	0xa61
	.4byte	0x2d1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1001
	.byte	0
	.uleb128 0xe
	.4byte	.LVL66
	.4byte	0xa6d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x1
	.byte	0xe3
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x315
	.uleb128 0x17
	.4byte	.LVL63
	.4byte	0xa61
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0xd304
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x1
	.byte	0xd6
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x382
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xd7
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x14
	.4byte	.LASF637
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x6e
	.4byte	0x355
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL60
	.4byte	0xa61
	.4byte	0x370
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x5607
	.byte	0
	.uleb128 0xe
	.4byte	.LVL62
	.4byte	0xa6d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x1
	.byte	0xd1
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ba
	.uleb128 0x18
	.4byte	.LASF642
	.byte	0x1
	.byte	0xd1
	.byte	0x3b
	.4byte	0x30
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x19
	.4byte	.LVL59
	.4byte	0x422
	.byte	0
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x1
	.byte	0xc5
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x41c
	.uleb128 0x18
	.4byte	.LASF642
	.byte	0x1
	.byte	0xc5
	.byte	0x3c
	.4byte	0x41c
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xc6
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x1a
	.4byte	.LASF645
	.byte	0x1
	.byte	0xc7
	.byte	0xe
	.4byte	0x75
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xe
	.4byte	.LVL54
	.4byte	0x4d2
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x30
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x1
	.byte	0xb8
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bd
	.uleb128 0x18
	.4byte	.LASF645
	.byte	0x1
	.byte	0xb8
	.byte	0x37
	.4byte	0x75
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.byte	0xb9
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x1a
	.4byte	.LASF647
	.byte	0x1
	.byte	0xba
	.byte	0x14
	.4byte	0x4cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF637
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x6e
	.4byte	0x485
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL49
	.4byte	0xa79
	.4byte	0x4ab
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0x8004
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL51
	.4byte	0xa6d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x62
	.4byte	0x4cd
	.uleb128 0x11
	.4byte	0x81
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	0x4bd
	.uleb128 0x1b
	.4byte	.LASF655
	.byte	0x1
	.byte	0x9f
	.byte	0x9
	.4byte	0x43
	.byte	0x1
	.4byte	0x516
	.uleb128 0x1c
	.4byte	.LASF645
	.byte	0x1
	.byte	0x9f
	.byte	0x38
	.4byte	0x1d8
	.uleb128 0x1d
	.4byte	.LASF647
	.byte	0x1
	.byte	0xa0
	.byte	0xd
	.4byte	0x516
	.uleb128 0x1d
	.4byte	.LASF648
	.byte	0x1
	.byte	0xa1
	.byte	0xd
	.4byte	0x43
	.uleb128 0x1e
	.4byte	.LASF637
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x6e
	.uleb128 0x15
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x30
	.4byte	0x526
	.uleb128 0x11
	.4byte	0x81
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF649
	.byte	0x1
	.byte	0x80
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x676
	.uleb128 0x18
	.4byte	.LASF650
	.byte	0x1
	.byte	0x80
	.byte	0x3a
	.4byte	0x676
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x1f
	.4byte	.LASF648
	.byte	0x1
	.byte	0x81
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1a
	.4byte	.LASF647
	.byte	0x1
	.byte	0x82
	.byte	0xd
	.4byte	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.4byte	.LVL23
	.4byte	0xa61
	.4byte	0x592
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x300
	.byte	0
	.uleb128 0x16
	.4byte	.LVL25
	.4byte	0xa85
	.4byte	0x5b1
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0xa91
	.4byte	0x5c5
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0xa91
	.4byte	0x5d9
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0xa91
	.4byte	0x5ed
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0xa91
	.4byte	0x601
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x16
	.4byte	.LVL31
	.4byte	0xa91
	.4byte	0x615
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x16
	.4byte	.LVL32
	.4byte	0xa91
	.4byte	0x629
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x16
	.4byte	.LVL33
	.4byte	0xa91
	.4byte	0x63d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x16
	.4byte	.LVL34
	.4byte	0xa91
	.4byte	0x651
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x16
	.4byte	.LVL35
	.4byte	0xa91
	.4byte	0x665
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.4byte	.LVL36
	.4byte	0xa91
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb5
	.uleb128 0x10
	.4byte	0x30
	.4byte	0x692
	.uleb128 0x11
	.4byte	0x81
	.byte	0x9
	.uleb128 0x11
	.4byte	0x81
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF651
	.byte	0x1
	.byte	0x7b
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e4
	.uleb128 0x18
	.4byte	.LASF652
	.byte	0x1
	.byte	0x7b
	.byte	0x29
	.4byte	0x6e4
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0xa9d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x202
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x56
	.uleb128 0x12
	.4byte	.LASF653
	.byte	0x1
	.byte	0x73
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x757
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x14
	.4byte	.LASF637
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x6e
	.4byte	0x72a
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL15
	.4byte	0xa61
	.4byte	0x745
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x104
	.byte	0
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0xa6d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF654
	.byte	0x1
	.byte	0x65
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7dc
	.uleb128 0x20
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x66
	.byte	0x14
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x68
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x14
	.4byte	.LASF637
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x6e
	.4byte	0x7a6
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL12
	.4byte	0xa79
	.4byte	0x7ca
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xe
	.4byte	.LVL14
	.4byte	0xa6d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF656
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0x43
	.byte	0x1
	.4byte	0x806
	.uleb128 0x1c
	.4byte	.LASF657
	.byte	0x1
	.byte	0x51
	.byte	0x20
	.4byte	0x9d
	.uleb128 0x1d
	.4byte	.LASF648
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.4byte	0x43
	.byte	0
	.uleb128 0x12
	.4byte	.LASF658
	.byte	0x1
	.byte	0x46
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88e
	.uleb128 0x18
	.4byte	.LASF659
	.byte	0x1
	.byte	0x46
	.byte	0x2e
	.4byte	0x41c
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x18
	.4byte	.LASF660
	.byte	0x1
	.byte	0x46
	.byte	0x3e
	.4byte	0x41c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1a
	.4byte	.LASF661
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0x56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x13
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.4byte	0x43
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xe
	.4byte	.LVL3
	.4byte	0xa9d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0xd100
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF662
	.byte	0x1
	.byte	0x3d
	.byte	0x9
	.4byte	0x43
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d1
	.uleb128 0x1a
	.4byte	.LASF657
	.byte	0x1
	.byte	0x3e
	.byte	0xa
	.4byte	0x8d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.4byte	.LVL71
	.4byte	0x1ee
	.uleb128 0xe
	.4byte	.LVL72
	.4byte	0x7dc
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0xa3
	.4byte	0x8e1
	.uleb128 0x11
	.4byte	0x81
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.4byte	.LASF674
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.4byte	0xaf
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	0x7dc
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98b
	.uleb128 0x24
	.4byte	0x7ed
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x25
	.4byte	0x7f9
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x26
	.4byte	0x7dc
	.4byte	.LBI4
	.byte	.LVU31
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0x973
	.uleb128 0x24
	.4byte	0x7ed
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x25
	.4byte	0x7f9
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xe
	.4byte	.LVL10
	.4byte	0xa85
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL6
	.4byte	0xa61
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0xd033
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x4d2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa55
	.uleb128 0x24
	.4byte	0x4e3
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x27
	.4byte	0x4ef
	.uleb128 0x25
	.4byte	0x4fb
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x26
	.4byte	0x4d2
	.4byte	.LBI8
	.byte	.LVU135
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x9f
	.byte	0x9
	.4byte	0xa3d
	.uleb128 0x24
	.4byte	0x4e3
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x28
	.4byte	0x4ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	0x4fb
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x16
	.4byte	.LVL42
	.4byte	0xa6d
	.4byte	0xa0d
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.uleb128 0x16
	.4byte	.LVL43
	.4byte	0xa85
	.4byte	0xa2c
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xe
	.4byte	.LVL45
	.4byte	0xaa9
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL39
	.4byte	0xa61
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x69
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0x8004
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LASF663
	.4byte	.LASF663
	.byte	0x5
	.byte	0x99
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF664
	.4byte	.LASF664
	.byte	0x5
	.byte	0x7e
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF637
	.4byte	.LASF637
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF665
	.4byte	.LASF665
	.byte	0x5
	.byte	0x8a
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF666
	.4byte	.LASF666
	.byte	0x5
	.byte	0x74
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF667
	.4byte	.LASF667
	.byte	0x6
	.byte	0x6c
	.byte	0x7
	.uleb128 0x29
	.4byte	.LASF668
	.4byte	.LASF668
	.byte	0x5
	.byte	0xa6
	.byte	0x9
	.uleb128 0x29
	.4byte	.LASF669
	.4byte	.LASF669
	.byte	0x6
	.byte	0x61
	.byte	0xa
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
.LVUS24:
	.uleb128 0
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 0
.LLST24:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL74
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU239
	.uleb128 0
.LLST25:
	.4byte	.LVL75
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU216
	.uleb128 .LVU219
.LLST23:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU203
	.uleb128 .LVU206
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU189
	.uleb128 .LVU192
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 0
.LLST20:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 0
.LLST18:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU172
	.uleb128 .LVU174
.LLST19:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 0
.LLST16:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU160
	.uleb128 0
.LLST17:
	.4byte	.LVL50
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU75
	.uleb128 .LVU79
	.uleb128 .LVU80
	.uleb128 .LVU84
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU55
	.uleb128 0
.LLST8:
	.4byte	.LVL16
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU47
	.uleb128 0
.LLST7:
	.4byte	.LVL13
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU13
	.uleb128 0
.LLST2:
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU29
	.uleb128 .LVU34
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU31
	.uleb128 .LVU38
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU35
	.uleb128 .LVU38
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU133
	.uleb128 .LVU137
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU135
	.uleb128 .LVU147
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU140
	.uleb128 .LVU144
.LLST15:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x2eb
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xab6
	.4byte	0x158
	.ascii	"sps30_read_device_status_register\000"
	.4byte	0x1ee
	.ascii	"sps30_wake_up\000"
	.4byte	0x21c
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
	.4byte	0x276
	.ascii	"sps30_sleep\000"
	.4byte	0x2a4
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
	.4byte	0x2e3
	.ascii	"sps30_reset\000"
	.4byte	0x315
	.ascii	"sps30_start_manual_fan_cleaning\000"
	.4byte	0x343
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
	.4byte	0x382
	.ascii	"sps30_set_fan_auto_cleaning_interval_days\000"
	.4byte	0x3ba
	.ascii	"sps30_get_fan_auto_cleaning_interval_days\000"
	.4byte	0x422
	.ascii	"sps30_set_fan_auto_cleaning_interval\000"
	.4byte	0x473
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
	.4byte	0x4d2
	.ascii	"sps30_get_fan_auto_cleaning_interval\000"
	.4byte	0x507
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
	.4byte	0x526
	.ascii	"sps30_read_measurement\000"
	.4byte	0x692
	.ascii	"sps30_read_data_ready\000"
	.4byte	0x6ea
	.ascii	"sps30_stop_measurement\000"
	.4byte	0x718
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
	.4byte	0x757
	.ascii	"sps30_start_measurement\000"
	.4byte	0x794
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
	.4byte	0x7dc
	.ascii	"sps30_get_serial\000"
	.4byte	0x806
	.ascii	"sps30_read_firmware_version\000"
	.4byte	0x88e
	.ascii	"sps30_probe\000"
	.4byte	0x8e1
	.ascii	"sps_get_driver_version\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x103
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xab6
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x3c
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x4f
	.ascii	"short int\000"
	.4byte	0x43
	.ascii	"int16_t\000"
	.4byte	0x67
	.ascii	"short unsigned int\000"
	.4byte	0x56
	.ascii	"uint16_t\000"
	.4byte	0x6e
	.ascii	"int\000"
	.4byte	0x81
	.ascii	"unsigned int\000"
	.4byte	0x75
	.ascii	"uint32_t\000"
	.4byte	0x88
	.ascii	"long long int\000"
	.4byte	0x8f
	.ascii	"long long unsigned int\000"
	.4byte	0x96
	.ascii	"long int\000"
	.4byte	0xa3
	.ascii	"char\000"
	.4byte	0x145
	.ascii	"float\000"
	.4byte	0xb5
	.ascii	"sps30_measurement\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
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
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB16
	.4byte	.LFE16
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
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF472
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF533
	.file 7 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_config.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF534
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdlib.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF535
	.file 9 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/__crossworks.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 10 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4b
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF591
	.byte	0x4
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF608
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
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.39.fe42d6eb18d369206696c6985313e641,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF532
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.39.ff21eb83ebfc80fb95245a821dd1e413,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF537
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF556
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdlib.h.48.46499b9a2c5c0782586f14a39a906a6b,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF563
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdbool.h.39.3758cb47b714dfcbf7837a03b10a6ad6,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF568
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sensirion_common.h.41.43ccc8be77c3e6633975b413ab3f9e5b,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF575
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sensirion_i2c.h.33.3e6706c398696b4ca211e48a502e08b9,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF575
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.sps30.h.43.2e489aded1272343c28ce432f39ca646,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF590
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
.LASF405:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF197:
	.ascii	"__FLT16_MIN_10_EXP__ (-4)\000"
.LASF222:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF486:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF229:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF334:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF421:
	.ascii	"__thumb2__ 1\000"
.LASF244:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF633:
	.ascii	"SPS_DRV_VERSION_STR\000"
.LASF521:
	.ascii	"INT16_C(x) (x)\000"
.LASF575:
	.ascii	"SENSIRION_MAX_BUFFER_WORDS 32\000"
.LASF466:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF324:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF555:
	.ascii	"__RAL_WCHAR_T __WCHAR_TYPE__\000"
.LASF216:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF209:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF621:
	.ascii	"char\000"
.LASF597:
	.ascii	"SPS_CMD_GET_DATA_READY 0x0202\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF436:
	.ascii	"__ARM_NEON__\000"
.LASF392:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF30:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF556:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF336:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF623:
	.ascii	"mc_2p5\000"
.LASF451:
	.ascii	"__ARM_FEATURE_MATMUL_INT8\000"
.LASF263:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
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
.LASF665:
	.ascii	"sensirion_i2c_write_cmd_with_args\000"
.LASF626:
	.ascii	"nc_0p5\000"
.LASF402:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF286:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF262:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF568:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF445:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF446:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF499:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF617:
	.ascii	"unsigned int\000"
.LASF657:
	.ascii	"serial\000"
.LASF661:
	.ascii	"version\000"
.LASF667:
	.ascii	"sensirion_common_bytes_to_float\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF25:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF40:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF412:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
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
.LASF668:
	.ascii	"sensirion_i2c_read_cmd\000"
.LASF369:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF163:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF58:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF250:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF195:
	.ascii	"__FLT16_DIG__ 3\000"
.LASF374:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF639:
	.ascii	"sps30_start_manual_fan_cleaning\000"
.LASF44:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF399:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF179:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF249:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF497:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
.LASF326:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF468:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF21:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF67:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF202:
	.ascii	"__FLT16_NORM_MAX__ 1.1\000"
.LASF669:
	.ascii	"sensirion_common_bytes_to_uint32_t\000"
.LASF403:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF476:
	.ascii	"INT8_MIN (-128)\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF390:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF648:
	.ascii	"error\000"
.LASF646:
	.ascii	"sps30_set_fan_auto_cleaning_interval\000"
.LASF31:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF634:
	.ascii	"sps30_read_device_status_register\000"
.LASF212:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF276:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF554:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF502:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF417:
	.ascii	"__ARM_ARCH 7\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF655:
	.ascii	"sps30_get_fan_auto_cleaning_interval\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF331:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF409:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF291:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF604:
	.ascii	"SPS_CMD_START_MANUAL_FAN_CLEANING 0x5607\000"
.LASF226:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF495:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF395:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF434:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF583:
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
.LASF397:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF340:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF425:
	.ascii	"__ARMEL__ 1\000"
.LASF638:
	.ascii	"sps30_reset\000"
.LASF507:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF569:
	.ascii	"NO_ERROR 0\000"
.LASF62:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF224:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF609:
	.ascii	"signed char\000"
.LASF600:
	.ascii	"SPS_CMD_GET_SERIAL 0xd033\000"
.LASF443:
	.ascii	"__FDPIC__\000"
.LASF180:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF511:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF664:
	.ascii	"sensirion_i2c_write_cmd\000"
.LASF430:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF332:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF616:
	.ascii	"uint32_t\000"
.LASF401:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF437:
	.ascii	"__ARM_NEON\000"
.LASF565:
	.ascii	"bool _Bool\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF651:
	.ascii	"sps30_read_data_ready\000"
.LASF68:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF157:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF221:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF538:
	.ascii	"__RAL_SIZE_T\000"
.LASF375:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF523:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF509:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF358:
	.ascii	"__SA_IBIT__ 16\000"
.LASF288:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF162:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF632:
	.ascii	"float\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF482:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF359:
	.ascii	"__DA_FBIT__ 31\000"
.LASF194:
	.ascii	"__FLT16_MANT_DIG__ 11\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF619:
	.ascii	"long long unsigned int\000"
.LASF671:
	.ascii	"C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My "
	.ascii	"Projects\\Progetto_tesi\\SENSIRION\\sps30.c\000"
.LASF459:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF304:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF612:
	.ascii	"int16_t\000"
.LASF223:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF599:
	.ascii	"SPS_CMD_GET_FIRMWARE_VERSION 0xd100\000"
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
.LASF605:
	.ascii	"SPS_CMD_WAKE_UP 0x1103\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF588:
	.ascii	"SPS30_DEVICE_STATUS_FAN_ERROR_MASK (1 << 4)\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF290:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF577:
	.ascii	"CRC_ERROR 1\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF284:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF53:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF547:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF281:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF325:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF595:
	.ascii	"SPS_CMD_READ_MEASUREMENT 0x0300\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF292:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF177:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF312:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF549:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF279:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF59:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF533:
	.ascii	"SENSIRION_COMMON_H \000"
.LASF238:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF472:
	.ascii	"SPS30_H \000"
.LASF672:
	.ascii	"C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My "
	.ascii	"Projects\\Progetto_tesi\\pca10040\\blank\\ses\000"
.LASF220:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF432:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF543:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF295:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF218:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF414:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF457:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF267:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF540:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF643:
	.ascii	"sps30_get_fan_auto_cleaning_interval_days\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF530:
	.ascii	"WCHAR_MAX __WCHAR_MAX__\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF481:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF204:
	.ascii	"__FLT16_EPSILON__ 1.1\000"
.LASF306:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF464:
	.ascii	"BOARD_PCA10040 1\000"
.LASF467:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF230:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF296:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF393:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF478:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF366:
	.ascii	"__USA_IBIT__ 16\000"
.LASF352:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF460:
	.ascii	"__HEAP_SIZE__ 8192\000"
.LASF444:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF636:
	.ascii	"sps30_sleep\000"
.LASF517:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF652:
	.ascii	"data_ready\000"
.LASF303:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF367:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF455:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF602:
	.ascii	"SPS_CMD_SLEEP 0x1001\000"
.LASF422:
	.ascii	"__THUMBEL__ 1\000"
.LASF188:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF360:
	.ascii	"__DA_IBIT__ 32\000"
.LASF27:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF316:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF553:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF630:
	.ascii	"nc_10p0\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF28:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF389:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF327:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF506:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF16:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF357:
	.ascii	"__SA_FBIT__ 15\000"
.LASF228:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF433:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF487:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF299:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF60:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF656:
	.ascii	"sps30_get_serial\000"
.LASF215:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF659:
	.ascii	"major\000"
.LASF48:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF465:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF608:
	.ascii	"SPS30_SERIAL_NUM_WORDS ((SPS30_MAX_SERIAL_LEN) / 2)"
	.ascii	"\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF373:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF348:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF408:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF494:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF46:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF584:
	.ascii	"SPS30_I2C_ADDRESS 0x69\000"
.LASF328:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF198:
	.ascii	"__FLT16_MAX_EXP__ 16\000"
.LASF471:
	.ascii	"NRF52_PAN_74 1\000"
.LASF329:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF537:
	.ascii	"__THREAD __thread\000"
.LASF240:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF447:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF282:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF36:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF416:
	.ascii	"__ARM_ARCH\000"
.LASF231:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF371:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF508:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF211:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF563:
	.ascii	"MB_CUR_MAX __RAL_mb_max(&__RAL_global_locale)\000"
.LASF311:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF64:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF546:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF166:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF301:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF589:
	.ascii	"SPS30_DEVICE_STATUS_LASER_ERROR_MASK (1 << 5)\000"
.LASF271:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1014\000"
.LASF210:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF500:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF473:
	.ascii	"__stdint_H \000"
.LASF237:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF252:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF496:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF63:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF236:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF649:
	.ascii	"sps30_read_measurement\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF321:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF431:
	.ascii	"__ARM_FP16_ARGS 1\000"
.LASF285:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF559:
	.ascii	"NULL 0\000"
.LASF598:
	.ascii	"SPS_CMD_AUTOCLEAN_INTERVAL 0x8004\000"
.LASF647:
	.ascii	"data\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF251:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF524:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF156:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF552:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF474:
	.ascii	"UINT8_MAX 255\000"
.LASF406:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF611:
	.ascii	"uint8_t\000"
.LASF514:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF449:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF275:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF458:
	.ascii	"__SES_ARM 1\000"
.LASF531:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF52:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF213:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF629:
	.ascii	"nc_4p0\000"
.LASF573:
	.ascii	"SENSIRION_WORD_SIZE 2\000"
.LASF462:
	.ascii	"__GNU_LINKER 1\000"
.LASF164:
	.ascii	"__DBL_DIG__ 15\000"
.LASF566:
	.ascii	"true 1\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF423:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF315:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF354:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF579:
	.ascii	"I2C_NACK_ERROR 3\000"
.LASF174:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF241:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF309:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF488:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF351:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF187:
	.ascii	"__LDBL_NORM_MAX__ 1.1\000"
.LASF424:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF353:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF155:
	.ascii	"__FLT_NORM_MAX__ 1.1\000"
.LASF618:
	.ascii	"long long int\000"
.LASF26:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF51:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF55:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF17:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF298:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF637:
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
.LASF256:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF582:
	.ascii	"CRC8_INIT 0xFF\000"
.LASF178:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF344:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF363:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF674:
	.ascii	"sps_get_driver_version\000"
.LASF419:
	.ascii	"__GCC_ASM_FLAG_OUTPUTS__ 1\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF456:
	.ascii	"__ELF__ 1\000"
.LASF413:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF398:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF323:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF644:
	.ascii	"word_buf\000"
.LASF270:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF35:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF173:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF548:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF207:
	.ascii	"__FLT16_HAS_INFINITY__ 1\000"
.LASF448:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF551:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF310:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF167:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF196:
	.ascii	"__FLT16_MIN_EXP__ (-13)\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF454:
	.ascii	"__ARM_BF16_FORMAT_ALTERNATIVE\000"
.LASF37:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF570:
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
.LASF512:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF23:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF660:
	.ascii	"minor\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF645:
	.ascii	"interval_seconds\000"
.LASF200:
	.ascii	"__FLT16_DECIMAL_DIG__ 5\000"
.LASF631:
	.ascii	"typical_particle_size\000"
.LASF268:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF320:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF272:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF662:
	.ascii	"sps30_probe\000"
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
.LASF217:
	.ascii	"__FLT32_NORM_MAX__ 1.1\000"
.LASF653:
	.ascii	"sps30_stop_measurement\000"
.LASF219:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF391:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF673:
	.ascii	"sps30_measurement\000"
.LASF461:
	.ascii	"__SES_VERSION 57001\000"
.LASF32:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF308:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF396:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF289:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF526:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF658:
	.ascii	"sps30_read_firmware_version\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF255:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF41:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF592:
	.ascii	"SPS_CMD_START_MEASUREMENT 0x0010\000"
.LASF663:
	.ascii	"sensirion_i2c_delayed_read_cmd\000"
.LASF485:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF407:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF338:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF415:
	.ascii	"__arm__ 1\000"
.LASF614:
	.ascii	"uint16_t\000"
.LASF372:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF206:
	.ascii	"__FLT16_HAS_DENORM__ 1\000"
.LASF541:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF57:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF341:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF257:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF305:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF622:
	.ascii	"mc_1p0\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF480:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF635:
	.ascii	"sps30_wake_up\000"
.LASF594:
	.ascii	"SPS_CMD_STOP_MEASUREMENT 0x0104\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF585:
	.ascii	"SPS30_MAX_SERIAL_LEN 32\000"
.LASF368:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF189:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF56:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF5:
	.ascii	"__GNUC__ 10\000"
.LASF66:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF492:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF510:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF519:
	.ascii	"INT8_C(x) (x)\000"
.LASF587:
	.ascii	"SPS30_RESET_DELAY_USEC 100000\000"
.LASF580:
	.ascii	"BYTE_NUM_ERROR 4\000"
.LASF345:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF350:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF411:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF504:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF613:
	.ascii	"short int\000"
.LASF274:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF532:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF628:
	.ascii	"nc_2p5\000"
.LASF347:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF45:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF243:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF452:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF620:
	.ascii	"long int\000"
.LASF19:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF365:
	.ascii	"__USA_FBIT__ 16\000"
.LASF182:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF339:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF581:
	.ascii	"CRC8_POLYNOMIAL 0x31\000"
.LASF277:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF516:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF242:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF654:
	.ascii	"sps30_start_measurement\000"
.LASF475:
	.ascii	"INT8_MAX 127\000"
.LASF542:
	.ascii	"__CODE \000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF248:
	.ascii	"__FLT32X_NORM_MAX__ 1.1\000"
.LASF501:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF314:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF193:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF43:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF586:
	.ascii	"SPS30_MEASUREMENT_DURATION_USEC 1000000\000"
.LASF185:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF435:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF343:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF264:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF560:
	.ascii	"EXIT_SUCCESS 0\000"
.LASF574:
	.ascii	"SENSIRION_NUM_WORDS(x) (sizeof(x) / SENSIRION_WORD_"
	.ascii	"SIZE)\000"
.LASF484:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF513:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
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
.LASF470:
	.ascii	"NRF52832_XXAA 1\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF477:
	.ascii	"UINT16_MAX 65535\000"
.LASF47:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF641:
	.ascii	"device_status_flags\000"
.LASF493:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF607:
	.ascii	"SPS_CMD_DELAY_WRITE_FLASH_USEC 20000\000"
.LASF483:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF54:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF557:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
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
.LASF601:
	.ascii	"SPS_CMD_RESET 0xd304\000"
.LASF426:
	.ascii	"__VFP_FP__ 1\000"
.LASF283:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF491:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF355:
	.ascii	"__HA_FBIT__ 7\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF544:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF578:
	.ascii	"I2C_BUS_ERROR 2\000"
.LASF297:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF625:
	.ascii	"mc_10p0\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF640:
	.ascii	"sps30_set_fan_auto_cleaning_interval_days\000"
.LASF319:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF518:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF259:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF346:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF349:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF356:
	.ascii	"__HA_IBIT__ 8\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF525:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF576:
	.ascii	"SENSIRION_I2C_H \000"
.LASF158:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF453:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF269:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF205:
	.ascii	"__FLT16_DENORM_MIN__ 1.1\000"
.LASF463:
	.ascii	"NDEBUG 1\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF172:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF208:
	.ascii	"__FLT16_HAS_QUIET_NAN__ 1\000"
.LASF650:
	.ascii	"measurement\000"
.LASF562:
	.ascii	"RAND_MAX 32767\000"
.LASF479:
	.ascii	"INT16_MAX 32767\000"
.LASF498:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF606:
	.ascii	"SPS_CMD_DELAY_USEC 5000\000"
.LASF489:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF590:
	.ascii	"SPS30_DEVICE_STATUS_FAN_SPEED_WARNING (1 << 21)\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF624:
	.ascii	"mc_4p0\000"
.LASF610:
	.ascii	"unsigned char\000"
.LASF39:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF539:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF550:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF441:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF642:
	.ascii	"interval_days\000"
.LASF302:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF469:
	.ascii	"NRF52 1\000"
.LASF627:
	.ascii	"nc_1p0\000"
.LASF261:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF561:
	.ascii	"EXIT_FAILURE 1\000"
.LASF65:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF536:
	.ascii	"__crossworks_H \000"
.LASF503:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF190:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF342:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF534:
	.ascii	"SENSIRION_CONFIG_H \000"
.LASF34:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF529:
	.ascii	"WCHAR_MIN __WCHAR_MIN__\000"
.LASF330:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF520:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF528:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF265:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF8:
	.ascii	"__VERSION__ \"10.3.1 20210824 (release)\"\000"
.LASF15:
	.ascii	"__OPTIMIZE_SIZE__ 1\000"
.LASF370:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF558:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF527:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF227:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF176:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF535:
	.ascii	"__stdlib_H \000"
.LASF170:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF61:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF161:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF18:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF571:
	.ascii	"ARRAY_SIZE(x) (sizeof(x) / sizeof(*(x)))\000"
.LASF38:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF564:
	.ascii	"__stdbool_h \000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF404:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF418:
	.ascii	"__APCS_32__ 1\000"
.LASF235:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF505:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF591:
	.ascii	"SPS_GIT_VERSION_H \000"
.LASF50:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF254:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF168:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF233:
	.ascii	"__FLT64_NORM_MAX__ 1.1\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF615:
	.ascii	"short unsigned int\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF362:
	.ascii	"__TA_IBIT__ 64\000"
.LASF22:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF666:
	.ascii	"sensirion_i2c_read_words_as_bytes\000"
.LASF253:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF596:
	.ascii	"SPS_CMD_START_STOP_DELAY_USEC 20000\000"
.LASF522:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF490:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF420:
	.ascii	"__thumb__ 1\000"
.LASF184:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF439:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF670:
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
.LASF175:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF203:
	.ascii	"__FLT16_MIN__ 1.1\000"
.LASF593:
	.ascii	"SPS_CMD_START_MEASUREMENT_ARG 0x0300\000"
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
.LASF567:
	.ascii	"false 0\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF186:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF603:
	.ascii	"SPS_CMD_READ_DEVICE_STATUS_REG 0xd206\000"
.LASF545:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF42:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF515:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF287:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF572:
	.ascii	"SENSIRION_COMMAND_SIZE 2\000"
.LASF234:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF427:
	.ascii	"__ARM_FP\000"
.LASF294:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF191:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
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
