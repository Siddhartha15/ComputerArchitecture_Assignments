
p:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	33818193          	addi	gp,gp,824 # 123e8 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c00 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c38 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1c0000ef          	jal	ra,10284 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	11250513          	addi	a0,a0,274 # 101da <__libc_fini_array>
   100d0:	0de000ef          	jal	ra,101ae <atexit>
   100d4:	14e000ef          	jal	ra,10222 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	0d80006f          	j	101ba <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	be850713          	addi	a4,a0,-1048 # 11be8 <__TMC_END__>
   100f0:	be878793          	addi	a5,a5,-1048 # 11be8 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	be850513          	addi	a0,a0,-1048
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	be878593          	addi	a1,a5,-1048 # 11be8 <__TMC_END__>
   10114:	be850793          	addi	a5,a0,-1048 # 11be8 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	be850513          	addi	a0,a0,-1048
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11c00 <_edata>
   1013c:	eb15                	bnez	a4,10170 <__do_global_dtors_aux+0x38>
   1013e:	1141                	addi	sp,sp,-16
   10140:	e022                	sd	s0,0(sp)
   10142:	e406                	sd	ra,8(sp)
   10144:	843e                	mv	s0,a5
   10146:	fa3ff0ef          	jal	ra,100e8 <deregister_tm_clones>
   1014a:	000007b7          	lui	a5,0x0
   1014e:	00078793          	mv	a5,a5
   10152:	cb81                	beqz	a5,10162 <__do_global_dtors_aux+0x2a>
   10154:	6545                	lui	a0,0x11
   10156:	47850513          	addi	a0,a0,1144 # 11478 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11c00 <_edata>
   10168:	60a2                	ld	ra,8(sp)
   1016a:	6402                	ld	s0,0(sp)
   1016c:	0141                	addi	sp,sp,16
   1016e:	8082                	ret
   10170:	8082                	ret

0000000000010172 <frame_dummy>:
   10172:	000007b7          	lui	a5,0x0
   10176:	00078793          	mv	a5,a5
   1017a:	cf99                	beqz	a5,10198 <frame_dummy+0x26>
   1017c:	65c9                	lui	a1,0x12
   1017e:	6545                	lui	a0,0x11
   10180:	1141                	addi	sp,sp,-16
   10182:	c0858593          	addi	a1,a1,-1016 # 11c08 <object.5217>
   10186:	47850513          	addi	a0,a0,1144 # 11478 <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <main>:
   1019c:	00001297          	auipc	t0,0x1
   101a0:	2f428293          	addi	t0,t0,756 # 11490 <__fini_array_end>
   101a4:	0002b303          	ld	t1,0(t0)
   101a8:	0082b383          	ld	t2,8(t0)
   101ac:	939a                	add	t2,t2,t1

00000000000101ae <atexit>:
   101ae:	85aa                	mv	a1,a0
   101b0:	4681                	li	a3,0
   101b2:	4601                	li	a2,0
   101b4:	4501                	li	a0,0
   101b6:	1780006f          	j	1032e <__register_exitproc>

00000000000101ba <exit>:
   101ba:	1141                	addi	sp,sp,-16
   101bc:	4581                	li	a1,0
   101be:	e022                	sd	s0,0(sp)
   101c0:	e406                	sd	ra,8(sp)
   101c2:	842a                	mv	s0,a0
   101c4:	1d0000ef          	jal	ra,10394 <__call_exitprocs>
   101c8:	67c9                	lui	a5,0x12
   101ca:	bf07b503          	ld	a0,-1040(a5) # 11bf0 <_global_impure_ptr>
   101ce:	6d3c                	ld	a5,88(a0)
   101d0:	c391                	beqz	a5,101d4 <exit+0x1a>
   101d2:	9782                	jalr	a5
   101d4:	8522                	mv	a0,s0
   101d6:	26e000ef          	jal	ra,10444 <_exit>

