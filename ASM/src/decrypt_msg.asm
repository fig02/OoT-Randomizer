message_decrypt_hook:
    or      s4, r0, r0 ;displaced
    addiu   sp, sp, -0x28
    sw      ra, 0x10(sp)
    sw      at, 0x14(sp)
    sw      t6, 0x18(sp)
    sw      a3, 0x1C(sp)
    sw      a0, 0x20(sp)
    la      a0, 0x801D8328 ;globalCtx->font.msgBuff
    jal     decrypt_message_buffer
    nop
    lw      a0, 0x20(sp)
    lw      a3, 0x1C(sp)
    lw      t6, 0x18(sp)
    lw      at, 0x14(sp)
    lw      ra, 0x10(sp)
    addiu   sp, sp, -0x28