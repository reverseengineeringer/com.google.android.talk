import android.content.ContentResolver;
import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;

public final class adk
{
  private static if<String, Integer> g = null;
  public ByteArrayOutputStream a = null;
  public int b = 0;
  adl c = null;
  private adg d = null;
  private final ContentResolver e;
  private adp f = null;
  
  static
  {
    g = new if();
    int i = 0;
    while (i < ado.a.length)
    {
      g.put(ado.a[i], Integer.valueOf(i));
      i += 1;
    }
  }
  
  public adk(Context paramContext, adg paramadg)
  {
    d = paramadg;
    e = paramContext.getContentResolver();
    f = paramadg.a();
    c = new adl(this);
    a = new ByteArrayOutputStream();
    b = 0;
  }
  
  private void a(int paramInt)
  {
    a.write(paramInt);
    b += 1;
  }
  
  private void a(long paramLong)
  {
    int j = 0;
    long l = paramLong;
    int i = 0;
    while ((l != 0L) && (i < 8))
    {
      l >>>= 8;
      i += 1;
    }
    d(i);
    int k = i - 1 << 3;
    while (j < i)
    {
      a((int)(paramLong >>> k & 0xFF));
      k -= 8;
      j += 1;
    }
  }
  
  private void a(adf paramadf)
  {
    int i = paramadf.a();
    paramadf = paramadf.b();
    c.a();
    adn localadn = c.d();
    b(i);
    a(paramadf);
    i = localadn.a();
    c.b();
    d(i);
    c.c();
  }
  
