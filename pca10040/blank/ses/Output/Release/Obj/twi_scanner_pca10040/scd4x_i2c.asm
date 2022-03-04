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
	.file	"scd4x_i2c.c"
	.text
.Ltext0:
	.section	.text.scd4x_start_periodic_measurement,"ax",%progbits
	.align	1
	.global	scd4x_start_periodic_measurement
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_start_periodic_measurement, %function
scd4x_start_periodic_measurement:
.LFB0:
	.file 1 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\scd4x_i2c.c"
	.loc 1 46 44 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 47 5 view .LVU1
	.loc 1 48 5 view .LVU2
	.loc 1 49 5 view .LVU3
.LVL0:
	.loc 1 50 5 view .LVU4
	.loc 1 46 44 is_stmt 0 view .LVU5
	push	{r0, r1, r4, lr}
.LCFI0:
	.loc 1 50 14 view .LVU6
	movw	r2, #8625
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL1:
	.loc 1 52 13 view .LVU7
	add	r1, sp, #4
	.loc 1 50 14 view .LVU8
	mov	r2, r0
.LVL2:
	.loc 1 52 5 is_stmt 1 view .LVU9
	.loc 1 52 13 is_stmt 0 view .LVU10
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL3:
	.loc 1 53 5 is_stmt 1 view .LVU11
	.loc 1 53 8 is_stmt 0 view .LVU12
	mov	r4, r0
	cbnz	r0, .L2
	.loc 1 56 5 is_stmt 1 view .LVU13
	mov	r0, #1000
.LVL4:
	.loc 1 56 5 is_stmt 0 view .LVU14
	bl	sensirion_i2c_hal_sleep_usec
.LVL5:
	.loc 1 57 5 is_stmt 1 view .LVU15
.L2:
	.loc 1 58 1 is_stmt 0 view .LVU16
	mov	r0, r4
	add	sp, sp, #8
.LCFI1:
	@ sp needed
	pop	{r4, pc}
.LFE0:
	.size	scd4x_start_periodic_measurement, .-scd4x_start_periodic_measurement
	.section	.text.scd4x_read_measurement_ticks,"ax",%progbits
	.align	1
	.global	scd4x_read_measurement_ticks
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_read_measurement_ticks, %function
scd4x_read_measurement_ticks:
.LVL6:
.LFB1:
	.loc 1 61 58 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 62 5 view .LVU18
	.loc 1 63 5 view .LVU19
	.loc 1 64 5 view .LVU20
	.loc 1 65 5 view .LVU21
	.loc 1 61 58 is_stmt 0 view .LVU22
	push	{r4, r5, r6, r7, lr}
.LCFI2:
	sub	sp, sp, #20
.LCFI3:
	.loc 1 61 58 view .LVU23
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	.loc 1 65 14 view .LVU24
	movs	r1, #0
.LVL7:
	.loc 1 65 14 view .LVU25
	movw	r2, #60421
.LVL8:
	.loc 1 65 14 view .LVU26
	add	r0, sp, #4
.LVL9:
	.loc 1 65 14 view .LVU27
	bl	sensirion_i2c_add_command_to_buffer
.LVL10:
	.loc 1 67 13 view .LVU28
	add	r1, sp, #4
	.loc 1 65 14 view .LVU29
	mov	r2, r0
.LVL11:
	.loc 1 67 5 is_stmt 1 view .LVU30
	.loc 1 67 13 is_stmt 0 view .LVU31
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL12:
	.loc 1 68 5 is_stmt 1 view .LVU32
	.loc 1 68 8 is_stmt 0 view .LVU33
	mov	r4, r0
	cbnz	r0, .L4
	.loc 1 72 5 is_stmt 1 view .LVU34
	mov	r0, #1000
.LVL13:
	.loc 1 72 5 is_stmt 0 view .LVU35
	bl	sensirion_i2c_hal_sleep_usec
.LVL14:
	.loc 1 74 5 is_stmt 1 view .LVU36
	.loc 1 74 13 is_stmt 0 view .LVU37
	movs	r2, #6
	add	r1, sp, #4
	movs	r0, #98
	bl	sensirion_i2c_read_data_inplace
.LVL15:
	.loc 1 75 5 is_stmt 1 view .LVU38
	.loc 1 75 8 is_stmt 0 view .LVU39
	mov	r4, r0
	cbnz	r0, .L4
	.loc 1 78 5 is_stmt 1 view .LVU40
	.loc 1 78 12 is_stmt 0 view .LVU41
	add	r0, sp, #4
.LVL16:
	.loc 1 78 12 view .LVU42
	bl	sensirion_common_bytes_to_uint16_t
.LVL17:
	.loc 1 78 10 view .LVU43
	strh	r0, [r7]	@ movhi
	.loc 1 79 5 is_stmt 1 view .LVU44
	.loc 1 79 20 is_stmt 0 view .LVU45
	add	r0, sp, #6
	bl	sensirion_common_bytes_to_uint16_t
.LVL18:
	.loc 1 79 18 view .LVU46
	strh	r0, [r6]	@ movhi
	.loc 1 80 5 is_stmt 1 view .LVU47
	.loc 1 80 17 is_stmt 0 view .LVU48
	add	r0, sp, #8
	bl	sensirion_common_bytes_to_uint16_t
.LVL19:
	.loc 1 80 15 view .LVU49
	strh	r0, [r5]	@ movhi
	.loc 1 81 5 is_stmt 1 view .LVU50
.L4:
	.loc 1 82 1 is_stmt 0 view .LVU51
	mov	r0, r4
	add	sp, sp, #20
.LCFI4:
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.loc 1 82 1 view .LVU52
.LFE1:
	.size	scd4x_read_measurement_ticks, .-scd4x_read_measurement_ticks
	.section	.text.scd4x_read_measurement,"ax",%progbits
	.align	1
	.global	scd4x_read_measurement
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_read_measurement, %function
scd4x_read_measurement:
.LVL20:
.LFB2:
	.loc 1 85 64 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 86 5 view .LVU54
	.loc 1 87 5 view .LVU55
	.loc 1 88 5 view .LVU56
	.loc 1 90 5 view .LVU57
	.loc 1 85 64 is_stmt 0 view .LVU58
	push	{r0, r1, r2, r4, r5, lr}
.LCFI5:
	.loc 1 85 64 view .LVU59
	mov	r5, r1
	mov	r4, r2
	.loc 1 90 13 view .LVU60
	add	r1, sp, #4
.LVL21:
	.loc 1 90 13 view .LVU61
	add	r2, sp, #6
.LVL22:
	.loc 1 90 13 view .LVU62
	bl	scd4x_read_measurement_ticks