00000000000101da <__libc_fini_array>:
   101da:	7179                	addi	sp,sp,-48
   101dc:	67c5                	lui	a5,0x11
   101de:	6745                	lui	a4,0x11
   101e0:	f022                	sd	s0,32(sp)
   101e2:	48870713          	addi	a4,a4,1160 # 11488 <__init_array_end>
   101e6:	49078413          	addi	s0,a5,1168 # 11490 <__fini_array_end>
   101ea:	8c19                	sub	s0,s0,a4
   101ec:	ec26                	sd	s1,24(sp)
   101ee:	e84a                	sd	s2,16(sp)
   101f0:	e44e                	sd	s3,8(sp)
   101f2:	f406                	sd	ra,40(sp)
   101f4:	840d                	srai	s0,s0,0x3
   101f6:	4481                	li	s1,0
   101f8:	49078913          	addi	s2,a5,1168
   101fc:	59e1                	li	s3,-8
   101fe:	00941a63          	bne	s0,s1,10212 <__libc_fini_array+0x38>
   10202:	7402                	ld	s0,32(sp)
   10204:	70a2                	ld	ra,40(sp)
   10206:	64e2                	ld	s1,24(sp)
   10208:	6942                	ld	s2,16(sp)
   1020a:	69a2                	ld	s3,8(sp)
   1020c:	6145                	addi	sp,sp,48
   1020e:	ed9ff06f          	j	100e6 <_fini>
   10212:	033487b3          	mul	a5,s1,s3
   10216:	0485                	addi	s1,s1,1
   10218:	97ca                	add	a5,a5,s2
   1021a:	ff87b783          	ld	a5,-8(a5)
   1021e:	9782                	jalr	a5
   10220:	bff9                	j	101fe <__libc_fini_array+0x24>

0000000000010222 <__libc_init_array>:
   10222:	1101                	addi	sp,sp,-32
   10224:	e822                	sd	s0,16(sp)
   10226:	e426                	sd	s1,8(sp)
   10228:	6445                	lui	s0,0x11
   1022a:	64c5                	lui	s1,0x11
   1022c:	47c48793          	addi	a5,s1,1148 # 1147c <__preinit_array_end>
   10230:	47c40413          	addi	s0,s0,1148 # 1147c <__preinit_array_end>
   10234:	8c1d                	sub	s0,s0,a5
   10236:	e04a                	sd	s2,0(sp)
   10238:	ec06                	sd	ra,24(sp)
   1023a:	840d                	srai	s0,s0,0x3
   1023c:	47c48493          	addi	s1,s1,1148
   10240:	4901                	li	s2,0
   10242:	02891763          	bne	s2,s0,10270 <__libc_init_array+0x4e>
   10246:	64c5                	lui	s1,0x11
   10248:	e9fff0ef          	jal	ra,100e6 <_fini>
   1024c:	6445                	lui	s0,0x11
   1024e:	48048793          	addi	a5,s1,1152 # 11480 <__frame_dummy_init_array_entry>
   10252:	48840413          	addi	s0,s0,1160 # 11488 <__init_array_end>
   10256:	8c1d                	sub	s0,s0,a5
   10258:	840d                	srai	s0,s0,0x3
   1025a:	48048493          	addi	s1,s1,1152
   1025e:	4901                	li	s2,0
   10260:	00891d63          	bne	s2,s0,1027a <__libc_init_array+0x58>
   10264:	60e2                	ld	ra,24(sp)
   10266:	6442                	ld	s0,16(sp)
   10268:	64a2                	ld	s1,8(sp)
   1026a:	6902                	ld	s2,0(sp)
   1026c:	6105                	addi	sp,sp,32
   1026e:	8082                	ret
   10270:	609c                	ld	a5,0(s1)
   10272:	0905                	addi	s2,s2,1
   10274:	04a1                	addi	s1,s1,8
   10276:	9782                	jalr	a5
   10278:	b7e9                	j	10242 <__libc_init_array+0x20>
   1027a:	609c                	ld	a5,0(s1)
   1027c:	0905                	addi	s2,s2,1
   1027e:	04a1                	addi	s1,s1,8
   10280:	9782                	jalr	a5
   10282:	bff9                	j	10260 <__libc_init_array+0x3e>

0000000000010284 <memset>:
   10284:	433d                	li	t1,15
   10286:	872a                	mv	a4,a0
   10288:	02c37163          	bleu	a2,t1,102aa <memset+0x26>
   1028c:	00f77793          	andi	a5,a4,15
   10290:	e3c1                	bnez	a5,10310 <memset+0x8c>
   10292:	e1bd                	bnez	a1,102f8 <memset+0x74>
   10294:	ff067693          	andi	a3,a2,-16
   10298:	8a3d                	andi	a2,a2,15
   1029a:	96ba                	add	a3,a3,a4
   1029c:	e30c                	sd	a1,0(a4)
   1029e:	e70c                	sd	a1,8(a4)
   102a0:	0741                	addi	a4,a4,16
   102a2:	fed76de3          	bltu	a4,a3,1029c <memset+0x18>
   102a6:	e211                	bnez	a2,102aa <memset+0x26>
   102a8:	8082                	ret
   102aa:	40c306b3          	sub	a3,t1,a2
   102ae:	068a                	slli	a3,a3,0x2
   102b0:	00000297          	auipc	t0,0x0
   102b4:	9696                	add	a3,a3,t0
   102b6:	00a68067          	jr	10(a3)
   102ba:	00b70723          	sb	a1,14(a4)
   102be:	00b706a3          	sb	a1,13(a4)
   102c2:	00b70623          	sb	a1,12(a4)
   102c6:	00b705a3          	sb	a1,11(a4)
   102ca:	00b70523          	sb	a1,10(a4)
   102ce:	00b704a3          	sb	a1,9(a4)
   102d2:	00b70423          	sb	a1,8(a4)
   102d6:	00b703a3          	sb	a1,7(a4)
   102da:	00b70323          	sb	a1,6(a4)
   102de:	00b702a3          	sb	a1,5(a4)
   102e2:	00b70223          	sb	a1,4(a4)
   102e6:	00b701a3          	sb	a1,3(a4)
   102ea:	00b70123          	sb	a1,2(a4)
   102ee:	00b700a3          	sb	a1,1(a4)
   102f2:	00b70023          	sb	a1,0(a4)
   102f6:	8082                	ret
   102f8:	0ff5f593          	andi	a1,a1,255
   102fc:	00859693          	slli	a3,a1,0x8
   10300:	8dd5                	or	a1,a1,a3
   10302:	01059693          	slli	a3,a1,0x10
   10306:	8dd5                	or	a1,a1,a3
   10308:	02059693          	slli	a3,a1,0x20
   1030c:	8dd5                	or	a1,a1,a3
   1030e:	b759                	j	10294 <memset+0x10>
   10310:	00279693          	slli	a3,a5,0x2
   10314:	00000297          	auipc	t0,0x0
   10318:	9696                	add	a3,a3,t0
   1031a:	8286                	mv	t0,ra
   1031c:	fa2680e7          	jalr	-94(a3)
   10320:	8096                	mv	ra,t0
   10322:	17c1                	addi	a5,a5,-16
   10324:	8f1d                	sub	a4,a4,a5
   10326:	963e                	add	a2,a2,a5
   10328:	f8c371e3          	bleu	a2,t1,102aa <memset+0x26>
   1032c:	b79d                	j	10292 <memset+0xe>

000000000001032e <__register_exitproc>:
   1032e:	67c9                	lui	a5,0x12
   10330:	bf07b703          	ld	a4,-1040(a5) # 11bf0 <_global_impure_ptr>
   10334:	832a                	mv	t1,a0
   10336:	1f873783          	ld	a5,504(a4)
   1033a:	e789                	bnez	a5,10344 <__register_exitproc+0x16>
   1033c:	20070793          	addi	a5,a4,512
   10340:	1ef73c23          	sd	a5,504(a4)
   10344:	4798                	lw	a4,8(a5)
   10346:	487d                	li	a6,31
   10348:	557d                	li	a0,-1
   1034a:	04e84463          	blt	a6,a4,10392 <__register_exitproc+0x64>
   1034e:	02030a63          	beqz	t1,10382 <__register_exitproc+0x54>
   10352:	00371813          	slli	a6,a4,0x3
   10356:	983e                	add	a6,a6,a5
   10358:	10c83823          	sd	a2,272(a6)
   1035c:	3107a883          	lw	a7,784(a5)
   10360:	4605                	li	a2,1
   10362:	00e6163b          	sllw	a2,a2,a4
   10366:	00c8e8b3          	or	a7,a7,a2
   1036a:	3117a823          	sw	a7,784(a5)
   1036e:	20d83823          	sd	a3,528(a6)
   10372:	4689                	li	a3,2
   10374:	00d31763          	bne	t1,a3,10382 <__register_exitproc+0x54>
   10378:	3147a683          	lw	a3,788(a5)
   1037c:	8e55                	or	a2,a2,a3
   1037e:	30c7aa23          	sw	a2,788(a5)
   10382:	0017069b          	addiw	a3,a4,1
   10386:	0709                	addi	a4,a4,2
   10388:	070e                	slli	a4,a4,0x3
   1038a:	c794                	sw	a3,8(a5)
   1038c:	97ba                	add	a5,a5,a4
   1038e:	e38c                	sd	a1,0(a5)
   10390:	4501                	li	a0,0
   10392:	8082                	ret

0000000000010394 <__call_exitprocs>:
   10394:	715d                	addi	sp,sp,-80
   10396:	67c9                	lui	a5,0x12
   10398:	f44e                	sd	s3,40(sp)
   1039a:	bf07b983          	ld	s3,-1040(a5) # 11bf0 <_global_impure_ptr>
   1039e:	f052                	sd	s4,32(sp)
   103a0:	ec56                	sd	s5,24(sp)
   103a2:	e85a                	sd	s6,16(sp)
   103a4:	e486                	sd	ra,72(sp)
   103a6:	e0a2                	sd	s0,64(sp)
   103a8:	fc26                	sd	s1,56(sp)
   103aa:	f84a                	sd	s2,48(sp)
   103ac:	e45e                	sd	s7,8(sp)
   103ae:	8aaa                	mv	s5,a0
   103b0:	8a2e                	mv	s4,a1
   103b2:	4b05                	li	s6,1
   103b4:	1f89b403          	ld	s0,504(s3)
   103b8:	c801                	beqz	s0,103c8 <__call_exitprocs+0x34>
   103ba:	4404                	lw	s1,8(s0)
   103bc:	34fd                	addiw	s1,s1,-1
   103be:	00349913          	slli	s2,s1,0x3
   103c2:	9922                	add	s2,s2,s0
   103c4:	0004dd63          	bgez	s1,103de <__call_exitprocs+0x4a>
   103c8:	60a6                	ld	ra,72(sp)
   103ca:	6406                	ld	s0,64(sp)
   103cc:	74e2                	ld	s1,56(sp)
   103ce:	7942                	ld	s2,48(sp)
   103d0:	79a2                	ld	s3,40(sp)
   103d2:	7a02                	ld	s4,32(sp)
   103d4:	6ae2                	ld	s5,24(sp)
   103d6:	6b42                	ld	s6,16(sp)
   103d8:	6ba2                	ld	s7,8(sp)
   103da:	6161                	addi	sp,sp,80
   103dc:	8082                	ret
   103de:	000a0963          	beqz	s4,103f0 <__call_exitprocs+0x5c>
   103e2:	21093783          	ld	a5,528(s2)
   103e6:	01478563          	beq	a5,s4,103f0 <__call_exitprocs+0x5c>
   103ea:	34fd                	addiw	s1,s1,-1
   103ec:	1961                	addi	s2,s2,-8
   103ee:	bfd9                	j	103c4 <__call_exitprocs+0x30>
   103f0:	441c                	lw	a5,8(s0)
   103f2:	01093683          	ld	a3,16(s2)
   103f6:	37fd                	addiw	a5,a5,-1
   103f8:	02979663          	bne	a5,s1,10424 <__call_exitprocs+0x90>
   103fc:	c404                	sw	s1,8(s0)
   103fe:	d6f5                	beqz	a3,103ea <__call_exitprocs+0x56>
   10400:	31042703          	lw	a4,784(s0)
   10404:	009b163b          	sllw	a2,s6,s1
   10408:	00842b83          	lw	s7,8(s0)
   1040c:	8f71                	and	a4,a4,a2
   1040e:	2701                	sext.w	a4,a4
   10410:	ef09                	bnez	a4,1042a <__call_exitprocs+0x96>
   10412:	9682                	jalr	a3
   10414:	4418                	lw	a4,8(s0)
   10416:	1f89b783          	ld	a5,504(s3)
   1041a:	f9771de3          	bne	a4,s7,103b4 <__call_exitprocs+0x20>
   1041e:	fcf406e3          	beq	s0,a5,103ea <__call_exitprocs+0x56>
   10422:	bf49                	j	103b4 <__call_exitprocs+0x20>
   10424:	00093823          	sd	zero,16(s2)
   10428:	bfd9                	j	103fe <__call_exitprocs+0x6a>
   1042a:	31442783          	lw	a5,788(s0)
   1042e:	11093583          	ld	a1,272(s2)
   10432:	8ff1                	and	a5,a5,a2
   10434:	2781                	sext.w	a5,a5
   10436:	e781                	bnez	a5,1043e <__call_exitprocs+0xaa>
   10438:	8556                	mv	a0,s5
   1043a:	9682                	jalr	a3
   1043c:	bfe1                	j	10414 <__call_exitprocs+0x80>
   1043e:	852e                	mv	a0,a1
   10440:	9682                	jalr	a3
   10442:	bfc9                	j	10414 <__call_exitprocs+0x80>

