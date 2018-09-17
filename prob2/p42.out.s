
p4:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <_start>:
   100b0:	00002197          	auipc	gp,0x2
   100b4:	34018193          	addi	gp,gp,832 # 123f0 <__global_pointer$>
   100b8:	81818513          	addi	a0,gp,-2024 # 11c08 <_edata>
   100bc:	85018613          	addi	a2,gp,-1968 # 11c40 <_end>
   100c0:	8e09                	sub	a2,a2,a0
   100c2:	4581                	li	a1,0
   100c4:	1ce000ef          	jal	ra,10292 <memset>
   100c8:	00000517          	auipc	a0,0x0
   100cc:	12050513          	addi	a0,a0,288 # 101e8 <__libc_fini_array>
   100d0:	0ec000ef          	jal	ra,101bc <atexit>
   100d4:	15c000ef          	jal	ra,10230 <__libc_init_array>
   100d8:	4502                	lw	a0,0(sp)
   100da:	002c                	addi	a1,sp,8
   100dc:	4601                	li	a2,0
   100de:	0be000ef          	jal	ra,1019c <main>
   100e2:	0e60006f          	j	101c8 <exit>

00000000000100e6 <_fini>:
   100e6:	8082                	ret

00000000000100e8 <deregister_tm_clones>:
   100e8:	6549                	lui	a0,0x12
   100ea:	67c9                	lui	a5,0x12
   100ec:	bf050713          	addi	a4,a0,-1040 # 11bf0 <__TMC_END__>
   100f0:	bf078793          	addi	a5,a5,-1040 # 11bf0 <__TMC_END__>
   100f4:	00e78b63          	beq	a5,a4,1010a <deregister_tm_clones+0x22>
   100f8:	00000337          	lui	t1,0x0
   100fc:	00030313          	mv	t1,t1
   10100:	00030563          	beqz	t1,1010a <deregister_tm_clones+0x22>
   10104:	bf050513          	addi	a0,a0,-1040
   10108:	8302                	jr	t1
   1010a:	8082                	ret

000000000001010c <register_tm_clones>:
   1010c:	67c9                	lui	a5,0x12
   1010e:	6549                	lui	a0,0x12
   10110:	bf078593          	addi	a1,a5,-1040 # 11bf0 <__TMC_END__>
   10114:	bf050793          	addi	a5,a0,-1040 # 11bf0 <__TMC_END__>
   10118:	8d9d                	sub	a1,a1,a5
   1011a:	858d                	srai	a1,a1,0x3
   1011c:	4789                	li	a5,2
   1011e:	02f5c5b3          	div	a1,a1,a5
   10122:	c991                	beqz	a1,10136 <register_tm_clones+0x2a>
   10124:	00000337          	lui	t1,0x0
   10128:	00030313          	mv	t1,t1
   1012c:	00030563          	beqz	t1,10136 <register_tm_clones+0x2a>
   10130:	bf050513          	addi	a0,a0,-1040
   10134:	8302                	jr	t1
   10136:	8082                	ret

0000000000010138 <__do_global_dtors_aux>:
   10138:	8181c703          	lbu	a4,-2024(gp) # 11c08 <_edata>
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
   10156:	48450513          	addi	a0,a0,1156 # 11484 <__EH_FRAME_BEGIN__>
   1015a:	ffff0097          	auipc	ra,0xffff0
   1015e:	ea6080e7          	jalr	-346(ra) # 0 <_start-0x100b0>
   10162:	4785                	li	a5,1
   10164:	80f18c23          	sb	a5,-2024(gp) # 11c08 <_edata>
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
   10182:	c1058593          	addi	a1,a1,-1008 # 11c10 <object.5217>
   10186:	48450513          	addi	a0,a0,1156 # 11484 <__EH_FRAME_BEGIN__>
   1018a:	e406                	sd	ra,8(sp)
   1018c:	ffff0097          	auipc	ra,0xffff0
   10190:	e74080e7          	jalr	-396(ra) # 0 <_start-0x100b0>
   10194:	60a2                	ld	ra,8(sp)
   10196:	0141                	addi	sp,sp,16
   10198:	f75ff06f          	j	1010c <register_tm_clones>

000000000001019c <main>:
   1019c:	00001297          	auipc	t0,0x1
   101a0:	2fc28293          	addi	t0,t0,764 # 11498 <__fini_array_end>
   101a4:	0002b383          	ld	t2,0(t0)
   101a8:	00001e17          	auipc	t3,0x1
   101ac:	2f8e0e13          	addi	t3,t3,760 # 114a0 <num1>
   101b0:	000e3303          	ld	t1,0(t3)
   101b4:	00730e33          	add	t3,t1,t2
   101b8:	31c2bc23          	sd	t3,792(t0)

00000000000101bc <atexit>:
   101bc:	85aa                	mv	a1,a0
   101be:	4681                	li	a3,0
   101c0:	4601                	li	a2,0
   101c2:	4501                	li	a0,0
   101c4:	1780006f          	j	1033c <__register_exitproc>

00000000000101c8 <exit>:
   101c8:	1141                	addi	sp,sp,-16
   101ca:	4581                	li	a1,0
   101cc:	e022                	sd	s0,0(sp)
   101ce:	e406                	sd	ra,8(sp)
   101d0:	842a                	mv	s0,a0
   101d2:	1d0000ef          	jal	ra,103a2 <__call_exitprocs>
   101d6:	67c9                	lui	a5,0x12
   101d8:	bf87b503          	ld	a0,-1032(a5) # 11bf8 <_global_impure_ptr>
   101dc:	6d3c                	ld	a5,88(a0)
   101de:	c391                	beqz	a5,101e2 <exit+0x1a>
   101e0:	9782                	jalr	a5
   101e2:	8522                	mv	a0,s0
   101e4:	26e000ef          	jal	ra,10452 <_exit>

00000000000101e8 <__libc_fini_array>:
   101e8:	7179                	addi	sp,sp,-48
   101ea:	67c5                	lui	a5,0x11
   101ec:	6745                	lui	a4,0x11
   101ee:	f022                	sd	s0,32(sp)
   101f0:	49070713          	addi	a4,a4,1168 # 11490 <__init_array_end>
   101f4:	49878413          	addi	s0,a5,1176 # 11498 <__fini_array_end>
   101f8:	8c19                	sub	s0,s0,a4
   101fa:	ec26                	sd	s1,24(sp)
   101fc:	e84a                	sd	s2,16(sp)
   101fe:	e44e                	sd	s3,8(sp)
   10200:	f406                	sd	ra,40(sp)
   10202:	840d                	srai	s0,s0,0x3
   10204:	4481                	li	s1,0
   10206:	49878913          	addi	s2,a5,1176
   1020a:	59e1                	li	s3,-8
   1020c:	00941a63          	bne	s0,s1,10220 <__libc_fini_array+0x38>
   10210:	7402                	ld	s0,32(sp)
   10212:	70a2                	ld	ra,40(sp)
   10214:	64e2                	ld	s1,24(sp)
   10216:	6942                	ld	s2,16(sp)
   10218:	69a2                	ld	s3,8(sp)
   1021a:	6145                	addi	sp,sp,48
   1021c:	ecbff06f          	j	100e6 <_fini>
   10220:	033487b3          	mul	a5,s1,s3
   10224:	0485                	addi	s1,s1,1
   10226:	97ca                	add	a5,a5,s2
   10228:	ff87b783          	ld	a5,-8(a5)
   1022c:	9782                	jalr	a5
   1022e:	bff9                	j	1020c <__libc_fini_array+0x24>

0000000000010230 <__libc_init_array>:
   10230:	1101                	addi	sp,sp,-32
   10232:	e822                	sd	s0,16(sp)
   10234:	e426                	sd	s1,8(sp)
   10236:	6445                	lui	s0,0x11
   10238:	64c5                	lui	s1,0x11
   1023a:	48848793          	addi	a5,s1,1160 # 11488 <__frame_dummy_init_array_entry>
   1023e:	48840413          	addi	s0,s0,1160 # 11488 <__frame_dummy_init_array_entry>
   10242:	8c1d                	sub	s0,s0,a5
   10244:	e04a                	sd	s2,0(sp)
   10246:	ec06                	sd	ra,24(sp)
   10248:	840d                	srai	s0,s0,0x3
   1024a:	48848493          	addi	s1,s1,1160
   1024e:	4901                	li	s2,0
   10250:	02891763          	bne	s2,s0,1027e <__libc_init_array+0x4e>
   10254:	64c5                	lui	s1,0x11
   10256:	e91ff0ef          	jal	ra,100e6 <_fini>
   1025a:	6445                	lui	s0,0x11
   1025c:	48848793          	addi	a5,s1,1160 # 11488 <__frame_dummy_init_array_entry>
   10260:	49040413          	addi	s0,s0,1168 # 11490 <__init_array_end>
   10264:	8c1d                	sub	s0,s0,a5
   10266:	840d                	srai	s0,s0,0x3
   10268:	48848493          	addi	s1,s1,1160
   1026c:	4901                	li	s2,0
   1026e:	00891d63          	bne	s2,s0,10288 <__libc_init_array+0x58>
   10272:	60e2                	ld	ra,24(sp)
   10274:	6442                	ld	s0,16(sp)
   10276:	64a2                	ld	s1,8(sp)
   10278:	6902                	ld	s2,0(sp)
   1027a:	6105                	addi	sp,sp,32
   1027c:	8082                	ret
   1027e:	609c                	ld	a5,0(s1)
   10280:	0905                	addi	s2,s2,1
   10282:	04a1                	addi	s1,s1,8
   10284:	9782                	jalr	a5
   10286:	b7e9                	j	10250 <__libc_init_array+0x20>
   10288:	609c                	ld	a5,0(s1)
   1028a:	0905                	addi	s2,s2,1
   1028c:	04a1                	addi	s1,s1,8
   1028e:	9782                	jalr	a5
   10290:	bff9                	j	1026e <__libc_init_array+0x3e>

0000000000010292 <memset>:
   10292:	433d                	li	t1,15
   10294:	872a                	mv	a4,a0
   10296:	02c37163          	bleu	a2,t1,102b8 <memset+0x26>
   1029a:	00f77793          	andi	a5,a4,15
   1029e:	e3c1                	bnez	a5,1031e <memset+0x8c>
   102a0:	e1bd                	bnez	a1,10306 <memset+0x74>
   102a2:	ff067693          	andi	a3,a2,-16
   102a6:	8a3d                	andi	a2,a2,15
   102a8:	96ba                	add	a3,a3,a4
   102aa:	e30c                	sd	a1,0(a4)
   102ac:	e70c                	sd	a1,8(a4)
   102ae:	0741                	addi	a4,a4,16
   102b0:	fed76de3          	bltu	a4,a3,102aa <memset+0x18>
   102b4:	e211                	bnez	a2,102b8 <memset+0x26>
   102b6:	8082                	ret
   102b8:	40c306b3          	sub	a3,t1,a2
   102bc:	068a                	slli	a3,a3,0x2
   102be:	00000297          	auipc	t0,0x0
   102c2:	9696                	add	a3,a3,t0
   102c4:	00a68067          	jr	10(a3)
   102c8:	00b70723          	sb	a1,14(a4)
   102cc:	00b706a3          	sb	a1,13(a4)
   102d0:	00b70623          	sb	a1,12(a4)
   102d4:	00b705a3          	sb	a1,11(a4)
   102d8:	00b70523          	sb	a1,10(a4)
   102dc:	00b704a3          	sb	a1,9(a4)
   102e0:	00b70423          	sb	a1,8(a4)
   102e4:	00b703a3          	sb	a1,7(a4)
   102e8:	00b70323          	sb	a1,6(a4)
   102ec:	00b702a3          	sb	a1,5(a4)
   102f0:	00b70223          	sb	a1,4(a4)
   102f4:	00b701a3          	sb	a1,3(a4)
   102f8:	00b70123          	sb	a1,2(a4)
   102fc:	00b700a3          	sb	a1,1(a4)
   10300:	00b70023          	sb	a1,0(a4)
   10304:	8082                	ret
   10306:	0ff5f593          	andi	a1,a1,255
   1030a:	00859693          	slli	a3,a1,0x8
   1030e:	8dd5                	or	a1,a1,a3
   10310:	01059693          	slli	a3,a1,0x10
   10314:	8dd5                	or	a1,a1,a3
   10316:	02059693          	slli	a3,a1,0x20
   1031a:	8dd5                	or	a1,a1,a3
   1031c:	b759                	j	102a2 <memset+0x10>
   1031e:	00279693          	slli	a3,a5,0x2
   10322:	00000297          	auipc	t0,0x0
   10326:	9696                	add	a3,a3,t0
   10328:	8286                	mv	t0,ra
   1032a:	fa2680e7          	jalr	-94(a3)
   1032e:	8096                	mv	ra,t0
   10330:	17c1                	addi	a5,a5,-16
   10332:	8f1d                	sub	a4,a4,a5
   10334:	963e                	add	a2,a2,a5
   10336:	f8c371e3          	bleu	a2,t1,102b8 <memset+0x26>
   1033a:	b79d                	j	102a0 <memset+0xe>

000000000001033c <__register_exitproc>:
   1033c:	67c9                	lui	a5,0x12
   1033e:	bf87b703          	ld	a4,-1032(a5) # 11bf8 <_global_impure_ptr>
   10342:	832a                	mv	t1,a0
   10344:	1f873783          	ld	a5,504(a4)
   10348:	e789                	bnez	a5,10352 <__register_exitproc+0x16>
   1034a:	20070793          	addi	a5,a4,512
   1034e:	1ef73c23          	sd	a5,504(a4)
   10352:	4798                	lw	a4,8(a5)
   10354:	487d                	li	a6,31
   10356:	557d                	li	a0,-1
   10358:	04e84463          	blt	a6,a4,103a0 <__register_exitproc+0x64>
   1035c:	02030a63          	beqz	t1,10390 <__register_exitproc+0x54>
   10360:	00371813          	slli	a6,a4,0x3
   10364:	983e                	add	a6,a6,a5
   10366:	10c83823          	sd	a2,272(a6)
   1036a:	3107a883          	lw	a7,784(a5)
   1036e:	4605                	li	a2,1
   10370:	00e6163b          	sllw	a2,a2,a4
   10374:	00c8e8b3          	or	a7,a7,a2
   10378:	3117a823          	sw	a7,784(a5)
   1037c:	20d83823          	sd	a3,528(a6)
   10380:	4689                	li	a3,2
   10382:	00d31763          	bne	t1,a3,10390 <__register_exitproc+0x54>
   10386:	3147a683          	lw	a3,788(a5)
   1038a:	8e55                	or	a2,a2,a3
   1038c:	30c7aa23          	sw	a2,788(a5)
   10390:	0017069b          	addiw	a3,a4,1
   10394:	0709                	addi	a4,a4,2
   10396:	070e                	slli	a4,a4,0x3
   10398:	c794                	sw	a3,8(a5)
   1039a:	97ba                	add	a5,a5,a4
   1039c:	e38c                	sd	a1,0(a5)
   1039e:	4501                	li	a0,0
   103a0:	8082                	ret

00000000000103a2 <__call_exitprocs>:
   103a2:	715d                	addi	sp,sp,-80
   103a4:	67c9                	lui	a5,0x12
   103a6:	f44e                	sd	s3,40(sp)
   103a8:	bf87b983          	ld	s3,-1032(a5) # 11bf8 <_global_impure_ptr>
   103ac:	f052                	sd	s4,32(sp)
   103ae:	ec56                	sd	s5,24(sp)
   103b0:	e85a                	sd	s6,16(sp)
   103b2:	e486                	sd	ra,72(sp)
   103b4:	e0a2                	sd	s0,64(sp)
   103b6:	fc26                	sd	s1,56(sp)
   103b8:	f84a                	sd	s2,48(sp)
   103ba:	e45e                	sd	s7,8(sp)
   103bc:	8aaa                	mv	s5,a0
   103be:	8a2e                	mv	s4,a1
   103c0:	4b05                	li	s6,1
   103c2:	1f89b403          	ld	s0,504(s3)
   103c6:	c801                	beqz	s0,103d6 <__call_exitprocs+0x34>
   103c8:	4404                	lw	s1,8(s0)
   103ca:	34fd                	addiw	s1,s1,-1
   103cc:	00349913          	slli	s2,s1,0x3
   103d0:	9922                	add	s2,s2,s0
   103d2:	0004dd63          	bgez	s1,103ec <__call_exitprocs+0x4a>
   103d6:	60a6                	ld	ra,72(sp)
   103d8:	6406                	ld	s0,64(sp)
   103da:	74e2                	ld	s1,56(sp)
   103dc:	7942                	ld	s2,48(sp)
   103de:	79a2                	ld	s3,40(sp)
   103e0:	7a02                	ld	s4,32(sp)
   103e2:	6ae2                	ld	s5,24(sp)
   103e4:	6b42                	ld	s6,16(sp)
   103e6:	6ba2                	ld	s7,8(sp)
   103e8:	6161                	addi	sp,sp,80
   103ea:	8082                	ret
   103ec:	000a0963          	beqz	s4,103fe <__call_exitprocs+0x5c>
   103f0:	21093783          	ld	a5,528(s2)
   103f4:	01478563          	beq	a5,s4,103fe <__call_exitprocs+0x5c>
   103f8:	34fd                	addiw	s1,s1,-1
   103fa:	1961                	addi	s2,s2,-8
   103fc:	bfd9                	j	103d2 <__call_exitprocs+0x30>
   103fe:	441c                	lw	a5,8(s0)
   10400:	01093683          	ld	a3,16(s2)
   10404:	37fd                	addiw	a5,a5,-1
   10406:	02979663          	bne	a5,s1,10432 <__call_exitprocs+0x90>
   1040a:	c404                	sw	s1,8(s0)
   1040c:	d6f5                	beqz	a3,103f8 <__call_exitprocs+0x56>
   1040e:	31042703          	lw	a4,784(s0)
   10412:	009b163b          	sllw	a2,s6,s1
   10416:	00842b83          	lw	s7,8(s0)
   1041a:	8f71                	and	a4,a4,a2
   1041c:	2701                	sext.w	a4,a4
   1041e:	ef09                	bnez	a4,10438 <__call_exitprocs+0x96>
   10420:	9682                	jalr	a3
   10422:	4418                	lw	a4,8(s0)
   10424:	1f89b783          	ld	a5,504(s3)
   10428:	f9771de3          	bne	a4,s7,103c2 <__call_exitprocs+0x20>
   1042c:	fcf406e3          	beq	s0,a5,103f8 <__call_exitprocs+0x56>
   10430:	bf49                	j	103c2 <__call_exitprocs+0x20>
   10432:	00093823          	sd	zero,16(s2)
   10436:	bfd9                	j	1040c <__call_exitprocs+0x6a>
   10438:	31442783          	lw	a5,788(s0)
   1043c:	11093583          	ld	a1,272(s2)
   10440:	8ff1                	and	a5,a5,a2
   10442:	2781                	sext.w	a5,a5
   10444:	e781                	bnez	a5,1044c <__call_exitprocs+0xaa>
   10446:	8556                	mv	a0,s5
   10448:	9682                	jalr	a3
   1044a:	bfe1                	j	10422 <__call_exitprocs+0x80>
   1044c:	852e                	mv	a0,a1
   1044e:	9682                	jalr	a3
   10450:	bfc9                	j	10422 <__call_exitprocs+0x80>

