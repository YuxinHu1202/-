
JieCheng.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
   f:	c7 45 f4 1e 00 00 00 	movl   $0x1e,-0xc(%rbp)
  16:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%rbp)
  1d:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  24:	8b 45 fc             	mov    -0x4(%rbp),%eax
  27:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  2a:	7f 15                	jg     41 <main+0x41>
  2c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  2f:	0f af 45 fc          	imul   -0x4(%rbp),%eax
  33:	89 45 f8             	mov    %eax,-0x8(%rbp)
  36:	8b 45 fc             	mov    -0x4(%rbp),%eax
  39:	83 c0 01             	add    $0x1,%eax
  3c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  3f:	eb e3                	jmp    24 <main+0x24>
  41:	8b 75 f8             	mov    -0x8(%rbp),%esi
  44:	48 bf 00 00 00 00 00 	movabs $0x0,%rdi
  4b:	00 00 00 
  4e:	b0 00                	mov    $0x0,%al
  50:	e8 00 00 00 00       	call   55 <main+0x55>
  55:	31 c0                	xor    %eax,%eax
  57:	48 83 c4 10          	add    $0x10,%rsp
  5b:	5d                   	pop    %rbp
  5c:	c3                   	ret    