  private void a(String paramString)
  {
    a(paramString.getBytes());
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte[0] & 0xFF) > Byte.MAX_VALUE) {
      a(127);
    }
    a(paramArrayOfByte, paramArrayOfByte.length);
    a(0);
  }
  
  /* Error */
  private int b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 54	adk:c	Ladl;
    //   4: invokevirtual 99	adl:a	()V
    //   7: aload_0
    //   8: getfield 54	adk:c	Ladl;
    //   11: invokevirtual 102	adl:d	()Ladn;
    //   14: astore 6
    //   16: new 119	java/lang/String
    //   19: dup
    //   20: aload_0
    //   21: getfield 56	adk:f	Ladp;
    //   24: sipush 132
    //   27: invokevirtual 138	adp:b	(I)[B
    //   30: invokespecial 140	java/lang/String:<init>	([B)V
    //   33: astore 7
    //   35: getstatic 23	adk:g	Lif;
    //   38: aload 7
    //   40: invokevirtual 144	if:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   43: checkcast 35	java/lang/Integer
    //   46: astore 7
    //   48: aload 7
    //   50: ifnonnull +5 -> 55
    //   53: iconst_1
    //   54: ireturn
    //   55: aload_0
    //   56: aload 7
    //   58: invokevirtual 147	java/lang/Integer:intValue	()I
    //   61: invokespecial 104	adk:b	(I)V
    //   64: aload_0
    //   65: getfield 50	adk:d	Ladg;
    //   68: checkcast 149	ady
    //   71: invokevirtual 152	ady:d	()Ladj;
    //   74: astore 8
    //   76: aload 8
    //   78: ifnull +11 -> 89
    //   81: aload 8
    //   83: invokevirtual 156	adj:b	()I
    //   86: ifne +24 -> 110
    //   89: aload_0
    //   90: lconst_0
    //   91: invokespecial 158	adk:b	(J)V
    //   94: aload_0
    //   95: getfield 54	adk:c	Ladl;
    //   98: invokevirtual 112	adl:b	()V
    //   101: aload_0
    //   102: getfield 54	adk:c	Ladl;
    //   105: invokevirtual 116	adl:c	()V
    //   108: iconst_0
    //   109: ireturn
    //   110: aload 8
    //   112: iconst_0
    //   113: invokevirtual 161	adj:a	(I)Ladr;
    //   116: astore 7
    //   118: aload 7
    //   120: invokevirtual 165	adr:c	()[B
    //   123: astore 9
    //   125: aload 9
    //   127: ifnull +38 -> 165
    //   130: aload_0
    //   131: sipush 138
    //   134: invokespecial 167	adk:c	(I)V
    //   137: bipush 60
    //   139: aload 9
    //   141: iconst_0
    //   142: baload
    //   143: if_icmpne +140 -> 283
    //   146: bipush 62
    //   148: aload 9
    //   150: aload 9
    //   152: arraylength
    //   153: iconst_1
    //   154: isub
    //   155: baload
    //   156: if_icmpne +127 -> 283
    //   159: aload_0
    //   160: aload 9
    //   162: invokespecial 107	adk:a	([B)V
    //   165: aload_0
    //   166: sipush 137
    //   169: invokespecial 167	adk:c	(I)V
    //   172: aload_0
    //   173: aload 7
    //   175: invokevirtual 169	adr:g	()[B
    //   178: invokespecial 107	adk:a	([B)V
    //   181: aload 6
    //   183: invokevirtual 110	adn:a	()I
    //   186: istore_1
    //   187: aload_0
    //   188: getfield 54	adk:c	Ladl;
    //   191: invokevirtual 112	adl:b	()V
    //   194: aload_0
    //   195: iload_1
    //   196: i2l
    //   197: invokespecial 114	adk:d	(J)V
    //   200: aload_0
    //   201: getfield 54	adk:c	Ladl;
    //   204: invokevirtual 116	adl:c	()V
    //   207: aload 8
    //   209: invokevirtual 156	adj:b	()I
    //   212: istore 4
    //   214: aload_0
    //   215: iload 4
    //   217: i2l
    //   218: invokespecial 158	adk:b	(J)V
    //   221: iconst_0
    //   222: istore_2
    //   223: iload_2
    //   224: iload 4
    //   226: if_icmpge +653 -> 879
    //   229: aload 8
    //   231: iload_2
    //   232: invokevirtual 161	adj:a	(I)Ladr;
    //   235: astore 10
    //   237: aload_0
    //   238: getfield 54	adk:c	Ladl;
    //   241: invokevirtual 99	adl:a	()V
    //   244: aload_0
    //   245: getfield 54	adk:c	Ladl;
    //   248: invokevirtual 102	adl:d	()Ladn;
    //   251: astore 9
    //   253: aload_0
    //   254: getfield 54	adk:c	Ladl;
    //   257: invokevirtual 99	adl:a	()V
    //   260: aload_0
    //   261: getfield 54	adk:c	Ladl;
    //   264: invokevirtual 102	adl:d	()Ladn;
    //   267: astore 11
    //   269: aload 10
    //   271: invokevirtual 169	adr:g	()[B
    //   274: astore 6
    //   276: aload 6
    //   278: ifnonnull +68 -> 346
    //   281: iconst_1
    //   282: ireturn
    //   283: new 119	java/lang/String
    //   286: dup
    //   287: aload 9
    //   289: invokespecial 140	java/lang/String:<init>	([B)V
    //   292: astore 9
    //   294: aload_0
    //   295: new 171	java/lang/StringBuilder
    //   298: dup
    //   299: aload 9
    //   301: invokestatic 174	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   304: invokevirtual 177	java/lang/String:length	()I
    //   307: iconst_2
    //   308: iadd
    //   309: invokespecial 179	java/lang/StringBuilder:<init>	(I)V
    //   312: ldc -75
    //   314: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: aload 9
    //   319: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: ldc -69
    //   324: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   330: invokespecial 193	adk:a	(Ljava/lang/String;)V
    //   333: goto -168 -> 165
    //   336: astore 7
    //   338: aload 7
    //   340: invokevirtual 196	java/lang/ArrayIndexOutOfBoundsException:printStackTrace	()V
    //   343: goto -162 -> 181
    //   346: getstatic 23	adk:g	Lif;
    //   349: new 119	java/lang/String
    //   352: dup
    //   353: aload 6
    //   355: invokespecial 140	java/lang/String:<init>	([B)V
    //   358: invokevirtual 144	if:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   361: checkcast 35	java/lang/Integer
    //   364: astore 7
    //   366: aload 7
    //   368: ifnonnull +251 -> 619
    //   371: aload_0
    //   372: aload 6
    //   374: invokespecial 107	adk:a	([B)V
    //   377: aload 10
    //   379: invokevirtual 199	adr:i	()[B
    //   382: astore 7
    //   384: aload 7
    //   386: astore 6
    //   388: aload 7
    //   390: ifnonnull +42 -> 432
    //   393: aload 10
    //   395: invokevirtual 202	adr:j	()[B
    //   398: astore 7
    //   400: aload 7
    //   402: astore 6
    //   404: aload 7
    //   406: ifnonnull +26 -> 432
    //   409: aload 10
    //   411: invokevirtual 204	adr:e	()[B
    //   414: astore 7
    //   416: aload 7
    //   418: astore 6
    //   420: aload 7
    //   422: ifnonnull +10 -> 432
    //   425: ldc -50
    //   427: invokevirtual 122	java/lang/String:getBytes	()[B
    //   430: astore 6
    //   432: aload_0
    //   433: sipush 133
    //   436: invokespecial 167	adk:c	(I)V
    //   439: aload_0
    //   440: aload 6
    //   442: invokespecial 107	adk:a	([B)V
    //   445: aload 10
    //   447: invokevirtual 208	adr:d	()I
    //   450: istore_1
    //   451: iload_1
    //   452: ifeq +15 -> 467
    //   455: aload_0
    //   456: sipush 129
    //   459: invokespecial 167	adk:c	(I)V
    //   462: aload_0
    //   463: iload_1
    //   464: invokespecial 104	adk:b	(I)V
    //   467: aload 11
    //   469: invokevirtual 110	adn:a	()I
    //   472: istore_1
    //   473: aload_0
    //   474: getfield 54	adk:c	Ladl;
    //   477: invokevirtual 112	adl:b	()V
    //   480: aload_0
    //   481: iload_1
    //   482: i2l
    //   483: invokespecial 114	adk:d	(J)V
    //   486: aload_0
    //   487: getfield 54	adk:c	Ladl;
    //   490: invokevirtual 116	adl:c	()V
    //   493: aload 10
    //   495: invokevirtual 165	adr:c	()[B
    //   498: astore 6
    //   500: aload 6
    //   502: ifnull +38 -> 540
    //   505: aload_0
    //   506: sipush 192
    //   509: invokespecial 167	adk:c	(I)V
    //   512: bipush 60
    //   514: aload 6
    //   516: iconst_0
    //   517: baload
    //   518: if_icmpne +113 -> 631
    //   521: bipush 62
    //   523: aload 6
    //   525: aload 6
    //   527: arraylength
    //   528: iconst_1
    //   529: isub
    //   530: baload
    //   531: if_icmpne +100 -> 631
    //   534: aload_0
    //   535: aload 6
    //   537: invokespecial 210	adk:b	([B)V
    //   540: aload 10
    //   542: invokevirtual 204	adr:e	()[B
    //   545: astore 6
    //   547: aload 6
    //   549: ifnull +16 -> 565
    //   552: aload_0
    //   553: sipush 142
    //   556: invokespecial 167	adk:c	(I)V
    //   559: aload_0
    //   560: aload 6
    //   562: invokespecial 107	adk:a	([B)V
    //   565: aload 9
    //   567: invokevirtual 110	adn:a	()I
    //   570: istore 5
    //   572: aload 10
    //   574: invokevirtual 212	adr:a	()[B
    //   577: astore 6
    //   579: aload 6
    //   581: ifnull +103 -> 684
    //   584: aload_0
    //   585: aload 6
    //   587: aload 6
    //   589: arraylength
    //   590: invokevirtual 125	adk:a	([BI)V
    //   593: aload 6
    //   595: arraylength
    //   596: istore_3
    //   597: iload_3
    //   598: aload 9
    //   600: invokevirtual 110	adn:a	()I
    //   603: iload 5
    //   605: isub
    //   606: if_icmpeq +239 -> 845
    //   609: new 133	java/lang/RuntimeException
    //   612: dup
    //   613: ldc -42
    //   615: invokespecial 216	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   618: athrow
    //   619: aload_0
    //   620: aload 7
    //   622: invokevirtual 147	java/lang/Integer:intValue	()I
    //   625: invokespecial 104	adk:b	(I)V
    //   628: goto -251 -> 377
    //   631: new 119	java/lang/String
    //   634: dup
    //   635: aload 6
    //   637: invokespecial 140	java/lang/String:<init>	([B)V
    //   640: astore 6
    //   642: aload_0
    //   643: new 171	java/lang/StringBuilder
    //   646: dup
    //   647: aload 6
    //   649: invokestatic 174	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   652: invokevirtual 177	java/lang/String:length	()I
    //   655: iconst_2
    //   656: iadd
    //   657: invokespecial 179	java/lang/StringBuilder:<init>	(I)V
    //   660: ldc -75
    //   662: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   665: aload 6
    //   667: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   670: ldc -69
    //   672: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   675: invokevirtual 191	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   678: invokespecial 218	adk:b	(Ljava/lang/String;)V
    //   681: goto -141 -> 540
    //   684: aconst_null
    //   685: astore 6
    //   687: sipush 1024
    //   690: newarray <illegal type>
    //   692: astore 11
    //   694: aload_0
    //   695: getfield 64	adk:e	Landroid/content/ContentResolver;
    //   698: aload 10
    //   700: invokevirtual 221	adr:b	()Landroid/net/Uri;
    //   703: invokevirtual 227	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   706: astore 7
    //   708: aload 7
    //   710: astore 6
    //   712: iconst_0
    //   713: istore_1
    //   714: aload 6
    //   716: aload 11
    //   718: invokevirtual 233	java/io/InputStream:read	([B)I
    //   721: istore_3
    //   722: iload_3
    //   723: iconst_m1
    //   724: if_icmpeq +31 -> 755
    //   727: aload_0
    //   728: getfield 48	adk:a	Ljava/io/ByteArrayOutputStream;
    //   731: aload 11
    //   733: iconst_0
    //   734: iload_3
    //   735: invokevirtual 236	java/io/ByteArrayOutputStream:write	([BII)V
    //   738: aload_0
    //   739: aload_0
    //   740: getfield 52	adk:b	I
    //   743: iload_3
    //   744: iadd
    //   745: putfield 52	adk:b	I
    //   748: iload_1
    //   749: iload_3
    //   750: iadd
    //   751: istore_1
    //   752: goto -38 -> 714
    //   755: iload_1
    //   756: istore_3
    //   757: aload 6
    //   759: ifnull -162 -> 597
    //   762: aload 6
    //   764: invokevirtual 239	java/io/InputStream:close	()V
    //   767: iload_1
    //   768: istore_3
    //   769: goto -172 -> 597
    //   772: astore 6
    //   774: iload_1
    //   775: istore_3
    //   776: goto -179 -> 597
    //   779: astore 7
    //   781: aload 6
    //   783: ifnull +8 -> 791
    //   786: aload 6
    //   788: invokevirtual 239	java/io/InputStream:close	()V
    //   791: iconst_1
    //   792: ireturn
    //   793: astore 6
    //   795: aconst_null
    //   796: astore 6
    //   798: aload 6
    //   800: ifnull +8 -> 808
    //   803: aload 6
    //   805: invokevirtual 239	java/io/InputStream:close	()V
    //   808: iconst_1
    //   809: ireturn
    //   810: astore 6
    //   812: aconst_null
    //   813: astore 6
    //   815: aload 6
    //   817: ifnull +8 -> 825
    //   820: aload 6
    //   822: invokevirtual 239	java/io/InputStream:close	()V
    //   825: iconst_1
    //   826: ireturn
    //   827: astore 7
    //   829: aconst_null
    //   830: astore 6
    //   832: aload 6
    //   834: ifnull +8 -> 842
    //   837: aload 6
    //   839: invokevirtual 239	java/io/InputStream:close	()V
    //   842: aload 7
    //   844: athrow
    //   845: aload_0
    //   846: getfield 54	adk:c	Ladl;
    //   849: invokevirtual 112	adl:b	()V
    //   852: aload_0
    //   853: iload 5
    //   855: i2l
    //   856: invokespecial 158	adk:b	(J)V
    //   859: aload_0
    //   860: iload_3
    //   861: i2l
    //   862: invokespecial 158	adk:b	(J)V
    //   865: aload_0
    //   866: getfield 54	adk:c	Ladl;
    //   869: invokevirtual 116	adl:c	()V
    //   872: iload_2
    //   873: iconst_1
    //   874: iadd
    //   875: istore_2
    //   876: goto -653 -> 223
    //   879: iconst_0
    //   880: ireturn
    //   881: astore 6
    //   883: goto -92 -> 791
    //   886: astore 6
    //   888: goto -80 -> 808
    //   891: astore 6
    //   893: goto -68 -> 825
    //   896: astore 6
    //   898: goto -56 -> 842
    //   901: astore 7
    //   903: goto -71 -> 832
    //   906: astore 7
    //   908: goto -93 -> 815
    //   911: astore 7
    //   913: goto -115 -> 798
    //   916: astore 7
    //   918: goto -137 -> 781
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	921	0	this	adk
    //   186	589	1	i	int
    //   222	654	2	j	int
    //   596	265	3	k	int
    //   212	15	4	m	int
    //   570	284	5	n	int
    //   14	749	6	localObject1	Object
    //   772	15	6	localIOException1	java.io.IOException
    //   793	1	6	localIOException2	java.io.IOException
    //   796	8	6	localObject2	Object
    //   810	1	6	localRuntimeException1	RuntimeException
    //   813	25	6	localObject3	Object
    //   881	1	6	localIOException3	java.io.IOException
    //   886	1	6	localIOException4	java.io.IOException
    //   891	1	6	localIOException5	java.io.IOException
    //   896	1	6	localIOException6	java.io.IOException
    //   33	141	7	localObject4	Object
    //   336	3	7	localArrayIndexOutOfBoundsException	ArrayIndexOutOfBoundsException
    //   364	345	7	localObject5	Object
    //   779	1	7	localFileNotFoundException1	java.io.FileNotFoundException
    //   827	16	7	localObject6	Object
    //   901	1	7	localObject7	Object
    //   906	1	7	localRuntimeException2	RuntimeException
    //   911	1	7	localIOException7	java.io.IOException
    //   916	1	7	localFileNotFoundException2	java.io.FileNotFoundException
    //   74	156	8	localadj	adj
    //   123	476	9	localObject8	Object
    //   235	464	10	localadr	adr
    //   267	465	11	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   110	125	336	java/lang/ArrayIndexOutOfBoundsException
    //   130	137	336	java/lang/ArrayIndexOutOfBoundsException
    //   146	165	336	java/lang/ArrayIndexOutOfBoundsException
    //   165	181	336	java/lang/ArrayIndexOutOfBoundsException
    //   283	333	336	java/lang/ArrayIndexOutOfBoundsException
    //   762	767	772	java/io/IOException
    //   687	708	779	java/io/FileNotFoundException
    //   687	708	793	java/io/IOException
    //   687	708	810	java/lang/RuntimeException
    //   687	708	827	finally
    //   786	791	881	java/io/IOException
    //   803	808	886	java/io/IOException
    //   820	825	891	java/io/IOException
    //   837	842	896	java/io/IOException
    //   714	722	901	finally
    //   727	748	901	finally
    //   714	722	906	java/lang/RuntimeException
    //   727	748	906	java/lang/RuntimeException
    //   714	722	911	java/io/IOException
    //   727	748	911	java/io/IOException
    //   714	722	916	java/io/FileNotFoundException
    //   727	748	916	java/io/FileNotFoundException
  }
  
  private static adf b(adf paramadf)
  {
    try
    {
      String str = paramadf.c();
      int i;
      if (str.matches("[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"))
      {
        i = 3;
        break label132;
        if (1 == i)
        {
          paramadf.b("/TYPE=PLMN".getBytes());
          return paramadf;
        }
      }
      else
      {
        if (str.matches("\\+?[0-9|\\.|\\-]+"))
        {
          i = 1;
          break label132;
        }
        if (str.matches("[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"))
        {
          i = 2;
          break label132;
        }
        if (!str.matches("[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}")) {
          break label143;
        }
        i = 4;
        break label132;
      }
      label132:
      label143:
      label146:
      for (;;)
      {
        paramadf = new adf(a, b);
        break;
        if (3 == i)
        {
          paramadf.b("/TYPE=IPV4".getBytes());
          return paramadf;
        }
        if (4 == i)
        {
          paramadf.b("/TYPE=IPV6".getBytes());
          return paramadf;
        }
        for (;;)
        {
          if (paramadf != null) {
            break label146;
          }
          paramadf = null;
          break;
          return paramadf;
          i = 5;
        }
      }
      return null;
    }
    catch (NullPointerException paramadf) {}
  }
  
  private void b(int paramInt)
  {
    a((paramInt | 0x80) & 0xFF);
  }
  
  private void b(long paramLong)
  {
    int i = 0;
    long l = 127L;
    int j;
    for (;;)
    {
      j = i;
      if (i >= 5) {
        break;
      }
      j = i;
      if (paramLong < l) {
        break;
      }
      l = l << 7 | 0x7F;
      i += 1;
    }
    while (j > 0)
    {
      a((int)((paramLong >>> j * 7 & 0x7F | 0x80) & 0xFF));
      j -= 1;
    }
    a((int)(paramLong & 0x7F));
  }
  
  private void b(String paramString)
  {
    b(paramString.getBytes());
  }
  
  private void b(byte[] paramArrayOfByte)
  {
    a(34);
    a(paramArrayOfByte, paramArrayOfByte.length);
    a(0);
  }
  
  private void c(int paramInt)
  {
    a(paramInt);
  }
  
  private void c(long paramLong)
  {
    a(paramLong);
  }
  
  private void d(int paramInt)
  {
    a(paramInt);
  }
  
  private void d(long paramLong)
  {
    if (paramLong < 31L)
    {
      d((int)paramLong);
      return;
    }
    a(31);
    b(paramLong);
  }
  
  private int e(int paramInt)
  {
    int k = 0;
    int i;
    adf localadf;
    switch (paramInt)
    {
    case 131: 
    case 132: 
    case 135: 
    case 140: 
    case 142: 
    case 146: 
    case 147: 
    case 148: 
    case 153: 
    case 154: 
    default: 
      i = 3;
      return i;
    case 141: 
      c(paramInt);
      paramInt = f.a(paramInt);
      if (paramInt == 0)
      {
        b(18);
        return 0;
      }
      b(paramInt);
      return 0;
    case 139: 
    case 152: 
      localObject = f.b(paramInt);
      if (localObject == null) {
        return 2;
      }
      c(paramInt);
      a((byte[])localObject);
      return 0;
    case 129: 
    case 130: 
    case 151: 
      localObject = f.d(paramInt);
      if (localObject == null) {
        return 2;
      }
      int j = 0;
      for (;;)
      {
        i = k;
        if (j >= localObject.length) {
          break;
        }
        localadf = b(localObject[j]);
        if (localadf == null) {
          return 1;
        }
        c(paramInt);
        a(localadf);
        j += 1;
      }
    case 137: 
      c(paramInt);
      localadf = f.c(paramInt);
      if ((localadf == null) || (TextUtils.isEmpty(localadf.c())) || (new String(localadf.b()).equals("insert-address-token")))
      {
        a(1);
        a(129);
        return 0;
      }
      c.a();
      localObject = c.d();
      a(128);
      localadf = b(localadf);
      if (localadf == null) {
        return 1;
      }
      a(localadf);
      paramInt = ((adn)localObject).a();
      c.b();
      d(paramInt);
      c.c();
      return 0;
    case 134: 
    case 143: 
    case 144: 
    case 145: 
    case 149: 
    case 155: 
      i = f.a(paramInt);
      if (i == 0) {
        return 2;
      }
      c(paramInt);
      c(i);
      return 0;
    case 133: 
      l = f.e(paramInt);
      if (-1L == l) {
        return 2;
      }
      c(paramInt);
      c(l);
      return 0;
    case 150: 
      localObject = f.c(paramInt);
      if (localObject == null) {
        return 2;
      }
      c(paramInt);
      a((adf)localObject);
      return 0;
    case 138: 
      localObject = f.b(paramInt);
      if (localObject == null) {
        return 2;
      }
      c(paramInt);
      if (Arrays.equals((byte[])localObject, "advertisement".getBytes()))
      {
        c(129);
        return 0;
      }
      if (Arrays.equals((byte[])localObject, "auto".getBytes()))
      {
        c(131);
        return 0;
      }
      if (Arrays.equals((byte[])localObject, "personal".getBytes()))
      {
        c(128);
        return 0;
      }
      if (Arrays.equals((byte[])localObject, "informational".getBytes()))
      {
        c(130);
        return 0;
      }
      a((byte[])localObject);
      return 0;
    }
    long l = f.e(paramInt);
    if (-1L == l) {
      return 2;
    }
    c(paramInt);
    c.a();
    Object localObject = c.d();
    a(129);
    a(l);
    paramInt = ((adn)localObject).a();
    c.b();
    d(paramInt);
    c.c();
    return 0;
  }
  
  protected void a(byte[] paramArrayOfByte, int paramInt)
  {
    a.write(paramArrayOfByte, 0, paramInt);
    b += paramInt;
  }
  
  public byte[] a()
  {
    int j = 0;
    int m = 1;
    int i = 1;
    int n = 1;
    int k = 1;
    switch (d.b())
    {
    case 129: 
    case 130: 
    case 132: 
    case 134: 
    default: 
      return null;
    case 128: 
      if (a == null)
      {
        a = new ByteArrayOutputStream();
        b = 0;
      }
      c(140);
      c(128);
      c(152);
      byte[] arrayOfByte = f.b(152);
      if (arrayOfByte == null) {
        throw new IllegalArgumentException("Transaction-ID is null.");
      }
      a(arrayOfByte);
      if (e(141) != 0) {
        i = k;
      }
      break;
    }
    while (i != 0)
    {
      return null;
      e(133);
      i = k;
      if (e(137) == 0)
      {
        i = j;
        if (e(151) != 1) {
          i = 1;
        }
        if (e(130) != 1) {
          i = 1;
        }
        j = i;
        if (e(129) != 1) {
          j = 1;
        }
        i = k;
        if (j != 0)
        {
          e(150);
          e(138);
          e(136);
          e(143);
          e(134);
          e(144);
          c(132);
          i = b();
          continue;
          if (a == null)
          {
            a = new ByteArrayOutputStream();
            b = 0;
          }
          c(140);
          c(131);
          if (e(152) != 0) {
            i = m;
          }
          while (i != 0)
          {
            return null;
            i = m;
            if (e(141) == 0)
            {
              i = m;
              if (e(149) == 0)
              {
                i = 0;
                continue;
                if (a == null)
                {
                  a = new ByteArrayOutputStream();
                  b = 0;
                }
                c(140);
                c(133);
                if (e(152) != 0) {}
                while (i != 0)
                {
                  return null;
                  if (e(141) == 0)
                  {
                    e(145);
                    i = 0;
                    continue;
                    if (a == null)
                    {
                      a = new ByteArrayOutputStream();
                      b = 0;
                    }
                    c(140);
                    c(135);
                    if (e(141) != 0) {
                      i = n;
                    }
                    while (i != 0)
                    {
                      return null;
                      i = n;
                      if (e(139) == 0)
                      {
                        i = n;
                        if (e(151) == 0)
                        {
                          i = n;
                          if (e(137) == 0)
                          {
                            e(133);
                            i = n;
                            if (e(155) == 0) {
                              i = 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return a.toByteArray();
  }
}

/* Location:
 * Qualified Name:     adk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */