#include "decrypt_msg.h"

#define MSG_BUF_SIZE 0x500

void decrypt(uint8_t char) {
    // decrypt here
}

void decrypt_message_buffer(uint8_t* msg_buf) {
    for (uint8_t i = 0; i < MSG_BUF_SIZE; i++) {
        msg_buf[i] = decrypt(msg_buf[i]);
    }
}