0000000000010452 <_exit>:
   10452:	4581                	li	a1,0
   10454:	4601                	li	a2,0
   10456:	4681                	li	a3,0
   10458:	4701                	li	a4,0
   1045a:	4781                	li	a5,0
   1045c:	05d00893          	li	a7,93
   10460:	00000073          	ecall
   10464:	00055c63          	bgez	a0,1047c <_exit+0x2a>
   10468:	1141                	addi	sp,sp,-16
   1046a:	e022                	sd	s0,0(sp)
   1046c:	842a                	mv	s0,a0
   1046e:	e406                	sd	ra,8(sp)
   10470:	4080043b          	negw	s0,s0
   10474:	00a000ef          	jal	ra,1047e <__errno>
   10478:	c100                	sw	s0,0(a0)
   1047a:	a001                	j	1047a <_exit+0x28>
   1047c:	a001                	j	1047c <_exit+0x2a>

000000000001047e <__errno>:
   1047e:	8101b503          	ld	a0,-2032(gp) # 11c00 <_impure_ptr>
   10482:	8082                	ret

Disassembly of section .eh_frame:

0000000000011484 <__EH_FRAME_BEGIN__>:
   11484:	0000                	unimp
	...

Disassembly of section .init_array:

0000000000011488 <__frame_dummy_init_array_entry>:
   11488:	0172                	slli	sp,sp,0x1c
   1148a:	0001                	nop
   1148c:	0000                	unimp
	...

Disassembly of section .fini_array:

0000000000011490 <__do_global_dtors_aux_fini_array_entry>:
   11490:	0138                	addi	a4,sp,136
   11492:	0001                	nop
   11494:	0000                	unimp
	...

Disassembly of section .data:

0000000000011498 <num2>:
   11498:	000a                	c.slli	zero,0x2
   1149a:	0000                	unimp
   1149c:	0000                	unimp
	...

00000000000114a0 <num1>:
   114a0:	0014                	0x14
   114a2:	0000                	unimp
   114a4:	0000                	unimp
	...

00000000000114a8 <impure_data>:
	...
   114b0:	19e0                	addi	s0,sp,252
   114b2:	0001                	nop
   114b4:	0000                	unimp
   114b6:	0000                	unimp
   114b8:	1a90                	addi	a2,sp,368
   114ba:	0001                	nop
   114bc:	0000                	unimp
   114be:	0000                	unimp
   114c0:	1b40                	addi	s0,sp,436
   114c2:	0001                	nop
	...
   11590:	0001                	nop
   11592:	0000                	unimp
   11594:	0000                	unimp
   11596:	0000                	unimp
   11598:	330e                	fld	ft6,224(sp)
   1159a:	abcd                	j	11b8c <impure_data+0x6e4>
   1159c:	1234                	addi	a3,sp,296
   1159e:	e66d                	bnez	a2,11688 <impure_data+0x1e0>
   115a0:	deec                	sw	a1,124(a3)
   115a2:	0005                	c.nop	1
   115a4:	0000000b          	0xb
	...

Disassembly of section .sdata:

0000000000011bf0 <__TMC_END__>:
	...

0000000000011bf8 <_global_impure_ptr>:
   11bf8:	14a8                	addi	a0,sp,616
   11bfa:	0001                	nop
   11bfc:	0000                	unimp
	...

0000000000011c00 <_impure_ptr>:
   11c00:	14a8                	addi	a0,sp,616
   11c02:	0001                	nop
   11c04:	0000                	unimp
	...

Disassembly of section .bss:

0000000000011c08 <__bss_start>:
	...

0000000000011c10 <object.5217>:
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
