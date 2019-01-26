	.text
	.intel_syntax noprefix
	.def	 sprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,sprintf
	.globl	sprintf                 # -- Begin function sprintf
	.p2align	4, 0x90
sprintf:                                # @sprintf
.seh_proc sprintf
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 104], r9
	mov	qword ptr [rsp + 96], r8
	mov	qword ptr [rsp + 64], rdx
	mov	qword ptr [rsp + 56], rcx
	lea	rcx, [rsp + 96]
	mov	qword ptr [rsp + 40], rcx
	mov	r9, qword ptr [rsp + 40]
	mov	rdx, qword ptr [rsp + 64]
	mov	rcx, qword ptr [rsp + 56]
	xor	eax, eax
	mov	r8d, eax
	call	_vsprintf_l
	mov	dword ptr [rsp + 52], eax
	mov	eax, dword ptr [rsp + 52]
	add	rsp, 72
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,sprintf
	.seh_endproc
                                        # -- End function
	.def	 vsprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,vsprintf
	.globl	vsprintf                # -- Begin function vsprintf
	.p2align	4, 0x90
vsprintf:                               # @vsprintf
.seh_proc vsprintf
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	xor	eax, eax
	mov	r9d, eax
	mov	qword ptr [rsp + 64], r8
	mov	qword ptr [rsp + 56], rdx
	mov	qword ptr [rsp + 48], rcx
	mov	rcx, qword ptr [rsp + 64]
	mov	r8, qword ptr [rsp + 56]
	mov	rdx, qword ptr [rsp + 48]
	mov	qword ptr [rsp + 40], rcx # 8-byte Spill
	mov	rcx, rdx
	mov	rdx, -1
	mov	r10, qword ptr [rsp + 40] # 8-byte Reload
	mov	qword ptr [rsp + 32], r10
	call	_vsnprintf_l
	nop
	add	rsp, 72
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,vsprintf
	.seh_endproc
                                        # -- End function
	.def	 _snprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_snprintf
	.globl	_snprintf               # -- Begin function _snprintf
	.p2align	4, 0x90
_snprintf:                              # @_snprintf
.seh_proc _snprintf
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 104], r9
	mov	qword ptr [rsp + 64], r8
	mov	qword ptr [rsp + 56], rdx
	mov	qword ptr [rsp + 48], rcx
	lea	rcx, [rsp + 104]
	mov	qword ptr [rsp + 32], rcx
	mov	r9, qword ptr [rsp + 32]
	mov	r8, qword ptr [rsp + 64]
	mov	rdx, qword ptr [rsp + 56]
	mov	rcx, qword ptr [rsp + 48]
	call	_vsnprintf
	mov	dword ptr [rsp + 44], eax
	mov	eax, dword ptr [rsp + 44]
	add	rsp, 72
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,_snprintf
	.seh_endproc
                                        # -- End function
	.def	 _vsnprintf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf
	.globl	_vsnprintf              # -- Begin function _vsnprintf
	.p2align	4, 0x90
_vsnprintf:                             # @_vsnprintf
.seh_proc _vsnprintf
# %bb.0:
	sub	rsp, 88
	.seh_stackalloc 88
	.seh_endprologue
	xor	eax, eax
	mov	r10d, eax
	mov	qword ptr [rsp + 80], r9
	mov	qword ptr [rsp + 72], r8
	mov	qword ptr [rsp + 64], rdx
	mov	qword ptr [rsp + 56], rcx
	mov	rcx, qword ptr [rsp + 80]
	mov	r8, qword ptr [rsp + 72]
	mov	rdx, qword ptr [rsp + 64]
	mov	r9, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 48], rcx # 8-byte Spill
	mov	rcx, r9
	mov	r9, r10
	mov	r10, qword ptr [rsp + 48] # 8-byte Reload
	mov	qword ptr [rsp + 32], r10
	call	_vsnprintf_l
	nop
	add	rsp, 88
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,_vsnprintf
	.seh_endproc
                                        # -- End function
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	__real@400a666666666666 # -- Begin function main
	.section	.rdata,"dr",discard,__real@400a666666666666
	.p2align	3
__real@400a666666666666:
	.quad	4614613358185178726     # double 3.2999999999999998
	.text
	.globl	main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	sub	rsp, 136
	.seh_stackalloc 136
	.seh_endprologue
	mov	dword ptr [rsp + 132], 0
	lea	rcx, [rip + "??_C@_06BGKFAKIK@hello?6?$AA@"]
	call	printf
	lea	rcx, [rip + "??_C@_0BL@EBJCOHAH@Size?5of?5char?5?3?5?$CFllu?5octet?6?$AA@"]
	mov	edx, 1
                                        # kill: def $rdx killed $edx
	mov	dword ptr [rsp + 88], eax # 4-byte Spill
	call	printf
	lea	rcx, [rip + "??_C@_0BL@MDCKFMJM@Size?5of?5int?5?3?5?$CFllu?5octets?6?$AA@"]
	mov	r8d, 4
	mov	edx, r8d
	mov	dword ptr [rsp + 84], eax # 4-byte Spill
	call	printf
	lea	rcx, [rip + "??_C@_0CB@DOIGAAAP@Size?5of?5short?5int?5?3?5?$CFllu?5octets?6@"]
	mov	r8d, 2
	mov	edx, r8d
	mov	dword ptr [rsp + 80], eax # 4-byte Spill
	call	printf
	lea	rcx, [rip + "??_C@_0CA@EAADDPLF@Size?5of?5long?5int?5?3?5?$CFllu?5octets?6?$AA@"]
	mov	r8d, 4
	mov	edx, r8d
	mov	dword ptr [rsp + 76], eax # 4-byte Spill
	call	printf
	lea	rcx, [rip + "??_C@_0BN@JICNFJCG@Size?5of?5float?5?3?5?$CFllu?5octets?6?$AA@"]
	mov	r8d, 4
	mov	edx, r8d
	mov	dword ptr [rsp + 72], eax # 4-byte Spill
	call	printf
	lea	rcx, [rip + "??_C@_0BO@FLGPKGKH@Size?5of?5double?5?3?5?$CFllu?5octets?6?$AA@"]
	mov	r8d, 8
	mov	edx, r8d
	mov	dword ptr [rsp + 68], eax # 4-byte Spill
	call	printf
	lea	rcx, [rip + "??_C@_0BP@BBGLOGCK@Size?5of?5wchar_t?5?3?5?$CFllu?5octets?6?$AA@"]
	mov	r8d, 2
	mov	edx, r8d
	mov	dword ptr [rsp + 64], eax # 4-byte Spill
	call	printf
	mov	dword ptr [rsp + 128], 0
	mov	dword ptr [rsp + 124], 0
	mov	dword ptr [rsp + 120], 2
	mov	dword ptr [rsp + 116], 1
	mov	edx, dword ptr [rsp + 116]
	lea	rcx, [rip + "??_C@_0BA@DMOOILGH@c?5value?5is?5?3?5?$CFd?$AA@"]
	mov	dword ptr [rsp + 60], eax # 4-byte Spill
	call	printf
	mov	edx, dword ptr [rip + g]
	lea	rcx, [rip + "??_C@_0BI@LNKCHOEO@global?5value?5equals?5?$CFd?6?$AA@"]
	mov	dword ptr [rsp + 56], eax # 4-byte Spill
	call	printf
	mov	dword ptr [rsp + 112], 3
	lea	rcx, [rip + "??_C@_02HAOIJKIC@?$CFc?$AA@"]
	mov	edx, 10
	mov	dword ptr [rsp + 52], eax # 4-byte Spill
	call	printf
	movsd	xmm0, qword ptr [rip + __real@400a666666666666] # xmm0 = mem[0],zero
	mov	dword ptr [rsp + 108], 3
	mov	dword ptr [rsp + 104], 50000
	movsd	qword ptr [rsp + 96], xmm0
	cvttsd2si	edx, qword ptr [rsp + 96]
	mov	dword ptr [rsp + 92], edx
	mov	edx, dword ptr [rsp + 92]
	lea	rcx, [rip + "??_C@_03PMGGPEJJ@?$CFd?6?$AA@"]
	mov	dword ptr [rsp + 48], eax # 4-byte Spill
	call	printf
	xor	edx, edx
	mov	dword ptr [rsp + 44], eax # 4-byte Spill
	mov	eax, edx
	add	rsp, 136
	ret
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                  # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	sub	rsp, 72
	.seh_stackalloc 72
	.seh_endprologue
	mov	qword ptr [rsp + 104], r9
	mov	qword ptr [rsp + 96], r8
	mov	qword ptr [rsp + 88], rdx
	mov	qword ptr [rsp + 64], rcx
	lea	rcx, [rsp + 88]
	mov	qword ptr [rsp + 48], rcx
	mov	r9, qword ptr [rsp + 48]
	mov	rdx, qword ptr [rsp + 64]
	mov	ecx, 1
	mov	qword ptr [rsp + 40], r9 # 8-byte Spill
	mov	qword ptr [rsp + 32], rdx # 8-byte Spill
	call	__acrt_iob_func
	xor	ecx, ecx
	mov	r8d, ecx
	mov	rcx, rax
	mov	rdx, qword ptr [rsp + 32] # 8-byte Reload
	mov	r9, qword ptr [rsp + 40] # 8-byte Reload
	call	_vfprintf_l
	mov	dword ptr [rsp + 60], eax
	mov	eax, dword ptr [rsp + 60]
	add	rsp, 72
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,printf
	.seh_endproc
                                        # -- End function
	.def	 _vsprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsprintf_l
	.globl	_vsprintf_l             # -- Begin function _vsprintf_l
	.p2align	4, 0x90
_vsprintf_l:                            # @_vsprintf_l
.seh_proc _vsprintf_l
# %bb.0:
	sub	rsp, 88
	.seh_stackalloc 88
	.seh_endprologue
	mov	qword ptr [rsp + 80], r9
	mov	qword ptr [rsp + 72], r8
	mov	qword ptr [rsp + 64], rdx
	mov	qword ptr [rsp + 56], rcx
	mov	rcx, qword ptr [rsp + 80]
	mov	r9, qword ptr [rsp + 72]
	mov	r8, qword ptr [rsp + 64]
	mov	rdx, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 48], rcx # 8-byte Spill
	mov	rcx, rdx
	mov	rdx, -1
	mov	rax, qword ptr [rsp + 48] # 8-byte Reload
	mov	qword ptr [rsp + 32], rax
	call	_vsnprintf_l
	nop
	add	rsp, 88
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,_vsprintf_l
	.seh_endproc
                                        # -- End function
	.def	 _vsnprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vsnprintf_l
	.globl	_vsnprintf_l            # -- Begin function _vsnprintf_l
	.p2align	4, 0x90
_vsnprintf_l:                           # @_vsnprintf_l
.seh_proc _vsnprintf_l
# %bb.0:
	sub	rsp, 152
	.seh_stackalloc 152
	.seh_endprologue
	mov	rax, qword ptr [rsp + 192]
	mov	qword ptr [rsp + 144], r9
	mov	qword ptr [rsp + 136], r8
	mov	qword ptr [rsp + 128], rdx
	mov	qword ptr [rsp + 120], rcx
	mov	rcx, qword ptr [rsp + 192]
	mov	rdx, qword ptr [rsp + 144]
	mov	r9, qword ptr [rsp + 136]
	mov	r8, qword ptr [rsp + 128]
	mov	r10, qword ptr [rsp + 120]
	mov	qword ptr [rsp + 104], rax # 8-byte Spill
	mov	qword ptr [rsp + 96], rcx # 8-byte Spill
	mov	qword ptr [rsp + 88], rdx # 8-byte Spill
	mov	qword ptr [rsp + 80], r9 # 8-byte Spill
	mov	qword ptr [rsp + 72], r8 # 8-byte Spill
	mov	qword ptr [rsp + 64], r10 # 8-byte Spill
	call	__local_stdio_printf_options
	mov	rax, qword ptr [rax]
	or	rax, 1
	mov	rcx, rax
	mov	rdx, qword ptr [rsp + 64] # 8-byte Reload
	mov	r8, qword ptr [rsp + 72] # 8-byte Reload
	mov	r9, qword ptr [rsp + 80] # 8-byte Reload
	mov	rax, qword ptr [rsp + 88] # 8-byte Reload
	mov	qword ptr [rsp + 32], rax
	mov	rax, qword ptr [rsp + 96] # 8-byte Reload
	mov	qword ptr [rsp + 40], rax
	call	__stdio_common_vsprintf
	mov	dword ptr [rsp + 116], eax
	cmp	dword ptr [rsp + 116], 0
	jge	.LBB7_2
# %bb.1:
	mov	eax, 4294967295
	mov	dword ptr [rsp + 60], eax # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:
	mov	eax, dword ptr [rsp + 116]
	mov	dword ptr [rsp + 60], eax # 4-byte Spill
.LBB7_3:
	mov	eax, dword ptr [rsp + 60] # 4-byte Reload
	add	rsp, 152
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,_vsnprintf_l
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	lea	rax, [rip + __local_stdio_printf_options._OptionsStorage]
	ret
                                        # -- End function
	.def	 _vfprintf_l;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,_vfprintf_l
	.globl	_vfprintf_l             # -- Begin function _vfprintf_l
	.p2align	4, 0x90
_vfprintf_l:                            # @_vfprintf_l
.seh_proc _vfprintf_l
# %bb.0:
	sub	rsp, 104
	.seh_stackalloc 104
	.seh_endprologue
	mov	qword ptr [rsp + 96], r9
	mov	qword ptr [rsp + 88], r8
	mov	qword ptr [rsp + 80], rdx
	mov	qword ptr [rsp + 72], rcx
	mov	rcx, qword ptr [rsp + 96]
	mov	r9, qword ptr [rsp + 88]
	mov	r8, qword ptr [rsp + 80]
	mov	rdx, qword ptr [rsp + 72]
	mov	qword ptr [rsp + 64], rcx # 8-byte Spill
	mov	qword ptr [rsp + 56], r9 # 8-byte Spill
	mov	qword ptr [rsp + 48], r8 # 8-byte Spill
	mov	qword ptr [rsp + 40], rdx # 8-byte Spill
	call	__local_stdio_printf_options
	mov	rcx, qword ptr [rax]
	mov	rdx, qword ptr [rsp + 40] # 8-byte Reload
	mov	r8, qword ptr [rsp + 48] # 8-byte Reload
	mov	r9, qword ptr [rsp + 56] # 8-byte Reload
	mov	rax, qword ptr [rsp + 64] # 8-byte Reload
	mov	qword ptr [rsp + 32], rax
	call	__stdio_common_vfprintf
	nop
	add	rsp, 104
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,_vfprintf_l
	.seh_endproc
                                        # -- End function
	.data
	.globl	g                       # @g
	.p2align	2
g:
	.long	20                      # 0x14

	.section	.rdata,"dr",discard,"??_C@_06BGKFAKIK@hello?6?$AA@"
	.globl	"??_C@_06BGKFAKIK@hello?6?$AA@" # @"??_C@_06BGKFAKIK@hello?6?$AA@"
"??_C@_06BGKFAKIK@hello?6?$AA@":
	.asciz	"hello\n"

	.section	.rdata,"dr",discard,"??_C@_0BL@EBJCOHAH@Size?5of?5char?5?3?5?$CFllu?5octet?6?$AA@"
	.globl	"??_C@_0BL@EBJCOHAH@Size?5of?5char?5?3?5?$CFllu?5octet?6?$AA@" # @"??_C@_0BL@EBJCOHAH@Size?5of?5char?5?3?5?$CFllu?5octet?6?$AA@"
"??_C@_0BL@EBJCOHAH@Size?5of?5char?5?3?5?$CFllu?5octet?6?$AA@":
	.asciz	"Size of char : %llu octet\n"

	.section	.rdata,"dr",discard,"??_C@_0BL@MDCKFMJM@Size?5of?5int?5?3?5?$CFllu?5octets?6?$AA@"
	.globl	"??_C@_0BL@MDCKFMJM@Size?5of?5int?5?3?5?$CFllu?5octets?6?$AA@" # @"??_C@_0BL@MDCKFMJM@Size?5of?5int?5?3?5?$CFllu?5octets?6?$AA@"
"??_C@_0BL@MDCKFMJM@Size?5of?5int?5?3?5?$CFllu?5octets?6?$AA@":
	.asciz	"Size of int : %llu octets\n"

	.section	.rdata,"dr",discard,"??_C@_0CB@DOIGAAAP@Size?5of?5short?5int?5?3?5?$CFllu?5octets?6@"
	.globl	"??_C@_0CB@DOIGAAAP@Size?5of?5short?5int?5?3?5?$CFllu?5octets?6@" # @"??_C@_0CB@DOIGAAAP@Size?5of?5short?5int?5?3?5?$CFllu?5octets?6@"
"??_C@_0CB@DOIGAAAP@Size?5of?5short?5int?5?3?5?$CFllu?5octets?6@":
	.asciz	"Size of short int : %llu octets\n"

	.section	.rdata,"dr",discard,"??_C@_0CA@EAADDPLF@Size?5of?5long?5int?5?3?5?$CFllu?5octets?6?$AA@"
	.globl	"??_C@_0CA@EAADDPLF@Size?5of?5long?5int?5?3?5?$CFllu?5octets?6?$AA@" # @"??_C@_0CA@EAADDPLF@Size?5of?5long?5int?5?3?5?$CFllu?5octets?6?$AA@"