.LVL23:
	.loc 1 91 5 is_stmt 1 view .LVU63
	.loc 1 91 8 is_stmt 0 view .LVU64
	cbnz	r0, .L6
	.loc 1 94 5 is_stmt 1 view .LVU65
	.loc 1 94 38 is_stmt 0 view .LVU66
	ldrh	r3, [sp, #4]
	.loc 1 94 36 view .LVU67
	movw	r2, #21875
	muls	r3, r2, r3
	.loc 1 94 60 view .LVU68
	asrs	r3, r3, #13
	.loc 1 94 67 view .LVU69
	sub	r3, r3, #44800
	subs	r3, r3, #200
	.loc 1 94 26 view .LVU70
	str	r3, [r5]
	.loc 1 95 5 is_stmt 1 view .LVU71
	.loc 1 95 40 is_stmt 0 view .LVU72
	ldrh	r3, [sp, #6]
	.loc 1 95 38 view .LVU73
	movw	r2, #12500
	muls	r3, r2, r3
	.loc 1 95 59 view .LVU74
	asrs	r3, r3, #13
	.loc 1 95 28 view .LVU75
	str	r3, [r4]
	.loc 1 96 5 is_stmt 1 view .LVU76
.L6:
	.loc 1 97 1 is_stmt 0 view .LVU77
	add	sp, sp, #12
.LCFI6:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 97 1 view .LVU78
.LFE2:
	.size	scd4x_read_measurement, .-scd4x_read_measurement
	.section	.text.scd4x_stop_periodic_measurement,"ax",%progbits
	.align	1
	.global	scd4x_stop_periodic_measurement
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_stop_periodic_measurement, %function
scd4x_stop_periodic_measurement:
.LFB3:
	.loc 1 99 43 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 100 5 view .LVU80
	.loc 1 101 5 view .LVU81
	.loc 1 102 5 view .LVU82
.LVL24:
	.loc 1 103 5 view .LVU83
	.loc 1 99 43 is_stmt 0 view .LVU84
	push	{r0, r1, r4, lr}
.LCFI7:
	.loc 1 103 14 view .LVU85
	movw	r2, #16262
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL25:
	.loc 1 105 13 view .LVU86
	add	r1, sp, #4
	.loc 1 103 14 view .LVU87
	mov	r2, r0
.LVL26:
	.loc 1 105 5 is_stmt 1 view .LVU88
	.loc 1 105 13 is_stmt 0 view .LVU89
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL27:
	.loc 1 106 5 is_stmt 1 view .LVU90
	.loc 1 106 8 is_stmt 0 view .LVU91
	mov	r4, r0
	cbnz	r0, .L8
	.loc 1 109 5 is_stmt 1 view .LVU92
	ldr	r0, .L9
.LVL28:
	.loc 1 109 5 is_stmt 0 view .LVU93
	bl	sensirion_i2c_hal_sleep_usec
.LVL29:
	.loc 1 110 5 is_stmt 1 view .LVU94
.L8:
	.loc 1 111 1 is_stmt 0 view .LVU95
	mov	r0, r4
	add	sp, sp, #8
.LCFI8:
	@ sp needed
	pop	{r4, pc}
.L10:
	.align	2
.L9:
	.word	500000
.LFE3:
	.size	scd4x_stop_periodic_measurement, .-scd4x_stop_periodic_measurement
	.section	.text.scd4x_get_temperature_offset_ticks,"ax",%progbits
	.align	1
	.global	scd4x_get_temperature_offset_ticks
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_get_temperature_offset_ticks, %function
scd4x_get_temperature_offset_ticks:
.LVL30:
.LFB4:
	.loc 1 113 64 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 114 5 view .LVU97
	.loc 1 115 5 view .LVU98
	.loc 1 116 5 view .LVU99
	.loc 1 117 5 view .LVU100
	.loc 1 113 64 is_stmt 0 view .LVU101
	push	{r0, r1, r2, r4, r5, lr}
.LCFI9:
	.loc 1 117 14 view .LVU102
	movw	r2, #8984
	movs	r1, #0
	.loc 1 113 64 view .LVU103
	mov	r5, r0
	.loc 1 117 14 view .LVU104
	add	r0, sp, #4
.LVL31:
	.loc 1 117 14 view .LVU105
	bl	sensirion_i2c_add_command_to_buffer
.LVL32:
	.loc 1 119 13 view .LVU106
	add	r1, sp, #4
	.loc 1 117 14 view .LVU107
	mov	r2, r0
.LVL33:
	.loc 1 119 5 is_stmt 1 view .LVU108
	.loc 1 119 13 is_stmt 0 view .LVU109
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL34:
	.loc 1 120 5 is_stmt 1 view .LVU110
	.loc 1 120 8 is_stmt 0 view .LVU111
	mov	r4, r0
	cbnz	r0, .L12
	.loc 1 124 5 is_stmt 1 view .LVU112
	mov	r0, #1000
.LVL35:
	.loc 1 124 5 is_stmt 0 view .LVU113
	bl	sensirion_i2c_hal_sleep_usec
.LVL36:
	.loc 1 126 5 is_stmt 1 view .LVU114
	.loc 1 126 13 is_stmt 0 view .LVU115
	movs	r2, #2
	add	r1, sp, #4
	movs	r0, #98
	bl	sensirion_i2c_read_data_inplace
.LVL37:
	.loc 1 127 5 is_stmt 1 view .LVU116
	.loc 1 127 8 is_stmt 0 view .LVU117
	mov	r4, r0
	cbnz	r0, .L12
	.loc 1 130 5 is_stmt 1 view .LVU118
	.loc 1 130 17 is_stmt 0 view .LVU119
	add	r0, sp, #4
.LVL38:
	.loc 1 130 17 view .LVU120
	bl	sensirion_common_bytes_to_uint16_t
.LVL39:
	.loc 1 130 15 view .LVU121
	strh	r0, [r5]	@ movhi
	.loc 1 131 5 is_stmt 1 view .LVU122
.L12:
	.loc 1 132 1 is_stmt 0 view .LVU123
	mov	r0, r4
	add	sp, sp, #12
.LCFI10:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 132 1 view .LVU124
.LFE4:
	.size	scd4x_get_temperature_offset_ticks, .-scd4x_get_temperature_offset_ticks
	.section	.text.scd4x_get_temperature_offset,"ax",%progbits
	.align	1
	.global	scd4x_get_temperature_offset
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_get_temperature_offset, %function
scd4x_get_temperature_offset:
.LVL40:
.LFB5:
	.loc 1 134 65 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 135 5 view .LVU126
	.loc 1 136 5 view .LVU127
	.loc 1 138 5 view .LVU128
	.loc 1 134 65 is_stmt 0 view .LVU129
	push	{r0, r1, r4, lr}
.LCFI11:
	.loc 1 134 65 view .LVU130
	mov	r4, r0
	.loc 1 138 13 view .LVU131
	add	r0, sp, #6
.LVL41:
	.loc 1 138 13 view .LVU132
	bl	scd4x_get_temperature_offset_ticks
.LVL42:
	.loc 1 139 5 is_stmt 1 view .LVU133
	.loc 1 139 8 is_stmt 0 view .LVU134
	cbnz	r0, .L14
	.loc 1 142 5 is_stmt 1 view .LVU135
	.loc 1 142 35 is_stmt 0 view .LVU136
	ldrh	r3, [sp, #6]
	.loc 1 142 33 view .LVU137
	movw	r2, #21875
	muls	r3, r2, r3
	.loc 1 142 54 view .LVU138
	asrs	r3, r3, #13
	.loc 1 142 23 view .LVU139
	str	r3, [r4]
	.loc 1 143 5 is_stmt 1 view .LVU140
.L14:
	.loc 1 144 1 is_stmt 0 view .LVU141
	add	sp, sp, #8
.LCFI12:
	@ sp needed
	pop	{r4, pc}
	.loc 1 144 1 view .LVU142
.LFE5:
	.size	scd4x_get_temperature_offset, .-scd4x_get_temperature_offset
	.section	.text.scd4x_set_temperature_offset_ticks,"ax",%progbits
	.align	1
	.global	scd4x_set_temperature_offset_ticks
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_set_temperature_offset_ticks, %function
scd4x_set_temperature_offset_ticks:
.LVL43:
.LFB6:
	.loc 1 146 63 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 147 5 view .LVU144
	.loc 1 148 5 view .LVU145
	.loc 1 149 5 view .LVU146
	.loc 1 150 5 view .LVU147
	.loc 1 146 63 is_stmt 0 view .LVU148
	push	{r0, r1, r4, lr}
.LCFI13:
	.loc 1 150 14 view .LVU149
	movw	r2, #9245
	.loc 1 146 63 view .LVU150
	mov	r4, r0
	.loc 1 150 14 view .LVU151
	movs	r1, #0
	mov	r0, sp
.LVL44:
	.loc 1 150 14 view .LVU152
	bl	sensirion_i2c_add_command_to_buffer
.LVL45:
	.loc 1 152 14 view .LVU153
	mov	r2, r4
	.loc 1 150 14 view .LVU154
	mov	r1, r0
.LVL46:
	.loc 1 152 5 is_stmt 1 view .LVU155
	.loc 1 152 14 is_stmt 0 view .LVU156
	mov	r0, sp
	bl	sensirion_i2c_add_uint16_t_to_buffer
.LVL47:
	.loc 1 154 13 view .LVU157
	mov	r1, sp
	.loc 1 152 14 view .LVU158
	mov	r2, r0
.LVL48:
	.loc 1 154 5 is_stmt 1 view .LVU159
	.loc 1 154 13 is_stmt 0 view .LVU160
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL49:
	.loc 1 155 5 is_stmt 1 view .LVU161
	.loc 1 155 8 is_stmt 0 view .LVU162
	mov	r4, r0
	cbnz	r0, .L16
	.loc 1 158 5 is_stmt 1 view .LVU163
	mov	r0, #1000
.LVL50:
	.loc 1 158 5 is_stmt 0 view .LVU164
	bl	sensirion_i2c_hal_sleep_usec
.LVL51:
	.loc 1 159 5 is_stmt 1 view .LVU165
.L16:
	.loc 1 160 1 is_stmt 0 view .LVU166
	mov	r0, r4
	add	sp, sp, #8
.LCFI14:
	@ sp needed
	pop	{r4, pc}
.LFE6:
	.size	scd4x_set_temperature_offset_ticks, .-scd4x_set_temperature_offset_ticks
	.section	.text.scd4x_set_temperature_offset,"ax",%progbits
	.align	1
	.global	scd4x_set_temperature_offset
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_set_temperature_offset, %function
scd4x_set_temperature_offset:
.LVL52:
.LFB7:
	.loc 1 162 64 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 163 5 view .LVU168
	.loc 1 164 5 view .LVU169
	.loc 1 163 54 is_stmt 0 view .LVU170
	movw	r3, #12271
	muls	r0, r3, r0
.LVL53:
	.loc 1 164 12 view .LVU171
	ubfx	r0, r0, #15, #16
	b	scd4x_set_temperature_offset_ticks
.LVL54:
.LFE7:
	.size	scd4x_set_temperature_offset, .-scd4x_set_temperature_offset
	.section	.text.scd4x_get_sensor_altitude,"ax",%progbits
	.align	1
	.global	scd4x_get_sensor_altitude
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_get_sensor_altitude, %function
scd4x_get_sensor_altitude:
.LVL55:
.LFB8:
	.loc 1 167 62 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 168 5 view .LVU173
	.loc 1 169 5 view .LVU174
	.loc 1 170 5 view .LVU175
	.loc 1 171 5 view .LVU176
	.loc 1 167 62 is_stmt 0 view .LVU177
	push	{r0, r1, r2, r4, r5, lr}
.LCFI15:
	.loc 1 171 14 view .LVU178
	movw	r2, #8994
	movs	r1, #0
	.loc 1 167 62 view .LVU179
	mov	r5, r0
	.loc 1 171 14 view .LVU180
	add	r0, sp, #4
.LVL56:
	.loc 1 171 14 view .LVU181
	bl	sensirion_i2c_add_command_to_buffer
.LVL57:
	.loc 1 173 13 view .LVU182
	add	r1, sp, #4
	.loc 1 171 14 view .LVU183
	mov	r2, r0
.LVL58:
	.loc 1 173 5 is_stmt 1 view .LVU184
	.loc 1 173 13 is_stmt 0 view .LVU185
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL59:
	.loc 1 174 5 is_stmt 1 view .LVU186
	.loc 1 174 8 is_stmt 0 view .LVU187
	mov	r4, r0
	cbnz	r0, .L19
	.loc 1 178 5 is_stmt 1 view .LVU188
	mov	r0, #1000
.LVL60:
	.loc 1 178 5 is_stmt 0 view .LVU189
	bl	sensirion_i2c_hal_sleep_usec
.LVL61:
	.loc 1 180 5 is_stmt 1 view .LVU190
	.loc 1 180 13 is_stmt 0 view .LVU191
	movs	r2, #2
	add	r1, sp, #4
	movs	r0, #98
	bl	sensirion_i2c_read_data_inplace
.LVL62:
	.loc 1 181 5 is_stmt 1 view .LVU192
	.loc 1 181 8 is_stmt 0 view .LVU193
	mov	r4, r0
	cbnz	r0, .L19
	.loc 1 184 5 is_stmt 1 view .LVU194
	.loc 1 184 24 is_stmt 0 view .LVU195
	add	r0, sp, #4
.LVL63:
	.loc 1 184 24 view .LVU196
	bl	sensirion_common_bytes_to_uint16_t
.LVL64:
	.loc 1 184 22 view .LVU197
	strh	r0, [r5]	@ movhi
	.loc 1 185 5 is_stmt 1 view .LVU198
.L19:
	.loc 1 186 1 is_stmt 0 view .LVU199
	mov	r0, r4
	add	sp, sp, #12
.LCFI16:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 186 1 view .LVU200
.LFE8:
	.size	scd4x_get_sensor_altitude, .-scd4x_get_sensor_altitude
	.section	.text.scd4x_set_sensor_altitude,"ax",%progbits
	.align	1
	.global	scd4x_set_sensor_altitude
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_set_sensor_altitude, %function
scd4x_set_sensor_altitude:
.LVL65:
.LFB9:
	.loc 1 188 61 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 189 5 view .LVU202
	.loc 1 190 5 view .LVU203
	.loc 1 191 5 view .LVU204
	.loc 1 192 5 view .LVU205
	.loc 1 188 61 is_stmt 0 view .LVU206
	push	{r0, r1, r4, lr}
.LCFI17:
	.loc 1 192 14 view .LVU207
	movw	r2, #9255
	.loc 1 188 61 view .LVU208
	mov	r4, r0
	.loc 1 192 14 view .LVU209
	movs	r1, #0
	mov	r0, sp
.LVL66:
	.loc 1 192 14 view .LVU210
	bl	sensirion_i2c_add_command_to_buffer
.LVL67:
	.loc 1 194 14 view .LVU211
	mov	r2, r4
	.loc 1 192 14 view .LVU212
	mov	r1, r0
.LVL68:
	.loc 1 194 5 is_stmt 1 view .LVU213
	.loc 1 194 14 is_stmt 0 view .LVU214
	mov	r0, sp
	bl	sensirion_i2c_add_uint16_t_to_buffer
.LVL69:
	.loc 1 197 13 view .LVU215
	mov	r1, sp
	.loc 1 194 14 view .LVU216
	mov	r2, r0
.LVL70:
	.loc 1 197 5 is_stmt 1 view .LVU217
	.loc 1 197 13 is_stmt 0 view .LVU218
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL71:
	.loc 1 198 5 is_stmt 1 view .LVU219
	.loc 1 198 8 is_stmt 0 view .LVU220
	mov	r4, r0
	cbnz	r0, .L21
	.loc 1 201 5 is_stmt 1 view .LVU221
	mov	r0, #1000
.LVL72:
	.loc 1 201 5 is_stmt 0 view .LVU222
	bl	sensirion_i2c_hal_sleep_usec
.LVL73:
	.loc 1 202 5 is_stmt 1 view .LVU223
.L21:
	.loc 1 203 1 is_stmt 0 view .LVU224
	mov	r0, r4
	add	sp, sp, #8
.LCFI18:
	@ sp needed
	pop	{r4, pc}
.LFE9:
	.size	scd4x_set_sensor_altitude, .-scd4x_set_sensor_altitude
	.section	.text.scd4x_set_ambient_pressure,"ax",%progbits
	.align	1
	.global	scd4x_set_ambient_pressure
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_set_ambient_pressure, %function
scd4x_set_ambient_pressure:
.LVL74:
.LFB10:
	.loc 1 205 63 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 206 5 view .LVU226
	.loc 1 207 5 view .LVU227
	.loc 1 208 5 view .LVU228
	.loc 1 209 5 view .LVU229
	.loc 1 205 63 is_stmt 0 view .LVU230
	push	{r0, r1, r4, lr}
.LCFI19:
	.loc 1 209 14 view .LVU231
	mov	r2, #57344
	.loc 1 205 63 view .LVU232
	mov	r4, r0
	.loc 1 209 14 view .LVU233
	movs	r1, #0
	mov	r0, sp
.LVL75:
	.loc 1 209 14 view .LVU234
	bl	sensirion_i2c_add_command_to_buffer
.LVL76:
	.loc 1 211 14 view .LVU235
	mov	r2, r4
	.loc 1 209 14 view .LVU236
	mov	r1, r0
.LVL77:
	.loc 1 211 5 is_stmt 1 view .LVU237
	.loc 1 211 14 is_stmt 0 view .LVU238
	mov	r0, sp
	bl	sensirion_i2c_add_uint16_t_to_buffer
.LVL78:
	.loc 1 214 13 view .LVU239
	mov	r1, sp
	.loc 1 211 14 view .LVU240
	mov	r2, r0
.LVL79:
	.loc 1 214 5 is_stmt 1 view .LVU241
	.loc 1 214 13 is_stmt 0 view .LVU242
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL80:
	.loc 1 215 5 is_stmt 1 view .LVU243
	.loc 1 215 8 is_stmt 0 view .LVU244
	mov	r4, r0
	cbnz	r0, .L23
	.loc 1 218 5 is_stmt 1 view .LVU245
	mov	r0, #1000
.LVL81:
	.loc 1 218 5 is_stmt 0 view .LVU246
	bl	sensirion_i2c_hal_sleep_usec
.LVL82:
	.loc 1 219 5 is_stmt 1 view .LVU247
.L23:
	.loc 1 220 1 is_stmt 0 view .LVU248
	mov	r0, r4
	add	sp, sp, #8
.LCFI20:
	@ sp needed
	pop	{r4, pc}
.LFE10:
	.size	scd4x_set_ambient_pressure, .-scd4x_set_ambient_pressure
	.section	.text.scd4x_perform_forced_recalibration,"ax",%progbits
	.align	1
	.global	scd4x_perform_forced_recalibration
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_perform_forced_recalibration, %function
scd4x_perform_forced_recalibration:
.LVL83:
.LFB11:
	.loc 1 223 70 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 224 5 view .LVU250
	.loc 1 225 5 view .LVU251
	.loc 1 226 5 view .LVU252
	.loc 1 227 5 view .LVU253
	.loc 1 223 70 is_stmt 0 view .LVU254
	push	{r0, r1, r2, r4, r5, lr}
.LCFI21:
	.loc 1 223 70 view .LVU255
	mov	r4, r0
	.loc 1 227 14 view .LVU256
	movw	r2, #13871
	.loc 1 223 70 view .LVU257
	mov	r5, r1
	.loc 1 227 14 view .LVU258
	mov	r0, sp
.LVL84:
	.loc 1 227 14 view .LVU259
	movs	r1, #0
.LVL85:
	.loc 1 227 14 view .LVU260
	bl	sensirion_i2c_add_command_to_buffer
.LVL86:
	.loc 1 229 14 view .LVU261
	mov	r2, r4
	.loc 1 227 14 view .LVU262
	mov	r1, r0
.LVL87:
	.loc 1 229 5 is_stmt 1 view .LVU263
	.loc 1 229 14 is_stmt 0 view .LVU264
	mov	r0, sp
	bl	sensirion_i2c_add_uint16_t_to_buffer
.LVL88:
	.loc 1 232 13 view .LVU265
	mov	r1, sp
	.loc 1 229 14 view .LVU266
	mov	r2, r0
.LVL89:
	.loc 1 232 5 is_stmt 1 view .LVU267
	.loc 1 232 13 is_stmt 0 view .LVU268
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL90:
	.loc 1 233 5 is_stmt 1 view .LVU269
	.loc 1 233 8 is_stmt 0 view .LVU270
	mov	r4, r0
	cbnz	r0, .L25
	.loc 1 237 5 is_stmt 1 view .LVU271
	ldr	r0, .L26
.LVL91:
	.loc 1 237 5 is_stmt 0 view .LVU272
	bl	sensirion_i2c_hal_sleep_usec
.LVL92:
	.loc 1 239 5 is_stmt 1 view .LVU273
	.loc 1 239 13 is_stmt 0 view .LVU274
	movs	r2, #2
	mov	r1, sp
	movs	r0, #98
	bl	sensirion_i2c_read_data_inplace
.LVL93:
	.loc 1 240 5 is_stmt 1 view .LVU275
	.loc 1 240 8 is_stmt 0 view .LVU276
	mov	r4, r0
	cbnz	r0, .L25
	.loc 1 243 5 is_stmt 1 view .LVU277
	.loc 1 243 23 is_stmt 0 view .LVU278
	mov	r0, sp
.LVL94:
	.loc 1 243 23 view .LVU279
	bl	sensirion_common_bytes_to_uint16_t
.LVL95:
	.loc 1 243 21 view .LVU280
	strh	r0, [r5]	@ movhi
	.loc 1 244 5 is_stmt 1 view .LVU281
.L25:
	.loc 1 245 1 is_stmt 0 view .LVU282
	mov	r0, r4
	add	sp, sp, #12
.LCFI22:
	@ sp needed
	pop	{r4, r5, pc}
.LVL96:
.L27:
	.loc 1 245 1 view .LVU283
	.align	2
.L26:
	.word	400000
.LFE11:
	.size	scd4x_perform_forced_recalibration, .-scd4x_perform_forced_recalibration
	.section	.text.scd4x_get_automatic_self_calibration,"ax",%progbits
	.align	1
	.global	scd4x_get_automatic_self_calibration
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_get_automatic_self_calibration, %function
scd4x_get_automatic_self_calibration:
.LVL97:
.LFB12:
	.loc 1 247 69 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 248 5 view .LVU285
	.loc 1 249 5 view .LVU286
	.loc 1 250 5 view .LVU287
	.loc 1 251 5 view .LVU288
	.loc 1 247 69 is_stmt 0 view .LVU289
	push	{r0, r1, r2, r4, r5, lr}
.LCFI23:
	.loc 1 251 14 view .LVU290
	movw	r2, #8979
	movs	r1, #0
	.loc 1 247 69 view .LVU291
	mov	r5, r0
	.loc 1 251 14 view .LVU292
	add	r0, sp, #4
.LVL98:
	.loc 1 251 14 view .LVU293
	bl	sensirion_i2c_add_command_to_buffer
.LVL99:
	.loc 1 253 13 view .LVU294
	add	r1, sp, #4
	.loc 1 251 14 view .LVU295
	mov	r2, r0
.LVL100:
	.loc 1 253 5 is_stmt 1 view .LVU296
	.loc 1 253 13 is_stmt 0 view .LVU297
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL101:
	.loc 1 254 5 is_stmt 1 view .LVU298
	.loc 1 254 8 is_stmt 0 view .LVU299
	mov	r4, r0
	cbnz	r0, .L29
	.loc 1 258 5 is_stmt 1 view .LVU300
	mov	r0, #1000
.LVL102:
	.loc 1 258 5 is_stmt 0 view .LVU301
	bl	sensirion_i2c_hal_sleep_usec
.LVL103:
	.loc 1 260 5 is_stmt 1 view .LVU302
	.loc 1 260 13 is_stmt 0 view .LVU303
	movs	r2, #2
	add	r1, sp, #4
	movs	r0, #98
	bl	sensirion_i2c_read_data_inplace
.LVL104:
	.loc 1 261 5 is_stmt 1 view .LVU304
	.loc 1 261 8 is_stmt 0 view .LVU305
	mov	r4, r0
	cbnz	r0, .L29
	.loc 1 264 5 is_stmt 1 view .LVU306
	.loc 1 264 20 is_stmt 0 view .LVU307
	add	r0, sp, #4
.LVL105:
	.loc 1 264 20 view .LVU308
	bl	sensirion_common_bytes_to_uint16_t
.LVL106:
	.loc 1 264 18 view .LVU309
	strh	r0, [r5]	@ movhi
	.loc 1 265 5 is_stmt 1 view .LVU310
.L29:
	.loc 1 266 1 is_stmt 0 view .LVU311
	mov	r0, r4
	add	sp, sp, #12
.LCFI24:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 266 1 view .LVU312
.LFE12:
	.size	scd4x_get_automatic_self_calibration, .-scd4x_get_automatic_self_calibration
	.section	.text.scd4x_set_automatic_self_calibration,"ax",%progbits
	.align	1
	.global	scd4x_set_automatic_self_calibration
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_set_automatic_self_calibration, %function
scd4x_set_automatic_self_calibration:
.LVL107:
.LFB13:
	.loc 1 268 68 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 269 5 view .LVU314
	.loc 1 270 5 view .LVU315
	.loc 1 271 5 view .LVU316
	.loc 1 272 5 view .LVU317
	.loc 1 268 68 is_stmt 0 view .LVU318
	push	{r0, r1, r4, lr}
.LCFI25:
	.loc 1 272 14 view .LVU319
	movw	r2, #9238
	.loc 1 268 68 view .LVU320
	mov	r4, r0
	.loc 1 272 14 view .LVU321
	movs	r1, #0
	mov	r0, sp
.LVL108:
	.loc 1 272 14 view .LVU322
	bl	sensirion_i2c_add_command_to_buffer
.LVL109:
	.loc 1 275 9 view .LVU323
	mov	r2, r4
	.loc 1 272 14 view .LVU324
	mov	r1, r0
.LVL110:
	.loc 1 274 5 is_stmt 1 view .LVU325
	.loc 1 275 9 is_stmt 0 view .LVU326
	mov	r0, sp
	bl	sensirion_i2c_add_uint16_t_to_buffer
.LVL111:
	.loc 1 277 13 view .LVU327
	mov	r1, sp
	.loc 1 275 9 view .LVU328
	mov	r2, r0
.LVL112:
	.loc 1 277 5 is_stmt 1 view .LVU329
	.loc 1 277 13 is_stmt 0 view .LVU330
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL113:
	.loc 1 278 5 is_stmt 1 view .LVU331
	.loc 1 278 8 is_stmt 0 view .LVU332
	mov	r4, r0
	cbnz	r0, .L31
	.loc 1 281 5 is_stmt 1 view .LVU333
	mov	r0, #1000
.LVL114:
	.loc 1 281 5 is_stmt 0 view .LVU334
	bl	sensirion_i2c_hal_sleep_usec
.LVL115:
	.loc 1 282 5 is_stmt 1 view .LVU335
.L31:
	.loc 1 283 1 is_stmt 0 view .LVU336
	mov	r0, r4
	add	sp, sp, #8
.LCFI26:
	@ sp needed
	pop	{r4, pc}
.LFE13:
	.size	scd4x_set_automatic_self_calibration, .-scd4x_set_automatic_self_calibration
	.section	.text.scd4x_start_low_power_periodic_measurement,"ax",%progbits
	.align	1
	.global	scd4x_start_low_power_periodic_measurement
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_start_low_power_periodic_measurement, %function
scd4x_start_low_power_periodic_measurement:
.LFB14:
	.loc 1 285 54 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 286 5 view .LVU338
	.loc 1 287 5 view .LVU339
.LVL116:
	.loc 1 288 5 view .LVU340
	.loc 1 285 54 is_stmt 0 view .LVU341
	push	{r0, r1, r2, lr}
.LCFI27:
	.loc 1 288 14 view .LVU342
	movw	r2, #8620
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL117:
	.loc 1 290 12 view .LVU343
	add	r1, sp, #4
	.loc 1 288 14 view .LVU344
	mov	r2, r0
.LVL118:
	.loc 1 290 5 is_stmt 1 view .LVU345
	.loc 1 290 12 is_stmt 0 view .LVU346
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL119:
	.loc 1 291 1 view .LVU347
	add	sp, sp, #12
.LCFI28:
	@ sp needed
	ldr	pc, [sp], #4
.LFE14:
	.size	scd4x_start_low_power_periodic_measurement, .-scd4x_start_low_power_periodic_measurement
	.section	.text.scd4x_get_data_ready_flag,"ax",%progbits
	.align	1
	.global	scd4x_get_data_ready_flag
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_get_data_ready_flag, %function
scd4x_get_data_ready_flag:
.LVL120:
.LFB15:
	.loc 1 293 58 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 294 5 view .LVU349
	.loc 1 295 5 view .LVU350
	.loc 1 296 5 view .LVU351
	.loc 1 297 5 view .LVU352
	.loc 1 298 5 view .LVU353
	.loc 1 293 58 is_stmt 0 view .LVU354
	push	{r0, r1, r2, r4, r5, lr}
.LCFI29:
	.loc 1 298 14 view .LVU355
	movw	r2, #58552
	movs	r1, #0
	.loc 1 293 58 view .LVU356
	mov	r5, r0
	.loc 1 298 14 view .LVU357
	add	r0, sp, #4
.LVL121:
	.loc 1 298 14 view .LVU358
	bl	sensirion_i2c_add_command_to_buffer
.LVL122:
	.loc 1 300 13 view .LVU359
	add	r1, sp, #4
	.loc 1 298 14 view .LVU360
	mov	r2, r0
.LVL123:
	.loc 1 300 5 is_stmt 1 view .LVU361
	.loc 1 300 13 is_stmt 0 view .LVU362
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL124:
	.loc 1 301 5 is_stmt 1 view .LVU363
	.loc 1 301 8 is_stmt 0 view .LVU364
	mov	r4, r0
	cbnz	r0, .L34
	.loc 1 305 5 is_stmt 1 view .LVU365
	mov	r0, #1000
.LVL125:
	.loc 1 305 5 is_stmt 0 view .LVU366
	bl	sensirion_i2c_hal_sleep_usec
.LVL126:
	.loc 1 307 5 is_stmt 1 view .LVU367
	.loc 1 307 13 is_stmt 0 view .LVU368
	movs	r2, #2
	add	r1, sp, #4
	movs	r0, #98
	bl	sensirion_i2c_read_data_inplace
.LVL127:
	.loc 1 308 5 is_stmt 1 view .LVU369
	.loc 1 308 8 is_stmt 0 view .LVU370
	mov	r4, r0
	cbnz	r0, .L34
	.loc 1 311 5 is_stmt 1 view .LVU371
	.loc 1 311 24 is_stmt 0 view .LVU372
	add	r0, sp, #4
.LVL128:
	.loc 1 311 24 view .LVU373
	bl	sensirion_common_bytes_to_uint16_t
.LVL129:
	.loc 1 312 5 is_stmt 1 view .LVU374
	.loc 1 312 52 is_stmt 0 view .LVU375
	ubfx	r3, r0, #0, #11
	subs	r3, r3, #0
	it	ne
	movne	r3, #1
	strb	r3, [r5]
	.loc 1 313 5 is_stmt 1 view .LVU376
.LVL130:
.L34:
	.loc 1 314 1 is_stmt 0 view .LVU377
	mov	r0, r4
	add	sp, sp, #12
.LCFI30:
	@ sp needed
	pop	{r4, r5, pc}
	.loc 1 314 1 view .LVU378
.LFE15:
	.size	scd4x_get_data_ready_flag, .-scd4x_get_data_ready_flag
	.section	.text.scd4x_persist_settings,"ax",%progbits
	.align	1
	.global	scd4x_persist_settings
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_persist_settings, %function
scd4x_persist_settings:
.LFB16:
	.loc 1 316 34 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 317 5 view .LVU380
	.loc 1 318 5 view .LVU381
	.loc 1 319 5 view .LVU382
.LVL131:
	.loc 1 320 5 view .LVU383
	.loc 1 316 34 is_stmt 0 view .LVU384
	push	{r0, r1, r4, lr}
.LCFI31:
	.loc 1 320 14 view .LVU385
	movw	r2, #13845
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL132:
	.loc 1 322 13 view .LVU386
	add	r1, sp, #4
	.loc 1 320 14 view .LVU387
	mov	r2, r0
.LVL133:
	.loc 1 322 5 is_stmt 1 view .LVU388
	.loc 1 322 13 is_stmt 0 view .LVU389
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL134:
	.loc 1 323 5 is_stmt 1 view .LVU390
	.loc 1 323 8 is_stmt 0 view .LVU391
	mov	r4, r0
	cbnz	r0, .L36
	.loc 1 326 5 is_stmt 1 view .LVU392
	ldr	r0, .L37
.LVL135:
	.loc 1 326 5 is_stmt 0 view .LVU393
	bl	sensirion_i2c_hal_sleep_usec
.LVL136:
	.loc 1 327 5 is_stmt 1 view .LVU394
.L36:
	.loc 1 328 1 is_stmt 0 view .LVU395
	mov	r0, r4
	add	sp, sp, #8
.LCFI32:
	@ sp needed
	pop	{r4, pc}
.L38:
	.align	2
.L37:
	.word	800000
.LFE16:
	.size	scd4x_persist_settings, .-scd4x_persist_settings
	.section	.text.scd4x_get_serial_number,"ax",%progbits
	.align	1
	.global	scd4x_get_serial_number
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_get_serial_number, %function
scd4x_get_serial_number:
.LVL137:
.LFB17:
	.loc 1 331 53 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 332 5 view .LVU397
	.loc 1 333 5 view .LVU398
	.loc 1 334 5 view .LVU399
	.loc 1 335 5 view .LVU400
	.loc 1 331 53 is_stmt 0 view .LVU401
	push	{r4, r5, r6, r7, lr}
.LCFI33:
	sub	sp, sp, #20
.LCFI34:
	.loc 1 331 53 view .LVU402
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	.loc 1 335 14 view .LVU403
	movs	r1, #0
.LVL138:
	.loc 1 335 14 view .LVU404
	movw	r2, #13954
.LVL139:
	.loc 1 335 14 view .LVU405
	add	r0, sp, #4
.LVL140:
	.loc 1 335 14 view .LVU406
	bl	sensirion_i2c_add_command_to_buffer
.LVL141:
	.loc 1 337 13 view .LVU407
	add	r1, sp, #4
	.loc 1 335 14 view .LVU408
	mov	r2, r0
.LVL142:
	.loc 1 337 5 is_stmt 1 view .LVU409
	.loc 1 337 13 is_stmt 0 view .LVU410
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL143:
	.loc 1 338 5 is_stmt 1 view .LVU411
	.loc 1 338 8 is_stmt 0 view .LVU412
	mov	r4, r0
	cbnz	r0, .L40
	.loc 1 342 5 is_stmt 1 view .LVU413
	mov	r0, #1000
.LVL144:
	.loc 1 342 5 is_stmt 0 view .LVU414
	bl	sensirion_i2c_hal_sleep_usec
.LVL145:
	.loc 1 344 5 is_stmt 1 view .LVU415
	.loc 1 344 13 is_stmt 0 view .LVU416
	movs	r2, #6
	add	r1, sp, #4
	movs	r0, #98
	bl	sensirion_i2c_read_data_inplace
.LVL146:
	.loc 1 345 5 is_stmt 1 view .LVU417
	.loc 1 345 8 is_stmt 0 view .LVU418
	mov	r4, r0
	cbnz	r0, .L40
	.loc 1 348 5 is_stmt 1 view .LVU419
	.loc 1 348 17 is_stmt 0 view .LVU420
	add	r0, sp, #4
.LVL147:
	.loc 1 348 17 view .LVU421
	bl	sensirion_common_bytes_to_uint16_t
.LVL148:
	.loc 1 348 15 view .LVU422
	strh	r0, [r7]	@ movhi
	.loc 1 349 5 is_stmt 1 view .LVU423
	.loc 1 349 17 is_stmt 0 view .LVU424
	add	r0, sp, #6
	bl	sensirion_common_bytes_to_uint16_t
.LVL149:
	.loc 1 349 15 view .LVU425
	strh	r0, [r6]	@ movhi
	.loc 1 350 5 is_stmt 1 view .LVU426
	.loc 1 350 17 is_stmt 0 view .LVU427
	add	r0, sp, #8
	bl	sensirion_common_bytes_to_uint16_t
.LVL150:
	.loc 1 350 15 view .LVU428
	strh	r0, [r5]	@ movhi
	.loc 1 351 5 is_stmt 1 view .LVU429
.L40:
	.loc 1 352 1 is_stmt 0 view .LVU430
	mov	r0, r4
	add	sp, sp, #20
.LCFI35:
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.loc 1 352 1 view .LVU431
.LFE17:
	.size	scd4x_get_serial_number, .-scd4x_get_serial_number
	.section	.text.scd4x_perform_self_test,"ax",%progbits
	.align	1
	.global	scd4x_perform_self_test
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_perform_self_test, %function
scd4x_perform_self_test:
.LVL151:
.LFB18:
	.loc 1 354 58 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 355 5 view .LVU433
	.loc 1 356 5 view .LVU434
	.loc 1 357 5 view .LVU435
	.loc 1 358 5 view .LVU436
	.loc 1 354 58 is_stmt 0 view .LVU437
	push	{r0, r1, r2, r4, r5, lr}
.LCFI36:
	.loc 1 358 14 view .LVU438
	movw	r2, #13881
	movs	r1, #0
	.loc 1 354 58 view .LVU439
	mov	r5, r0
	.loc 1 358 14 view .LVU440
	add	r0, sp, #4
.LVL152:
	.loc 1 358 14 view .LVU441
	bl	sensirion_i2c_add_command_to_buffer
.LVL153:
	.loc 1 360 13 view .LVU442
	add	r1, sp, #4
	.loc 1 358 14 view .LVU443
	mov	r2, r0
.LVL154:
	.loc 1 360 5 is_stmt 1 view .LVU444
	.loc 1 360 13 is_stmt 0 view .LVU445
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL155:
	.loc 1 361 5 is_stmt 1 view .LVU446
	.loc 1 361 8 is_stmt 0 view .LVU447
	mov	r4, r0
	cbnz	r0, .L42
	.loc 1 365 5 is_stmt 1 view .LVU448
	ldr	r0, .L43
.LVL156:
	.loc 1 365 5 is_stmt 0 view .LVU449
	bl	sensirion_i2c_hal_sleep_usec
.LVL157:
	.loc 1 367 5 is_stmt 1 view .LVU450
	.loc 1 367 13 is_stmt 0 view .LVU451
	movs	r2, #2
	add	r1, sp, #4
	movs	r0, #98
	bl	sensirion_i2c_read_data_inplace
.LVL158:
	.loc 1 368 5 is_stmt 1 view .LVU452
	.loc 1 368 8 is_stmt 0 view .LVU453
	mov	r4, r0
	cbnz	r0, .L42
	.loc 1 371 5 is_stmt 1 view .LVU454
	.loc 1 371 22 is_stmt 0 view .LVU455
	add	r0, sp, #4
.LVL159:
	.loc 1 371 22 view .LVU456
	bl	sensirion_common_bytes_to_uint16_t
.LVL160:
	.loc 1 371 20 view .LVU457
	strh	r0, [r5]	@ movhi
	.loc 1 372 5 is_stmt 1 view .LVU458
.L42:
	.loc 1 373 1 is_stmt 0 view .LVU459
	mov	r0, r4
	add	sp, sp, #12
.LCFI37:
	@ sp needed
	pop	{r4, r5, pc}
.LVL161:
.L44:
	.loc 1 373 1 view .LVU460
	.align	2
.L43:
	.word	10000000
.LFE18:
	.size	scd4x_perform_self_test, .-scd4x_perform_self_test
	.section	.text.scd4x_perform_factory_reset,"ax",%progbits
	.align	1
	.global	scd4x_perform_factory_reset
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_perform_factory_reset, %function
scd4x_perform_factory_reset:
.LFB19:
	.loc 1 375 39 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 376 5 view .LVU462
	.loc 1 377 5 view .LVU463
	.loc 1 378 5 view .LVU464
.LVL162:
	.loc 1 379 5 view .LVU465
	.loc 1 375 39 is_stmt 0 view .LVU466
	push	{r0, r1, r4, lr}
.LCFI38:
	.loc 1 379 14 view .LVU467
	movw	r2, #13874
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL163:
	.loc 1 381 13 view .LVU468
	add	r1, sp, #4
	.loc 1 379 14 view .LVU469
	mov	r2, r0
.LVL164:
	.loc 1 381 5 is_stmt 1 view .LVU470
	.loc 1 381 13 is_stmt 0 view .LVU471
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL165:
	.loc 1 382 5 is_stmt 1 view .LVU472
	.loc 1 382 8 is_stmt 0 view .LVU473
	mov	r4, r0
	cbnz	r0, .L46
	.loc 1 385 5 is_stmt 1 view .LVU474
	ldr	r0, .L47
.LVL166:
	.loc 1 385 5 is_stmt 0 view .LVU475
	bl	sensirion_i2c_hal_sleep_usec
.LVL167:
	.loc 1 386 5 is_stmt 1 view .LVU476
.L46:
	.loc 1 387 1 is_stmt 0 view .LVU477
	mov	r0, r4
	add	sp, sp, #8
.LCFI39:
	@ sp needed
	pop	{r4, pc}
.L48:
	.align	2
.L47:
	.word	800000
.LFE19:
	.size	scd4x_perform_factory_reset, .-scd4x_perform_factory_reset
	.section	.text.scd4x_reinit,"ax",%progbits
	.align	1
	.global	scd4x_reinit
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_reinit, %function
scd4x_reinit:
.LFB20:
	.loc 1 389 24 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 390 5 view .LVU479
	.loc 1 391 5 view .LVU480
	.loc 1 392 5 view .LVU481
.LVL168:
	.loc 1 393 5 view .LVU482
	.loc 1 389 24 is_stmt 0 view .LVU483
	push	{r0, r1, r4, lr}
.LCFI40:
	.loc 1 393 14 view .LVU484
	movw	r2, #13894
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL169:
	.loc 1 395 13 view .LVU485
	add	r1, sp, #4
	.loc 1 393 14 view .LVU486
	mov	r2, r0
.LVL170:
	.loc 1 395 5 is_stmt 1 view .LVU487
	.loc 1 395 13 is_stmt 0 view .LVU488
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL171:
	.loc 1 396 5 is_stmt 1 view .LVU489
	.loc 1 396 8 is_stmt 0 view .LVU490
	mov	r4, r0
	cbnz	r0, .L50
	.loc 1 399 5 is_stmt 1 view .LVU491
	movw	r0, #20000
.LVL172:
	.loc 1 399 5 is_stmt 0 view .LVU492
	bl	sensirion_i2c_hal_sleep_usec
.LVL173:
	.loc 1 400 5 is_stmt 1 view .LVU493
.L50:
	.loc 1 401 1 is_stmt 0 view .LVU494
	mov	r0, r4
	add	sp, sp, #8
.LCFI41:
	@ sp needed
	pop	{r4, pc}
.LFE20:
	.size	scd4x_reinit, .-scd4x_reinit
	.section	.text.scd4x_measure_single_shot,"ax",%progbits
	.align	1
	.global	scd4x_measure_single_shot
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_measure_single_shot, %function
scd4x_measure_single_shot:
.LFB21:
	.loc 1 403 37 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 404 5 view .LVU496
	.loc 1 405 5 view .LVU497
	.loc 1 406 5 view .LVU498
.LVL174:
	.loc 1 407 5 view .LVU499
	.loc 1 403 37 is_stmt 0 view .LVU500
	push	{r0, r1, r4, lr}
.LCFI42:
	.loc 1 407 14 view .LVU501
	movw	r2, #8605
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL175:
	.loc 1 409 13 view .LVU502
	add	r1, sp, #4
	.loc 1 407 14 view .LVU503
	mov	r2, r0
.LVL176:
	.loc 1 409 5 is_stmt 1 view .LVU504
	.loc 1 409 13 is_stmt 0 view .LVU505
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL177:
	.loc 1 410 5 is_stmt 1 view .LVU506
	.loc 1 410 8 is_stmt 0 view .LVU507
	mov	r4, r0
	cbnz	r0, .L52
	.loc 1 413 5 is_stmt 1 view .LVU508
	ldr	r0, .L53
.LVL178:
	.loc 1 413 5 is_stmt 0 view .LVU509
	bl	sensirion_i2c_hal_sleep_usec
.LVL179:
	.loc 1 414 5 is_stmt 1 view .LVU510
.L52:
	.loc 1 415 1 is_stmt 0 view .LVU511
	mov	r0, r4
	add	sp, sp, #8
.LCFI43:
	@ sp needed
	pop	{r4, pc}
.L54:
	.align	2
.L53:
	.word	5000000
.LFE21:
	.size	scd4x_measure_single_shot, .-scd4x_measure_single_shot
	.section	.text.scd4x_measure_single_shot_rht_only,"ax",%progbits
	.align	1
	.global	scd4x_measure_single_shot_rht_only
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_measure_single_shot_rht_only, %function
scd4x_measure_single_shot_rht_only:
.LFB22:
	.loc 1 417 46 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 418 5 view .LVU513
	.loc 1 419 5 view .LVU514
	.loc 1 420 5 view .LVU515
.LVL180:
	.loc 1 421 5 view .LVU516
	.loc 1 417 46 is_stmt 0 view .LVU517
	push	{r0, r1, r4, lr}
.LCFI44:
	.loc 1 421 14 view .LVU518
	movw	r2, #8598
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL181:
	.loc 1 423 13 view .LVU519
	add	r1, sp, #4
	.loc 1 421 14 view .LVU520
	mov	r2, r0
.LVL182:
	.loc 1 423 5 is_stmt 1 view .LVU521
	.loc 1 423 13 is_stmt 0 view .LVU522
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL183:
	.loc 1 424 5 is_stmt 1 view .LVU523
	.loc 1 424 8 is_stmt 0 view .LVU524
	mov	r4, r0
	cbnz	r0, .L56
	.loc 1 427 5 is_stmt 1 view .LVU525
	movw	r0, #50000
.LVL184:
	.loc 1 427 5 is_stmt 0 view .LVU526
	bl	sensirion_i2c_hal_sleep_usec
.LVL185:
	.loc 1 428 5 is_stmt 1 view .LVU527
.L56:
	.loc 1 429 1 is_stmt 0 view .LVU528
	mov	r0, r4
	add	sp, sp, #8
.LCFI45:
	@ sp needed
	pop	{r4, pc}
.LFE22:
	.size	scd4x_measure_single_shot_rht_only, .-scd4x_measure_single_shot_rht_only
	.section	.text.scd4x_power_down,"ax",%progbits
	.align	1
	.global	scd4x_power_down
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_power_down, %function
scd4x_power_down:
.LFB23:
	.loc 1 431 28 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 432 5 view .LVU530
	.loc 1 433 5 view .LVU531
	.loc 1 434 5 view .LVU532
.LVL186:
	.loc 1 435 5 view .LVU533
	.loc 1 431 28 is_stmt 0 view .LVU534
	push	{r0, r1, r4, lr}
.LCFI46:
	.loc 1 435 14 view .LVU535
	movw	r2, #14048
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL187:
	.loc 1 437 13 view .LVU536
	add	r1, sp, #4
	.loc 1 435 14 view .LVU537
	mov	r2, r0
.LVL188:
	.loc 1 437 5 is_stmt 1 view .LVU538
	.loc 1 437 13 is_stmt 0 view .LVU539
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL189:
	.loc 1 438 5 is_stmt 1 view .LVU540
	.loc 1 438 8 is_stmt 0 view .LVU541
	mov	r4, r0
	cbnz	r0, .L58
	.loc 1 441 5 is_stmt 1 view .LVU542
	mov	r0, #1000
.LVL190:
	.loc 1 441 5 is_stmt 0 view .LVU543
	bl	sensirion_i2c_hal_sleep_usec
.LVL191:
	.loc 1 442 5 is_stmt 1 view .LVU544
.L58:
	.loc 1 443 1 is_stmt 0 view .LVU545
	mov	r0, r4
	add	sp, sp, #8
.LCFI47:
	@ sp needed
	pop	{r4, pc}
.LFE23:
	.size	scd4x_power_down, .-scd4x_power_down
	.section	.text.scd4x_wake_up,"ax",%progbits
	.align	1
	.global	scd4x_wake_up
	.syntax unified
	.thumb
	.thumb_func
	.type	scd4x_wake_up, %function
scd4x_wake_up:
.LFB24:
	.loc 1 445 25 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 446 5 view .LVU547
	.loc 1 447 5 view .LVU548
.LVL192:
	.loc 1 448 5 view .LVU549
	.loc 1 445 25 is_stmt 0 view .LVU550
	push	{r0, r1, r2, lr}
.LCFI48:
	.loc 1 448 14 view .LVU551
	movw	r2, #14070
	movs	r1, #0
	add	r0, sp, #4
	bl	sensirion_i2c_add_command_to_buffer
.LVL193:
	.loc 1 451 11 view .LVU552
	add	r1, sp, #4
	.loc 1 448 14 view .LVU553
	mov	r2, r0
.LVL194:
	.loc 1 451 5 is_stmt 1 view .LVU554
	.loc 1 451 11 is_stmt 0 view .LVU555
	movs	r0, #98
	bl	sensirion_i2c_write_data
.LVL195:
	.loc 1 452 5 is_stmt 1 view .LVU556
	movw	r0, #20000
	bl	sensirion_i2c_hal_sleep_usec
.LVL196:
	.loc 1 453 5 view .LVU557
	.loc 1 454 1 is_stmt 0 view .LVU558
	movs	r0, #0
	add	sp, sp, #12
.LCFI49:
	@ sp needed
	ldr	pc, [sp], #4
.LFE24:
	.size	scd4x_wake_up, .-scd4x_wake_up
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
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x14
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
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x14
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI5-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI7-.LFB3
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI9-.LFB4
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
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI11-.LFB5
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI13-.LFB6
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
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0xc
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
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI19-.LFB10
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI21-.LFB11
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI23-.LFB12
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI25-.LFB13
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI27-.LFB14
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI29-.LFB15
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI31-.LFB16
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI33-.LFB17
	.byte	0xe
	.uleb128 0x14
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
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x14
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI36-.LFB18
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI38-.LFB19
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI40-.LFB20
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI42-.LFB21
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI44-.LFB22
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI46-.LFB23
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI48-.LFB24
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE48:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdint.h"
	.file 3 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_i2c.h"
	.file 4 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_i2c_hal.h"
	.file 5 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_common.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x13f9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF651
	.byte	0xc
	.4byte	.LASF652
	.4byte	.LASF653
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF586
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF587
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF588
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF589
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF590
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF591
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF592
	.uleb128 0x4
	.4byte	.LASF593
	.byte	0x2
	.byte	0x2a
	.byte	0x1c
	.4byte	0x45
	.uleb128 0x4
	.4byte	.LASF594
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.4byte	0x79
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF595
	.uleb128 0x4
	.4byte	.LASF596
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x4c
	.uleb128 0x4
	.4byte	.LASF597
	.byte	0x2
	.byte	0x36
	.byte	0x1c
	.4byte	0x29
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF598
	.uleb128 0x5
	.4byte	.LASF599
	.byte	0x1
	.2byte	0x1bd
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12b
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x1be
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x1bf
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x8
	.4byte	.LVL193
	.4byte	0x13b2
	.4byte	0xff
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x36f6
	.byte	0
	.uleb128 0x8
	.4byte	.LVL195
	.4byte	0x13be
	.4byte	0x119
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL196
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4e20
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x61
	.4byte	0x13b
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF600
	.byte	0x1
	.2byte	0x1af
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dc
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x1b0
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x1b1
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x1b2
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x8
	.4byte	.LVL187
	.4byte	0x13b2
	.4byte	0x1b0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x36e0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL189
	.4byte	0x13be
	.4byte	0x1ca
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL191
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF604
	.byte	0x1
	.2byte	0x1a1
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27d
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x1a2
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x1a3
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x1a4
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x8
	.4byte	.LVL181
	.4byte	0x13b2
	.4byte	0x251
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2196
	.byte	0
	.uleb128 0x8
	.4byte	.LVL183
	.4byte	0x13be
	.4byte	0x26b
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL185
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0xc350
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF605
	.byte	0x1
	.2byte	0x193
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x320
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x194
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x195
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x196
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x8
	.4byte	.LVL175
	.4byte	0x13b2
	.4byte	0x2f2
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x219d
	.byte	0
	.uleb128 0x8
	.4byte	.LVL177
	.4byte	0x13be
	.4byte	0x30c
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL179
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x4c4b40
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF606
	.byte	0x1
	.2byte	0x185
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c1
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x186
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x187
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x188
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x8
	.4byte	.LVL169
	.4byte	0x13b2
	.4byte	0x395
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3646
	.byte	0
	.uleb128 0x8
	.4byte	.LVL171
	.4byte	0x13be
	.4byte	0x3af
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL173
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4e20
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF607
	.byte	0x1
	.2byte	0x177
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x464
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x178
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x179
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x17a
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x8
	.4byte	.LVL163
	.4byte	0x13b2
	.4byte	0x436
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3632
	.byte	0
	.uleb128 0x8
	.4byte	.LVL165
	.4byte	0x13be
	.4byte	0x450
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL167
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0xc3500
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF608
	.byte	0x1
	.2byte	0x162
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54f
	.uleb128 0xd
	.4byte	.LASF610
	.byte	0x1
	.2byte	0x162
	.byte	0x2b
	.4byte	0x54f
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x163
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x164
	.byte	0xd
	.4byte	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x165
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x8
	.4byte	.LVL153
	.4byte	0x13b2
	.4byte	0x4ee
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3639
	.byte	0
	.uleb128 0x8
	.4byte	.LVL155
	.4byte	0x13be
	.4byte	0x508
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LVL157
	.4byte	0x13cb
	.4byte	0x51f
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x989680
	.byte	0
	.uleb128 0x8
	.4byte	.LVL158
	.4byte	0x13d7
	.4byte	0x53e
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LVL160
	.4byte	0x13e4
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x80
	.uleb128 0xb
	.4byte	0x61
	.4byte	0x565
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF609
	.byte	0x1
	.2byte	0x14a
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a0
	.uleb128 0xd
	.4byte	.LASF611
	.byte	0x1
	.2byte	0x14a
	.byte	0x2b
	.4byte	0x54f
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0xd
	.4byte	.LASF612
	.byte	0x1
	.2byte	0x14a
	.byte	0x3f
	.4byte	0x54f
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0xd
	.4byte	.LASF613
	.byte	0x1
	.2byte	0x14b
	.byte	0x2b
	.4byte	0x54f
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x14c
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x14d
	.byte	0xd
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x14e
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x8
	.4byte	.LVL141
	.4byte	0x13b2
	.4byte	0x619
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3682
	.byte	0
	.uleb128 0x8
	.4byte	.LVL143
	.4byte	0x13be
	.4byte	0x633
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.4byte	.LVL145
	.4byte	0x13cb
	.4byte	0x648
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x8
	.4byte	.LVL146
	.4byte	0x13d7
	.4byte	0x667
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x8
	.4byte	.LVL148
	.4byte	0x13e4
	.4byte	0x67b
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.4byte	.LVL149
	.4byte	0x13e4
	.4byte	0x68f
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL150
	.4byte	0x13e4
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x61
	.4byte	0x6b0
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF614
	.byte	0x1
	.2byte	0x13c
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x753
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x13d
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x13e
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x13f
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x8
	.4byte	.LVL132
	.4byte	0x13b2
	.4byte	0x725
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3615
	.byte	0
	.uleb128 0x8
	.4byte	.LVL134
	.4byte	0x13be
	.4byte	0x73f
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL136
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0xc3500
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF615
	.byte	0x1
	.2byte	0x125
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x851
	.uleb128 0xd
	.4byte	.LASF616
	.byte	0x1
	.2byte	0x125
	.byte	0x29
	.4byte	0x851
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x126
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x127
	.byte	0xd
	.4byte	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x128
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x7
	.4byte	.LASF617
	.byte	0x1
	.2byte	0x129
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x8
	.4byte	.LVL122
	.4byte	0x13b2
	.4byte	0x7f2
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xb
	.2byte	0xe4b8
	.byte	0
	.uleb128 0x8
	.4byte	.LVL124
	.4byte	0x13be
	.4byte	0x80c
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LVL126
	.4byte	0x13cb
	.4byte	0x821
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x8
	.4byte	.LVL127
	.4byte	0x13d7
	.4byte	0x840
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LVL129
	.4byte	0x13e4
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x857
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF618
	.uleb128 0x5
	.4byte	.LASF619
	.byte	0x1
	.2byte	0x11d
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d5
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x11e
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x11f
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x8
	.4byte	.LVL117
	.4byte	0x13b2
	.4byte	0x8be
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x21ac
	.byte	0
	.uleb128 0xa
	.4byte	.LVL119
	.4byte	0x13be
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF620
	.byte	0x1
	.2byte	0x10c
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a5
	.uleb128 0xd
	.4byte	.LASF621
	.byte	0x1
	.2byte	0x10c
	.byte	0x37
	.4byte	0x80
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x7
	.4byte	.LASF602
	.byte	0x1
	.2byte	0x10d
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x6
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x10e
	.byte	0xd
	.4byte	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0x1
	.2byte	0x10f
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x8
	.4byte	.LVL109
	.4byte	0x13b2
	.4byte	0x95f
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2416
	.byte	0
	.uleb128 0x8
	.4byte	.LVL111
	.4byte	0x13f0
	.4byte	0x979
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL113
	.4byte	0x13be
	.4byte	0x993
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL115
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x61
	.4byte	0x9b5
	.uleb128 0xc
	.4byte	0x3e
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF622
	.byte	0x1
	.byte	0xf7
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa99
	.uleb128 0x10
	.4byte	.LASF621
	.byte	0x1
	.byte	0xf7
	.byte	0x38
	.4byte	0x54f
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0xf8
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0xf9
	.byte	0xd
	.4byte	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0xfa
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x8
	.4byte	.LVL99
	.4byte	0x13b2
	.4byte	0xa3a
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2313
	.byte	0
	.uleb128 0x8
	.4byte	.LVL101
	.4byte	0x13be
	.4byte	0xa54
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LVL103
	.4byte	0x13cb
	.4byte	0xa69
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x8
	.4byte	.LVL104
	.4byte	0x13d7
	.4byte	0xa88
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LVL106
	.4byte	0x13e4
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF623
	.byte	0x1
	.byte	0xde
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbad
	.uleb128 0x10
	.4byte	.LASF624
	.byte	0x1
	.byte	0xde
	.byte	0x35
	.4byte	0x80
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x10
	.4byte	.LASF625
	.byte	0x1
	.byte	0xdf
	.byte	0x36
	.4byte	0x54f
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0xe0
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0xe1
	.byte	0xd
	.4byte	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0xe2
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x8
	.4byte	.LVL86
	.4byte	0x13b2
	.4byte	0xb32
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x362f
	.byte	0
	.uleb128 0x8
	.4byte	.LVL88
	.4byte	0x13f0
	.4byte	0xb4c
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL90
	.4byte	0x13be
	.4byte	0xb66
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL92
	.4byte	0x13cb
	.4byte	0xb7d
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x61a80
	.byte	0
	.uleb128 0x8
	.4byte	.LVL93
	.4byte	0x13d7
	.4byte	0xb9c
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LVL95
	.4byte	0x13e4
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF626
	.byte	0x1
	.byte	0xcd
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc78
	.uleb128 0x10
	.4byte	.LASF627
	.byte	0x1
	.byte	0xcd
	.byte	0x2d
	.4byte	0x80
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0xce
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0xcf
	.byte	0xd
	.4byte	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0xd0
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x8
	.4byte	.LVL76
	.4byte	0x13b2
	.4byte	0xc32
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xb
	.2byte	0xe000
	.byte	0
	.uleb128 0x8
	.4byte	.LVL78
	.4byte	0x13f0
	.4byte	0xc4c
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL80
	.4byte	0x13be
	.4byte	0xc66
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL82
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF628
	.byte	0x1
	.byte	0xbc
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd43
	.uleb128 0x10
	.4byte	.LASF629
	.byte	0x1
	.byte	0xbc
	.byte	0x2c
	.4byte	0x80
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0xbd
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0xbe
	.byte	0xd
	.4byte	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x8
	.4byte	.LVL67
	.4byte	0x13b2
	.4byte	0xcfd
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2427
	.byte	0
	.uleb128 0x8
	.4byte	.LVL69
	.4byte	0x13f0
	.4byte	0xd17
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL71
	.4byte	0x13be
	.4byte	0xd31
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL73
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF630
	.byte	0x1
	.byte	0xa7
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe27
	.uleb128 0x10
	.4byte	.LASF629
	.byte	0x1
	.byte	0xa7
	.byte	0x2d
	.4byte	0x54f
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0xa8
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0xa9
	.byte	0xd
	.4byte	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x8
	.4byte	.LVL57
	.4byte	0x13b2
	.4byte	0xdc8
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2322
	.byte	0
	.uleb128 0x8
	.4byte	.LVL59
	.4byte	0x13be
	.4byte	0xde2
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LVL61
	.4byte	0x13cb
	.4byte	0xdf7
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x8
	.4byte	.LVL62
	.4byte	0x13d7
	.4byte	0xe16
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LVL64
	.4byte	0x13e4
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF631
	.byte	0x1
	.byte	0xa2
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe85
	.uleb128 0x10
	.4byte	.LASF632
	.byte	0x1
	.byte	0xa2
	.byte	0x2e
	.4byte	0x8c
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x11
	.4byte	.LASF633
	.byte	0x1
	.byte	0xa3
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x13
	.4byte	.LVL54
	.4byte	0xe85
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xa
	.2byte	0x2fef
	.byte	0x1e
	.byte	0x9
	.byte	0xe5
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF634
	.byte	0x1
	.byte	0x92
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf50
	.uleb128 0x10
	.4byte	.LASF633
	.byte	0x1
	.byte	0x92
	.byte	0x35
	.4byte	0x80
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0x93
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0x94
	.byte	0xd
	.4byte	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0x95
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x8
	.4byte	.LVL45
	.4byte	0x13b2
	.4byte	0xf0a
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x241d
	.byte	0
	.uleb128 0x8
	.4byte	.LVL47
	.4byte	0x13f0
	.4byte	0xf24
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL49
	.4byte	0x13be
	.4byte	0xf3e
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL51
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF635
	.byte	0x1
	.byte	0x86
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfb2
	.uleb128 0x10
	.4byte	.LASF632
	.byte	0x1
	.byte	0x86
	.byte	0x2f
	.4byte	0xfb2
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0x87
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x12
	.4byte	.LASF633
	.byte	0x1
	.byte	0x88
	.byte	0xe
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0xa
	.4byte	.LVL42
	.4byte	0xfb8
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8c
	.uleb128 0xf
	.4byte	.LASF636
	.byte	0x1
	.byte	0x71
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x109c
	.uleb128 0x10
	.4byte	.LASF633
	.byte	0x1
	.byte	0x71
	.byte	0x36
	.4byte	0x54f
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0x72
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0x73
	.byte	0xd
	.4byte	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x8
	.4byte	.LVL32
	.4byte	0x13b2
	.4byte	0x103d
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x2318
	.byte	0
	.uleb128 0x8
	.4byte	.LVL34
	.4byte	0x13be
	.4byte	0x1057
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	.LVL36
	.4byte	0x13cb
	.4byte	0x106c
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x8
	.4byte	.LVL37
	.4byte	0x13d7
	.4byte	0x108b
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xa
	.4byte	.LVL39
	.4byte	0x13e4
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF637
	.byte	0x1
	.byte	0x63
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113b
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0x65
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x8
	.4byte	.LVL25
	.4byte	0x13b2
	.4byte	0x110d
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3f86
	.byte	0
	.uleb128 0x8
	.4byte	.LVL27
	.4byte	0x13be
	.4byte	0x1127
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL29
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7a120
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF638
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e1
	.uleb128 0x14
	.ascii	"co2\000"
	.byte	0x1
	.byte	0x54
	.byte	0x2a
	.4byte	0x54f
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x10
	.4byte	.LASF639
	.byte	0x1
	.byte	0x54
	.byte	0x38
	.4byte	0xfb2
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x10
	.4byte	.LASF640
	.byte	0x1
	.byte	0x55
	.byte	0x29
	.4byte	0xfb2
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0x56
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x1
	.byte	0x57
	.byte	0xe
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x1
	.byte	0x58
	.byte	0xe
	.4byte	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0xa
	.4byte	.LVL23
	.4byte	0x11e1
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF643
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1315
	.uleb128 0x14
	.ascii	"co2\000"
	.byte	0x1
	.byte	0x3c
	.byte	0x30
	.4byte	0x54f
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x10
	.4byte	.LASF641
	.byte	0x1
	.byte	0x3c
	.byte	0x3f
	.4byte	0x54f
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x10
	.4byte	.LASF642
	.byte	0x1
	.byte	0x3d
	.byte	0x30
	.4byte	0x54f
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0x3f
	.byte	0xd
	.4byte	0x6a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0x40
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x8
	.4byte	.LVL10
	.4byte	0x13b2
	.4byte	0x128e
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xb
	.2byte	0xec05
	.byte	0
	.uleb128 0x8
	.4byte	.LVL12
	.4byte	0x13be
	.4byte	0x12a8
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.4byte	.LVL14
	.4byte	0x13cb
	.4byte	0x12bd
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x8
	.4byte	.LVL15
	.4byte	0x13d7
	.4byte	0x12dc
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x8
	.4byte	.LVL17
	.4byte	0x13e4
	.4byte	0x12f0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x8
	.4byte	.LVL18
	.4byte	0x13e4
	.4byte	0x1304
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL19
	.4byte	0x13e4
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF644
	.byte	0x1
	.byte	0x2e
	.byte	0x9
	.4byte	0x6d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13b2
	.uleb128 0x11
	.4byte	.LASF602
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.4byte	0x6d
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x11
	.4byte	.LASF601
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.4byte	0x80
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x8
	.4byte	.LVL1
	.4byte	0x13b2
	.4byte	0x1386
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x21b1
	.byte	0
	.uleb128 0x8
	.4byte	.LVL3
	.4byte	0x13be
	.4byte	0x13a0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xa
	.4byte	.LVL5
	.4byte	0x13cb
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF645
	.4byte	.LASF645
	.byte	0x3
	.byte	0xb5
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF646
	.4byte	.LASF646
	.byte	0x3
	.2byte	0x123
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF647
	.4byte	.LASF647
	.byte	0x4
	.byte	0x6a
	.byte	0x6
	.uleb128 0x16
	.4byte	.LASF648
	.4byte	.LASF648
	.byte	0x3
	.2byte	0x134
	.byte	0x9
	.uleb128 0x15
	.4byte	.LASF649
	.4byte	.LASF649
	.byte	0x5
	.byte	0x55
	.byte	0xa
	.uleb128 0x15
	.4byte	.LASF650
	.4byte	.LASF650
	.byte	0x3
	.byte	0xe2
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS67:
	.uleb128 .LVU549
	.uleb128 .LVU554
	.uleb128 .LVU554
	.uleb128 .LVU556
.LLST67:
	.4byte	.LVL192
	.4byte	.LVL194
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS65:
	.uleb128 .LVU540
	.uleb128 .LVU543
.LLST65:
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS66:
	.uleb128 .LVU533
	.uleb128 .LVU538
	.uleb128 .LVU538
	.uleb128 .LVU540
.LLST66:
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LVL189-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS63:
	.uleb128 .LVU523
	.uleb128 .LVU526
.LLST63:
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS64:
	.uleb128 .LVU516
	.uleb128 .LVU521
	.uleb128 .LVU521
	.uleb128 .LVU523
.LLST64:
	.4byte	.LVL180
	.4byte	.LVL182
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU506
	.uleb128 .LVU509
.LLST61:
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU499
	.uleb128 .LVU504
	.uleb128 .LVU504
	.uleb128 .LVU506
.LLST62:
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU489
	.uleb128 .LVU492
.LLST59:
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU482
	.uleb128 .LVU487
	.uleb128 .LVU487
	.uleb128 .LVU489
.LLST60:
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU472
	.uleb128 .LVU475
.LLST57:
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU465
	.uleb128 .LVU470
	.uleb128 .LVU470
	.uleb128 .LVU472
.LLST58:
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 0
	.uleb128 .LVU441
	.uleb128 .LVU441
	.uleb128 .LVU460
	.uleb128 .LVU460
	.uleb128 0
.LLST54:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL152
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL161
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU446
	.uleb128 .LVU449
	.uleb128 .LVU452
	.uleb128 .LVU456
.LLST55:
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU436
	.uleb128 .LVU444
	.uleb128 .LVU444
	.uleb128 .LVU446
.LLST56:
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 0
	.uleb128 .LVU406
	.uleb128 .LVU406
	.uleb128 0
.LLST49:
	.4byte	.LVL137
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL140
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU404
	.uleb128 .LVU404
	.uleb128 0
.LLST50:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL138
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU405
	.uleb128 .LVU405
	.uleb128 0
.LLST51:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL139
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 .LVU411
	.uleb128 .LVU414
	.uleb128 .LVU417
	.uleb128 .LVU421
.LLST52:
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU400
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU411
.LLST53:
	.4byte	.LVL137
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU390
	.uleb128 .LVU393
.LLST47:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU383
	.uleb128 .LVU388
	.uleb128 .LVU388
	.uleb128 .LVU390
.LLST48:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU358
	.uleb128 .LVU358
	.uleb128 0
.LLST43:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL121
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU363
	.uleb128 .LVU366
	.uleb128 .LVU369
	.uleb128 .LVU373
.LLST44:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU352
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 .LVU363
.LLST45:
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU353
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 .LVU377
.LLST46:
	.4byte	.LVL120
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU340
	.uleb128 .LVU345
	.uleb128 .LVU345
	.uleb128 .LVU347
.LLST42:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 0
.LLST39:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL108
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU331
	.uleb128 .LVU334
.LLST40:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU317
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU327
	.uleb128 .LVU329
	.uleb128 .LVU331
.LLST41:
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL112
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 0
.LLST36:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU298
	.uleb128 .LVU301
	.uleb128 .LVU304
	.uleb128 .LVU308
.LLST37:
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU288
	.uleb128 .LVU296
	.uleb128 .LVU296
	.uleb128 .LVU298
.LLST38:
	.4byte	.LVL97
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 0
.LLST32:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL84
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 0
.LLST33:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL85
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU269
	.uleb128 .LVU272
	.uleb128 .LVU275
	.uleb128 .LVU279
.LLST34:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU253
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU265
	.uleb128 .LVU267
	.uleb128 .LVU269
.LLST35:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 0
.LLST29:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL75
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU243
	.uleb128 .LVU246
.LLST30:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU229
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 .LVU239
	.uleb128 .LVU241
	.uleb128 .LVU243
.LLST31:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 0
.LLST26:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL66
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU219
	.uleb128 .LVU222
.LLST27:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU205
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU215
	.uleb128 .LVU217
	.uleb128 .LVU219
.LLST28:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST23:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU186
	.uleb128 .LVU189
	.uleb128 .LVU192
	.uleb128 .LVU196
.LLST24:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU176
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 .LVU186
.LLST25:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 0
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU169
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 0
.LLST22:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x9
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.2byte	0x2fef
	.byte	0x1e
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE7
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xa
	.2byte	0x2fef
	.byte	0x1e
	.byte	0x3f
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 0
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU161
	.uleb128 .LVU164
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU147
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU157
	.uleb128 .LVU159
	.uleb128 .LVU161
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU133
	.uleb128 0
.LLST17:
	.4byte	.LVL42
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 .LVU116
	.uleb128 .LVU120
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU100
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU110
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU90
	.uleb128 .LVU93
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU83
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU90
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU63
	.uleb128 0
.LLST10:
	.4byte	.LVL23
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU32
	.uleb128 .LVU35
	.uleb128 .LVU38
	.uleb128 .LVU42
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU21
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU32
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU11
	.uleb128 .LVU14
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU4
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU11
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x334
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x13fd
	.4byte	0x9f
	.ascii	"scd4x_wake_up\000"
	.4byte	0x13b
	.ascii	"scd4x_power_down\000"
	.4byte	0x1dc
	.ascii	"scd4x_measure_single_shot_rht_only\000"
	.4byte	0x27d
	.ascii	"scd4x_measure_single_shot\000"
	.4byte	0x320
	.ascii	"scd4x_reinit\000"
	.4byte	0x3c1
	.ascii	"scd4x_perform_factory_reset\000"
	.4byte	0x464
	.ascii	"scd4x_perform_self_test\000"
	.4byte	0x565
	.ascii	"scd4x_get_serial_number\000"
	.4byte	0x6b0
	.ascii	"scd4x_persist_settings\000"
	.4byte	0x753
	.ascii	"scd4x_get_data_ready_flag\000"
	.4byte	0x85e
	.ascii	"scd4x_start_low_power_periodic_measurement\000"
	.4byte	0x8d5
	.ascii	"scd4x_set_automatic_self_calibration\000"
	.4byte	0x9b5
	.ascii	"scd4x_get_automatic_self_calibration\000"
	.4byte	0xa99
	.ascii	"scd4x_perform_forced_recalibration\000"
	.4byte	0xbad
	.ascii	"scd4x_set_ambient_pressure\000"
	.4byte	0xc78
	.ascii	"scd4x_set_sensor_altitude\000"
	.4byte	0xd43
	.ascii	"scd4x_get_sensor_altitude\000"
	.4byte	0xe27
	.ascii	"scd4x_set_temperature_offset\000"
	.4byte	0xe85
	.ascii	"scd4x_set_temperature_offset_ticks\000"
	.4byte	0xf50
	.ascii	"scd4x_get_temperature_offset\000"
	.4byte	0xfb8
	.ascii	"scd4x_get_temperature_offset_ticks\000"
	.4byte	0x109c
	.ascii	"scd4x_stop_periodic_measurement\000"
	.4byte	0x113b
	.ascii	"scd4x_read_measurement\000"
	.4byte	0x11e1
	.ascii	"scd4x_read_measurement_ticks\000"
	.4byte	0x1315
	.ascii	"scd4x_start_periodic_measurement\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xec
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x13fd
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
	.4byte	0x5a
	.ascii	"signed char\000"
	.4byte	0x61
	.ascii	"uint8_t\000"
	.4byte	0x79
	.ascii	"short int\000"
	.4byte	0x6d
	.ascii	"int16_t\000"
	.4byte	0x80
	.ascii	"uint16_t\000"
	.4byte	0x8c
	.ascii	"int32_t\000"
	.4byte	0x98
	.ascii	"long long unsigned int\000"
	.4byte	0x857
	.ascii	"_Bool\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xdc
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
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
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
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
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
	.file 6 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\scd4x_i2c.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF472
	.file 7 "C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My Projects\\Progetto_tesi\\SENSIRION\\sensirion_config.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF473
	.file 8 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdlib.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF474
	.file 9 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/__crossworks.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x9
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
	.file 10 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.70a/include/stdbool.h"
	.byte	0x3
	.uleb128 0x4b
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF584
	.byte	0x4
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF585
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
	.section	.debug_macro,"G",%progbits,wm4.sensirion_common.h.33.d8b730ec9b213ba3b188c1530e5da984,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF568
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
.LASF632:
	.ascii	"t_offset_m_deg_c\000"
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
.LASF244:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF474:
	.ascii	"__stdlib_H \000"
.LASF575:
	.ascii	"SENSIRION_MAX_BUFFER_WORDS 32\000"
.LASF653:
	.ascii	"C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My "
	.ascii	"Projects\\Progetto_tesi\\pca10040\\blank\\ses\000"
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
.LASF587:
	.ascii	"char\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF436:
	.ascii	"__ARM_NEON__\000"
.LASF392:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF60:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF641:
	.ascii	"temperature\000"
.LASF631:
	.ascii	"scd4x_set_temperature_offset\000"
.LASF472:
	.ascii	"SCD4X_I2C_H \000"
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
.LASF607:
	.ascii	"scd4x_perform_factory_reset\000"
.LASF611:
	.ascii	"serial_0\000"
.LASF612:
	.ascii	"serial_1\000"
.LASF613:
	.ascii	"serial_2\000"
.LASF286:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF603:
	.ascii	"buffer\000"
.LASF605:
	.ascii	"scd4x_measure_single_shot\000"
.LASF262:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF567:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF445:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF446:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF529:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF588:
	.ascii	"unsigned int\000"
.LASF553:
	.ascii	"INT32_C(x) (x ##L)\000"
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
.LASF544:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
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
.LASF199:
	.ascii	"__FLT16_MAX_10_EXP__ 4\000"
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
.LASF44:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF399:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF179:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF16:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF527:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
.LASF326:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF468:
	.ascii	"NO_VTOR_CONFIG 1\000"
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
.LASF635:
	.ascii	"scd4x_get_temperature_offset\000"
.LASF602:
	.ascii	"error\000"
.LASF31:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF402:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF212:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
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
.LASF497:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
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
.LASF609:
	.ascii	"scd4x_get_serial_number\000"
.LASF160:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF55:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF368:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF537:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF569:
	.ascii	"NO_ERROR 0\000"
.LASF62:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF224:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF592:
	.ascii	"signed char\000"
.LASF443:
	.ascii	"__FDPIC__\000"
.LASF251:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF541:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF430:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF332:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF518:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
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
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF157:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF221:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF477:
	.ascii	"__RAL_SIZE_T\000"
.LASF375:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF502:
	.ascii	"MB_CUR_MAX __RAL_mb_max(&__RAL_global_locale)\000"
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
.LASF627:
	.ascii	"ambient_pressure\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF496:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF359:
	.ascii	"__DA_FBIT__ 31\000"
.LASF194:
	.ascii	"__FLT16_MANT_DIG__ 11\000"
.LASF36:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF598:
	.ascii	"long long unsigned int\000"
.LASF459:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF304:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF594:
	.ascii	"int16_t\000"
.LASF223:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF273:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF258:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF336:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF577:
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
.LASF568:
	.ascii	"SENSIRION_COMMON_H \000"
.LASF238:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF572:
	.ascii	"SENSIRION_COMMAND_SIZE 2\000"
.LASF629:
	.ascii	"sensor_altitude\000"
.LASF220:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF432:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF482:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF295:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF218:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF414:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF68:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF457:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF650:
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
.LASF249:
	.ascii	"__FLT32X_MIN__ 1.1\000"
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
.LASF366:
	.ascii	"__USA_IBIT__ 16\000"
.LASF352:
	.ascii	"__UDQ_IBIT__ 0\000"
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
.LASF412:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF476:
	.ascii	"__THREAD __thread\000"
.LASF303:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF367:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF648:
	.ascii	"sensirion_i2c_read_data_inplace\000"
.LASF636:
	.ascii	"scd4x_get_temperature_offset_ticks\000"
.LASF311:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF624:
	.ascii	"target_co2_concentration\000"
.LASF601:
	.ascii	"offset\000"
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
.LASF618:
	.ascii	"_Bool\000"
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
.LASF604:
	.ascii	"scd4x_measure_single_shot_rht_only\000"
.LASF228:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF433:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF517:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF299:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF196:
	.ascii	"__FLT16_MIN_EXP__ (-13)\000"
.LASF215:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF48:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF584:
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
.LASF542:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
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
.LASF534:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
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
.LASF614:
	.ascii	"scd4x_persist_settings\000"
.LASF633:
	.ascii	"t_offset\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
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
.LASF340:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1014\000"
.LASF265:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF530:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
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
.LASF630:
	.ascii	"scd4x_get_sensor_altitude\000"
.LASF639:
	.ascii	"temperature_m_deg_c\000"
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
.LASF593:
	.ascii	"uint8_t\000"
.LASF576:
	.ascii	"SENSIRION_I2C_H \000"
.LASF621:
	.ascii	"asc_enabled\000"
.LASF599:
	.ascii	"scd4x_wake_up\000"
.LASF449:
	.ascii	"__ARM_FEATURE_CDE\000"
.LASF275:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF638:
	.ascii	"scd4x_read_measurement\000"
.LASF458:
	.ascii	"__SES_ARM 1\000"
.LASF561:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF52:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF213:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF174:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF573:
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
.LASF640:
	.ascii	"humidity_m_percent_rh\000"
.LASF235:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF241:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF309:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF351:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF187:
	.ascii	"__LDBL_NORM_MAX__ 1.1\000"
.LASF608:
	.ascii	"scd4x_perform_self_test\000"
.LASF424:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF210:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF616:
	.ascii	"data_ready_flag\000"
.LASF353:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF155:
	.ascii	"__FLT_NORM_MAX__ 1.1\000"
.LASF591:
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
.LASF298:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF647:
	.ascii	"sensirion_i2c_hal_sleep_usec\000"
.LASF582:
	.ascii	"CRC8_INIT 0xFF\000"
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
.LASF456:
	.ascii	"__ELF__ 1\000"
.LASF413:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF323:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF395:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF35:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
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
.LASF652:
	.ascii	"C:\\nrf_sdk\\nRF5_SDK_17.1.0_ddde560\\examples\\My "
	.ascii	"Projects\\Progetto_tesi\\SENSIRION\\scd4x_i2c.c\000"
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
.LASF570:
	.ascii	"NOT_IMPLEMENTED_ERROR 31\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF619:
	.ascii	"scd4x_start_low_power_periodic_measurement\000"
.LASF280:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF649:
	.ascii	"sensirion_common_bytes_to_uint16_t\000"
.LASF307:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF606:
	.ascii	"scd4x_reinit\000"
.LASF23:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF455:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF200:
	.ascii	"__FLT16_DECIMAL_DIG__ 5\000"
.LASF643:
	.ascii	"scd4x_read_measurement_ticks\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF320:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF272:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
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
.LASF180:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF646:
	.ascii	"sensirion_i2c_write_data\000"
.LASF391:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF461:
	.ascii	"__SES_VERSION 57001\000"
.LASF32:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF308:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF271:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF396:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF289:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF555:
	.ascii	"INT64_C(x) (x ##LL)\000"
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
.LASF256:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF515:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF407:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF338:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF415:
	.ascii	"__arm__ 1\000"
.LASF596:
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
.LASF236:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF487:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF453:
	.ascii	"__ARM_FEATURE_BF16_VECTOR_ARITHMETIC\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
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
.LASF580:
	.ascii	"BYTE_NUM_ERROR 4\000"
.LASF345:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF350:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF585:
	.ascii	"SCD4X_I2C_ADDRESS 98\000"
.LASF411:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF181:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF595:
	.ascii	"short int\000"
.LASF274:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF562:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF626:
	.ascii	"scd4x_set_ambient_pressure\000"
.LASF623:
	.ascii	"scd4x_perform_forced_recalibration\000"
.LASF347:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF45:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF243:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF452:
	.ascii	"__ARM_FEATURE_BF16_SCALAR_ARITHMETIC\000"
.LASF586:
	.ascii	"long int\000"
.LASF19:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF182:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF339:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF581:
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
.LASF185:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF628:
	.ascii	"scd4x_set_sensor_altitude\000"
.LASF343:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF264:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF357:
	.ascii	"__SA_FBIT__ 15\000"
.LASF574:
	.ascii	"SENSIRION_NUM_WORDS(x) (sizeof(x) / SENSIRION_WORD_"
	.ascii	"SIZE)\000"
.LASF514:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF543:
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
.LASF600:
	.ascii	"scd4x_power_down\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
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
.LASF615:
	.ascii	"scd4x_get_data_ready_flag\000"
.LASF247:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF33:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF313:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF410:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF426:
	.ascii	"__VFP_FP__ 1\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF283:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF355:
	.ascii	"__HA_FBIT__ 7\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF483:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF578:
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
.LASF620:
	.ascii	"scd4x_set_automatic_self_calibration\000"
.LASF442:
	.ascii	"__ARM_EABI__ 1\000"
.LASF634:
	.ascii	"scd4x_set_temperature_offset_ticks\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF617:
	.ascii	"local_data_ready\000"
.LASF158:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF622:
	.ascii	"scd4x_get_automatic_self_calibration\000"
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
.LASF248:
	.ascii	"__FLT32X_NORM_MAX__ 1.1\000"
.LASF467:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF501:
	.ascii	"RAND_MAX 32767\000"
.LASF509:
	.ascii	"INT16_MAX 32767\000"
.LASF528:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF519:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
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
.LASF589:
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
.LASF8:
	.ascii	"__VERSION__ \"10.3.1 20210824 (release)\"\000"
.LASF15:
	.ascii	"__OPTIMIZE_SIZE__ 1\000"
.LASF370:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF645:
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
.LASF571:
	.ascii	"ARRAY_SIZE(x) (sizeof(x) / sizeof(*(x)))\000"
.LASF38:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF563:
	.ascii	"__stdbool_h \000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF268:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF404:
	.ascii	"__ARM_FEATURE_MVE\000"
.LASF418:
	.ascii	"__APCS_32__ 1\000"
.LASF535:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF50:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF254:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF168:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF233:
	.ascii	"__FLT64_NORM_MAX__ 1.1\000"
.LASF590:
	.ascii	"short unsigned int\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF362:
	.ascii	"__TA_IBIT__ 64\000"
.LASF22:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF253:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF552:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF637:
	.ascii	"scd4x_stop_periodic_measurement\000"
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
.LASF651:
	.ascii	"GNU C99 10.3.1 20210824 (release) -fmessage-length="
	.ascii	"0 -std=gnu99 -mcpu=cortex-m4 -mlittle-endian -mfloa"
	.ascii	"t-abi=hard -mfpu=fpv4-sp-d16 -mthumb -mtp=soft -mfp"
	.ascii	"16-format=ieee -munaligned-access -gdwarf-4 -g3 -gp"
	.ascii	"ubnames -Os -fomit-frame-pointer -fno-dwarf2-cfi-as"
	.ascii	"m -ffunction-sections -fdata-sections -fshort-enums"
	.ascii	" -fno-common\000"
.LASF625:
	.ascii	"frc_correction\000"
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
.LASF597:
	.ascii	"int32_t\000"
.LASF644:
	.ascii	"scd4x_start_periodic_measurement\000"
.LASF400:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF214:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF335:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF278:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF642:
	.ascii	"humidity\000"
.LASF440:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF579:
	.ascii	"I2C_NACK_ERROR 3\000"
.LASF512:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF186:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
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
.LASF610:
	.ascii	"sensor_status\000"
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
