.align 4

.macro preserve_caller_vec
    stp d8, d9, [sp, #-16]!
    stp d10, d11, [sp, #-16]!
    stp d12, d13, [sp, #-16]!
    stp d14, d15, [sp, #-16]!
.endm

.macro restore_caller_vec
    ldp d14, d15, [sp], #16
    ldp d12, d13, [sp], #16
    ldp d10, d11, [sp], #16
    ldp d8, d9, [sp], #16
.endm

#ifdef __APPLE__
.globl _sve_fmla_vv_f32f32f32
_sve_fmla_vv_f32f32f32:
#else
.globl sve_fmla_vv_f32f32f32
sve_fmla_vv_f32f32f32:
#endif
    preserve_caller_vec
    ptrue p0.s
    whilelt p1.s, xzr, xzr

    // Zero initialize the vectors
    dup z0.s, #0
    dup z1.s, #0
    dup z8.s, #0
    dup z9.s, #0
    dup z10.s, #0
    dup z11.s, #0
    dup z12.s, #0
    dup z13.s, #0
    dup z14.s, #0
    dup z15.s, #0
    dup z16.s, #0
    dup z17.s, #0
    dup z18.s, #0
    dup z19.s, #0
    dup z20.s, #0
    dup z21.s, #0
    dup z22.s, #0
    dup z23.s, #0
    dup z24.s, #0
    dup z25.s, #0
    dup z26.s, #0
    dup z27.s, #0
    dup z28.s, #0
    dup z29.s, #0
    dup z30.s, #0
    dup z31.s, #0
.sve.fmla.vv.f32f32f32.L1:
    fmla z8.s, p0/m, z0.s, z1.s
    fmla z9.s, p0/m, z0.s, z1.s
    fmla z10.s, p0/m, z0.s, z1.s
    fmla z11.s, p0/m, z0.s, z1.s
    fmla z12.s, p0/m, z0.s, z1.s
    fmla z13.s, p0/m, z0.s, z1.s
    fmla z14.s, p0/m, z0.s, z1.s
    fmla z15.s, p0/m, z0.s, z1.s
    fmla z16.s, p0/m, z0.s, z1.s
    fmla z17.s, p0/m, z0.s, z1.s
    fmla z18.s, p0/m, z0.s, z1.s
    fmla z19.s, p0/m, z0.s, z1.s
    subs x0, x0, #1
    fmla z20.s, p0/m, z0.s, z1.s
    fmla z21.s, p0/m, z0.s, z1.s
    fmla z22.s, p0/m, z0.s, z1.s
    fmla z23.s, p0/m, z0.s, z1.s
    fmla z24.s, p0/m, z0.s, z1.s
    fmla z25.s, p0/m, z0.s, z1.s
    fmla z26.s, p0/m, z0.s, z1.s
    fmla z27.s, p0/m, z0.s, z1.s
    fmla z28.s, p0/m, z0.s, z1.s
    fmla z29.s, p0/m, z0.s, z1.s
    fmla z30.s, p0/m, z0.s, z1.s
    fmla z31.s, p0/m, z0.s, z1.s
    bne .sve.fmla.vv.f32f32f32.L1
    restore_caller_vec
    ret

#ifdef __APPLE__
.globl _sve_fmla_vv_f64f64f64
_sve_fmla_vv_f64f64f64:
#else
.globl sve_fmla_vv_f64f64f64
sve_fmla_vv_f64f64f64:
#endif
    preserve_caller_vec
    ptrue p0.d
    whilelt p1.d, xzr, xzr

    // Zero initialize the vectors
    dup z0.d, #0
    dup z1.d, #0
    dup z8.d, #0
    dup z9.d, #0
    dup z10.d, #0
    dup z11.d, #0
    dup z12.d, #0
    dup z13.d, #0
    dup z14.d, #0
    dup z15.d, #0
    dup z16.d, #0
    dup z17.d, #0
    dup z18.d, #0
    dup z19.d, #0
    dup z20.d, #0
    dup z21.d, #0
    dup z22.d, #0
    dup z23.d, #0
    dup z24.d, #0
    dup z25.d, #0
    dup z26.d, #0
    dup z27.d, #0
    dup z28.d, #0
    dup z29.d, #0
    dup z30.d, #0
    dup z31.d, #0
.sve.fmla.vv.f64f64f64.L1:
    fmla z8.d, p0/m, z0.d, z1.d
    fmla z9.d, p0/m, z0.d, z1.d
    fmla z10.d, p0/m, z0.d, z1.d
    fmla z11.d, p0/m, z0.d, z1.d
    fmla z12.d, p0/m, z0.d, z1.d
    fmla z13.d, p0/m, z0.d, z1.d
    fmla z14.d, p0/m, z0.d, z1.d
    fmla z15.d, p0/m, z0.d, z1.d
    fmla z16.d, p0/m, z0.d, z1.d
    fmla z17.d, p0/m, z0.d, z1.d
    fmla z18.d, p0/m, z0.d, z1.d
    fmla z19.d, p0/m, z0.d, z1.d
    subs x0, x0, #1
    fmla z20.d, p0/m, z0.d, z1.d
    fmla z21.d, p0/m, z0.d, z1.d
    fmla z22.d, p0/m, z0.d, z1.d
    fmla z23.d, p0/m, z0.d, z1.d
    fmla z24.d, p0/m, z0.d, z1.d
    fmla z25.d, p0/m, z0.d, z1.d
    fmla z26.d, p0/m, z0.d, z1.d
    fmla z27.d, p0/m, z0.d, z1.d
    fmla z28.d, p0/m, z0.d, z1.d
    fmla z29.d, p0/m, z0.d, z1.d
    fmla z30.d, p0/m, z0.d, z1.d
    fmla z31.d, p0/m, z0.d, z1.d
    bne .sve.fmla.vv.f64f64f64.L1
    restore_caller_vec
    ret