0000000000010444 <_exit>:
   10444:	4581                	li	a1,0
   10446:	4601                	li	a2,0
   10448:	4681                	li	a3,0
   1044a:	4701                	li	a4,0
   1044c:	4781                	li	a5,0
   1044e:	05d00893          	li	a7,93
   10452:	00000073          	ecall
   10456:	00055c63          	bgez	a0,1046e <_exit+0x2a>
   1045a:	1141                	addi	sp,sp,-16
   1045c:	e022                	sd	s0,0(sp)
   1045e:	842a                	mv	s0,a0
   10460:	e406                	sd	ra,8(sp)
   10462:	4080043b          	negw	s0,s0
   10466:	00a000ef          	jal	ra,10470 <__errno>
   1046a:	c100                	sw	s0,0(a0)
   1046c:	a001                	j	1046c <_exit+0x28>
   1046e:	a001                	j	1046e <_exit+0x2a>

0000000000010470 <__errno>:
   10470:	8101b503          	ld	a0,-2032(gp) # 11bf8 <_impure_ptr>
   10474:	8082                	ret

Disassembly of section .eh_frame:

0000000000011478 <__EH_FRAME_BEGIN__>:
   11478:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011480 <__frame_dummy_init_array_entry>:
   11480:	0172                	slli	sp,sp,0x1c
   11482:	0001                	nop
   11484:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011488 <__do_global_dtors_aux_fini_array_entry>:
   11488:	0138                	addi	a4,sp,136
   1148a:	0001                	nop
   1148c:	0000                	unimp
	...

Disassembly of section .data:

0000000000011490 <num>:
   11490:	000a                	c.slli	zero,0x2
   11492:	0000                	unimp
   11494:	0000                	unimp
   11496:	0000                	unimp
   11498:	0014                	0x14
   1149a:	0000                	unimp
   1149c:	0000                	unimp
	...

00000000000114a0 <impure_data>:
	...
   114a8:	19d8                	addi	a4,sp,244
   114aa:	0001                	nop
   114ac:	0000                	unimp
   114ae:	0000                	unimp
   114b0:	1a88                	addi	a0,sp,368
   114b2:	0001                	nop
   114b4:	0000                	unimp
   114b6:	0000                	unimp
   114b8:	1b38                	addi	a4,sp,440
   114ba:	0001                	nop
	...
   11588:	0001                	nop
   1158a:	0000                	unimp
   1158c:	0000                	unimp
   1158e:	0000                	unimp
   11590:	330e                	fld	ft6,224(sp)
   11592:	abcd                	j	11b84 <impure_data+0x6e4>
   11594:	1234                	addi	a3,sp,296
   11596:	e66d                	bnez	a2,11680 <impure_data+0x1e0>
   11598:	deec                	sw	a1,124(a3)
   1159a:	0005                	c.nop	1
   1159c:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011be8 <__TMC_END__>:
	...

0000000000011bf0 <_global_impure_ptr>:
   11bf0:	14a0                	addi	s0,sp,616
   11bf2:	0001                	nop
   11bf4:	0000                	unimp
	...

0000000000011bf8 <_impure_ptr>:
   11bf8:	14a0                	addi	s0,sp,616
   11bfa:	0001                	nop
   11bfc:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011c00 <__bss_start>:
	...

0000000000011c08 <object.5217>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3720                	fld	fs0,104(a4)
   c:	322e                	fld	ft4,232(sp)
   e:	302e                	fld	ft0,232(sp)
	...
