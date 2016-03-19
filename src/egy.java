public final class egy
  extends efo
{
  private static final boolean d = false;
  private static final long serialVersionUID = 1L;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public egy(String paramString, czb paramczb, long paramLong)
  {
    super(paramString, paramczb, paramLong);
  }
  
  public egy(kgc paramkgc)
  {
    super(b.a, aal.a(a, null), aal.a(c, 0L));
  }
  
  /* Error */
  protected void a(bfz parambfz, dyy paramdyy)
  {
    // Byte code:
    //   0: getstatic 19	egy:d	Z
    //   3: ifeq +73 -> 76
    //   6: ldc 55
    //   8: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   11: astore 6
    //   13: aload_0
    //   14: invokevirtual 64	egy:a	()Ljava/lang/String;
    //   17: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   20: astore 7
    //   22: aload_0
    //   23: invokevirtual 67	egy:c	()J
    //   26: lstore 4
    //   28: new 69	java/lang/StringBuilder
    //   31: dup
    //   32: aload 6
    //   34: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   37: invokevirtual 73	java/lang/String:length	()I
    //   40: bipush 32
    //   42: iadd
    //   43: aload 7
    //   45: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   48: invokevirtual 73	java/lang/String:length	()I
    //   51: iadd
    //   52: invokespecial 76	java/lang/StringBuilder:<init>	(I)V
    //   55: aload 6
    //   57: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload 7
    //   62: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: ldc 82
    //   67: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: lload 4
    //   72: invokevirtual 85	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   75: pop
    //   76: aload_0
    //   77: invokevirtual 64	egy:a	()Ljava/lang/String;
    //   80: astore 7
    //   82: aload_1
    //   83: invokevirtual 89	bfz:a	()V
    //   86: getstatic 19	egy:d	Z
    //   89: ifeq +157 -> 246
    //   92: aload_1
    //   93: invokevirtual 93	bfz:g	()Lbfd;
    //   96: invokevirtual 98	bfd:b	()Lczb;
    //   99: aload_0
    //   100: invokevirtual 99	egy:b	()Lczb;
    //   103: invokevirtual 105	czb:equals	(Ljava/lang/Object;)Z
    //   106: ifeq +216 -> 322
    //   109: ldc 107
    //   111: astore 6
    //   113: ldc 109
    //   115: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   118: astore 8
    //   120: aload_0
    //   121: invokevirtual 64	egy:a	()Ljava/lang/String;
    //   124: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   127: astore 9
    //   129: aload_0
    //   130: invokevirtual 67	egy:c	()J
    //   133: lstore 4
    //   135: new 111	java/util/Date
    //   138: dup
    //   139: aload_0
    //   140: invokevirtual 67	egy:c	()J
    //   143: ldc2_w 112
    //   146: ldiv
    //   147: invokespecial 116	java/util/Date:<init>	(J)V
    //   150: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   153: astore 10
    //   155: new 69	java/lang/StringBuilder
    //   158: dup
    //   159: aload 8
    //   161: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   164: invokevirtual 73	java/lang/String:length	()I
    //   167: bipush 45
    //   169: iadd
    //   170: aload 9
    //   172: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   175: invokevirtual 73	java/lang/String:length	()I
    //   178: iadd
    //   179: aload 6
    //   181: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   184: invokevirtual 73	java/lang/String:length	()I
    //   187: iadd
    //   188: aload 10
    //   190: invokestatic 61	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   193: invokevirtual 73	java/lang/String:length	()I
    //   196: iadd
    //   197: invokespecial 76	java/lang/StringBuilder:<init>	(I)V
    //   200: aload 8
    //   202: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: aload 9
    //   207: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: ldc 118
    //   212: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: aload 6
    //   217: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: ldc 120
    //   222: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: lload 4
    //   227: invokevirtual 85	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   230: ldc 122
    //   232: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: aload 10
    //   237: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: ldc 124
    //   242: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: pop
    //   246: aload_1
    //   247: invokevirtual 93	bfz:g	()Lbfd;
    //   250: invokevirtual 98	bfd:b	()Lczb;
    //   253: aload_0
    //   254: invokevirtual 99	egy:b	()Lczb;
    //   257: invokevirtual 105	czb:equals	(Ljava/lang/Object;)Z
    //   260: ifeq +74 -> 334
    //   263: aload_1
    //   264: aload_0
    //   265: invokevirtual 64	egy:a	()Ljava/lang/String;
    //   268: aload_0
    //   269: invokevirtual 67	egy:c	()J
    //   272: iconst_0
    //   273: ldc 126
    //   275: invokevirtual 129	bfz:a	(Ljava/lang/String;JZLjava/lang/String;)V
    //   278: aload_1
    //   279: invokevirtual 93	bfz:g	()Lbfd;
    //   282: invokevirtual 131	bfd:g	()I
    //   285: istore_3
    //   286: getstatic 137	dvp:x	Ldml;
    //   289: iload_3
    //   290: invokevirtual 142	dml:b	(I)Z
    //   293: ifne +14 -> 307
    //   296: aload_2
    //   297: aload_1
    //   298: invokevirtual 93	bfz:g	()Lbfd;
    //   301: invokevirtual 131	bfd:g	()I
    //   304: invokevirtual 146	dyy:a	(I)V
    //   307: aload_1
    //   308: invokevirtual 148	bfz:b	()V
    //   311: aload_1
    //   312: invokevirtual 150	bfz:c	()V
    //   315: aload_1
    //   316: aload 7
    //   318: invokestatic 155	bft:d	(Lbfz;Ljava/lang/String;)V
    //   321: return
    //   322: aload_0
    //   323: invokevirtual 99	egy:b	()Lczb;
    //   326: getfield 157	czb:b	Ljava/lang/String;
    //   329: astore 6
    //   331: goto -218 -> 113
    //   334: getstatic 161	aal:oJ	Landroid/content/Context;
    //   337: ldc -93
    //   339: invokestatic 168	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   342: checkcast 163	biw
    //   345: aload_0
    //   346: invokevirtual 171	biw:a	(Legy;)V
    //   349: aload_0
    //   350: invokestatic 174	com/google/android/apps/hangouts/realtimechat/RealTimeChatService:a	(Legy;)V
    //   353: goto -46 -> 307
    //   356: astore_2
    //   357: aload_1
    //   358: invokevirtual 150	bfz:c	()V
    //   361: aload_2
    //   362: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	363	0	this	egy
    //   0	363	1	parambfz	bfz
    //   0	363	2	paramdyy	dyy
    //   285	5	3	i	int
    //   26	200	4	l	long
    //   11	319	6	str1	String
    //   20	297	7	str2	String
    //   118	83	8	str3	String
    //   127	79	9	str4	String
    //   153	83	10	str5	String
    // Exception table:
    //   from	to	target	type
    //   86	109	356	finally
    //   113	246	356	finally
    //   246	307	356	finally
    //   307	311	356	finally
    //   322	331	356	finally
    //   334	353	356	finally
  }
}

/* Location:
 * Qualified Name:     egy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */