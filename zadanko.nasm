section .data 
	x dq 30
	y dq 121 
	z dq 2

section .text
	global _start

_start:
	mov rax, qword [x] 
	cmp rax, qword [y]
	jg _greater
	mov rax, qword [y]
_greater:
	cmp rax, qword [z]
	jg _end
	mov rax, qword [z]

_end:
	mov rax, 60
	mov rdi, 0
	syscall