"??_C@_0CA@EAADDPLF@Size?5of?5long?5int?5?3?5?$CFllu?5octets?6?$AA@":
	.asciz	"Size of long int : %llu octets\n"

	.section	.rdata,"dr",discard,"??_C@_0BN@JICNFJCG@Size?5of?5float?5?3?5?$CFllu?5octets?6?$AA@"
	.globl	"??_C@_0BN@JICNFJCG@Size?5of?5float?5?3?5?$CFllu?5octets?6?$AA@" # @"??_C@_0BN@JICNFJCG@Size?5of?5float?5?3?5?$CFllu?5octets?6?$AA@"
"??_C@_0BN@JICNFJCG@Size?5of?5float?5?3?5?$CFllu?5octets?6?$AA@":
	.asciz	"Size of float : %llu octets\n"

	.section	.rdata,"dr",discard,"??_C@_0BO@FLGPKGKH@Size?5of?5double?5?3?5?$CFllu?5octets?6?$AA@"
	.globl	"??_C@_0BO@FLGPKGKH@Size?5of?5double?5?3?5?$CFllu?5octets?6?$AA@" # @"??_C@_0BO@FLGPKGKH@Size?5of?5double?5?3?5?$CFllu?5octets?6?$AA@"
"??_C@_0BO@FLGPKGKH@Size?5of?5double?5?3?5?$CFllu?5octets?6?$AA@":
	.asciz	"Size of double : %llu octets\n"

	.section	.rdata,"dr",discard,"??_C@_0BP@BBGLOGCK@Size?5of?5wchar_t?5?3?5?$CFllu?5octets?6?$AA@"
	.globl	"??_C@_0BP@BBGLOGCK@Size?5of?5wchar_t?5?3?5?$CFllu?5octets?6?$AA@" # @"??_C@_0BP@BBGLOGCK@Size?5of?5wchar_t?5?3?5?$CFllu?5octets?6?$AA@"
"??_C@_0BP@BBGLOGCK@Size?5of?5wchar_t?5?3?5?$CFllu?5octets?6?$AA@":
	.asciz	"Size of wchar_t : %llu octets\n"

	.section	.rdata,"dr",discard,"??_C@_0BA@DMOOILGH@c?5value?5is?5?3?5?$CFd?$AA@"
	.globl	"??_C@_0BA@DMOOILGH@c?5value?5is?5?3?5?$CFd?$AA@" # @"??_C@_0BA@DMOOILGH@c?5value?5is?5?3?5?$CFd?$AA@"
"??_C@_0BA@DMOOILGH@c?5value?5is?5?3?5?$CFd?$AA@":
	.asciz	"c value is : %d"

	.section	.rdata,"dr",discard,"??_C@_0BI@LNKCHOEO@global?5value?5equals?5?$CFd?6?$AA@"
	.globl	"??_C@_0BI@LNKCHOEO@global?5value?5equals?5?$CFd?6?$AA@" # @"??_C@_0BI@LNKCHOEO@global?5value?5equals?5?$CFd?6?$AA@"
"??_C@_0BI@LNKCHOEO@global?5value?5equals?5?$CFd?6?$AA@":
	.asciz	"global value equals %d\n"

	.section	.rdata,"dr",discard,"??_C@_02HAOIJKIC@?$CFc?$AA@"
	.globl	"??_C@_02HAOIJKIC@?$CFc?$AA@" # @"??_C@_02HAOIJKIC@?$CFc?$AA@"
"??_C@_02HAOIJKIC@?$CFc?$AA@":
	.asciz	"%c"

	.data
	.p2align	2               # @main.m
main.m:
	.long	5                       # 0x5

	.section	.rdata,"dr",discard,"??_C@_03PMGGPEJJ@?$CFd?6?$AA@"
	.globl	"??_C@_03PMGGPEJJ@?$CFd?6?$AA@" # @"??_C@_03PMGGPEJJ@?$CFd?6?$AA@"
"??_C@_03PMGGPEJJ@?$CFd?6?$AA@":
	.asciz	"%d\n"

	.comm	h,4,2                   # @h
	.lcomm	__local_stdio_printf_options._OptionsStorage,8,8 # @__local_stdio_printf_options._OptionsStorage

