BITS 64

%ifndef _UTILS_INC_
%define _UTILS_INC_

struc reg_t
	name resb 16
endstruc

my_struct istruc reg_t
	at name, db "EAX"
iend

%include "putstr.s"
%include "exit.s"
%include "hex.s"
%include "memcpy.s"

%endif