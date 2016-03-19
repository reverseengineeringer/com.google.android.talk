public final class mfh
  extends lvy<mfh, lwa>
  implements lwr
{
  public static final mfh f = new mfh(lwg.e, lvt.a);
  public static final lvs g = new lvs(mdr.e, f, f, new lvx(null, 6076542, lxo.k));
  private static final long serialVersionUID = 0L;
  private static volatile lwt<mfh> y;
  public int d;
  public String e;
  private long h;
  private long i;
  private long j;
  private long k;
  private int l;
  private double m;
  private double n;
  private double o;
  private double p;
  private double q;
  private boolean r;
  private boolean s;
  private int t;
  private String u;
  private boolean v;
  private lwj<mfi> w;
  private byte x;
  
  /* Error */
  private mfh(lvp paramlvp, lvt paramlvt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: invokespecial 93	lvy:<init>	()V
    //   6: aload_0
    //   7: iconst_m1
    //   8: putfield 95	mfh:x	B
    //   11: aload_0
    //   12: lconst_0
    //   13: putfield 97	mfh:h	J
    //   16: aload_0
    //   17: lconst_0
    //   18: putfield 99	mfh:i	J
    //   21: aload_0
    //   22: lconst_0
    //   23: putfield 101	mfh:j	J
    //   26: aload_0
    //   27: lconst_0
    //   28: putfield 103	mfh:k	J
    //   31: aload_0
    //   32: iconst_1
    //   33: putfield 105	mfh:l	I
    //   36: aload_0
    //   37: dconst_0
    //   38: putfield 107	mfh:m	D
    //   41: aload_0
    //   42: ldc2_w 108
    //   45: putfield 111	mfh:n	D
    //   48: aload_0
    //   49: ldc 113
    //   51: putfield 115	mfh:e	Ljava/lang/String;
    //   54: aload_0
    //   55: dconst_0
    //   56: putfield 117	mfh:o	D
    //   59: aload_0
    //   60: dconst_0
    //   61: putfield 119	mfh:p	D
    //   64: aload_0
    //   65: dconst_0
    //   66: putfield 121	mfh:q	D
    //   69: aload_0
    //   70: iconst_0
    //   71: putfield 123	mfh:r	Z
    //   74: aload_0
    //   75: iconst_0
    //   76: putfield 125	mfh:s	Z
    //   79: aload_0
    //   80: iconst_0
    //   81: putfield 127	mfh:t	I
    //   84: aload_0
    //   85: ldc 113
    //   87: putfield 129	mfh:u	Ljava/lang/String;
    //   90: aload_0
    //   91: iconst_0
    //   92: putfield 131	mfh:v	Z
    //   95: aload_0
    //   96: getstatic 137	lwu:b	Llwu;
    //   99: putfield 139	mfh:w	Llwj;
    //   102: iload_3
    //   103: ifne +680 -> 783
    //   106: aload_1
    //   107: invokevirtual 144	lvp:a	()I
    //   110: istore 4
    //   112: iload 4
    //   114: lookupswitch	default:+695->809, 0:+698->812, 9:+169->283, 17:+232->346, 75:+277->391, 113:+323->437, 121:+344->458, 128:+366->480, 137:+388->502, 146:+410->524, 153:+437->551, 161:+460->574, 208:+483->597, 249:+506->620, 257:+529->643, 264:+551->665, 272:+574->688, 282:+620->734, 288:+647->761
    //   268: aload_0
    //   269: iload 4
    //   271: aload_1
    //   272: invokevirtual 147	mfh:a	(ILlvp;)Z
    //   275: ifne -173 -> 102
    //   278: iconst_1
    //   279: istore_3
    //   280: goto -178 -> 102
    //   283: aload_0
    //   284: aload_0
    //   285: getfield 149	mfh:d	I
    //   288: iconst_1
    //   289: ior
    //   290: putfield 149	mfh:d	I
    //   293: aload_0
    //   294: aload_1
    //   295: invokevirtual 152	lvp:g	()J
    //   298: putfield 97	mfh:h	J
    //   301: goto -199 -> 102
    //   304: astore_1
    //   305: new 154	java/lang/RuntimeException
    //   308: dup
    //   309: aload_1
    //   310: aload_0
    //   311: invokevirtual 157	lwk:a	(Llwp;)Llwk;
    //   314: invokespecial 160	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   317: athrow
    //   318: astore_1
    //   319: aload_0
    //   320: getfield 139	mfh:w	Llwj;
    //   323: invokeinterface 165 1 0
    //   328: ifeq +12 -> 340
    //   331: aload_0
    //   332: getfield 139	mfh:w	Llwj;
    //   335: invokeinterface 167 1 0
    //   340: aload_0
    //   341: invokevirtual 169	mfh:e	()V
    //   344: aload_1
    //   345: athrow
    //   346: aload_0
    //   347: aload_0
    //   348: getfield 149	mfh:d	I
    //   351: iconst_2
    //   352: ior
    //   353: putfield 149	mfh:d	I
    //   356: aload_0
    //   357: aload_1
    //   358: invokevirtual 152	lvp:g	()J
    //   361: putfield 99	mfh:i	J
    //   364: goto -262 -> 102
    //   367: astore_1
    //   368: new 154	java/lang/RuntimeException
    //   371: dup
    //   372: new 89	lwk
    //   375: dup
    //   376: aload_1
    //   377: invokevirtual 173	java/io/IOException:getMessage	()Ljava/lang/String;
    //   380: invokespecial 176	lwk:<init>	(Ljava/lang/String;)V
    //   383: aload_0
    //   384: invokevirtual 157	lwk:a	(Llwp;)Llwk;
    //   387: invokespecial 160	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   390: athrow
    //   391: aload_0
    //   392: getfield 139	mfh:w	Llwj;
    //   395: invokeinterface 165 1 0
    //   400: ifne +14 -> 414
    //   403: aload_0
    //   404: new 133	lwu
    //   407: dup
    //   408: invokespecial 177	lwu:<init>	()V
    //   411: putfield 139	mfh:w	Llwj;
    //   414: aload_0
    //   415: getfield 139	mfh:w	Llwj;
    //   418: aload_1
    //   419: bipush 9
    //   421: getstatic 182	mfi:d	Lmfi;
    //   424: aload_2
    //   425: invokevirtual 185	lvp:a	(ILlvy;Llvt;)Llvy;
    //   428: invokeinterface 189 2 0
    //   433: pop
    //   434: goto -332 -> 102
    //   437: aload_0
    //   438: aload_0
    //   439: getfield 149	mfh:d	I
    //   442: iconst_4
    //   443: ior
    //   444: putfield 149	mfh:d	I
    //   447: aload_0
    //   448: aload_1
    //   449: invokevirtual 152	lvp:g	()J
    //   452: putfield 101	mfh:j	J
    //   455: goto -353 -> 102
    //   458: aload_0
    //   459: aload_0
    //   460: getfield 149	mfh:d	I
    //   463: bipush 8
    //   465: ior
    //   466: putfield 149	mfh:d	I
    //   469: aload_0
    //   470: aload_1
    //   471: invokevirtual 152	lvp:g	()J
    //   474: putfield 103	mfh:k	J
    //   477: goto -375 -> 102
    //   480: aload_0
    //   481: aload_0
    //   482: getfield 149	mfh:d	I
    //   485: bipush 16
    //   487: ior
    //   488: putfield 149	mfh:d	I
    //   491: aload_0
    //   492: aload_1
    //   493: invokevirtual 191	lvp:f	()I
    //   496: putfield 105	mfh:l	I
    //   499: goto -397 -> 102
    //   502: aload_0
    //   503: aload_0
    //   504: getfield 149	mfh:d	I
    //   507: bipush 64
    //   509: ior
    //   510: putfield 149	mfh:d	I
    //   513: aload_0
    //   514: aload_1
    //   515: invokevirtual 194	lvp:b	()D
    //   518: putfield 111	mfh:n	D
    //   521: goto -419 -> 102
    //   524: aload_1
    //   525: invokevirtual 196	lvp:j	()Ljava/lang/String;
    //   528: astore 5
    //   530: aload_0
    //   531: aload_0
    //   532: getfield 149	mfh:d	I
    //   535: sipush 128
    //   538: ior
    //   539: putfield 149	mfh:d	I
    //   542: aload_0
    //   543: aload 5
    //   545: putfield 115	mfh:e	Ljava/lang/String;
    //   548: goto -446 -> 102
    //   551: aload_0
    //   552: aload_0
    //   553: getfield 149	mfh:d	I
    //   556: sipush 256
    //   559: ior
    //   560: putfield 149	mfh:d	I
    //   563: aload_0
    //   564: aload_1
    //   565: invokevirtual 194	lvp:b	()D
    //   568: putfield 117	mfh:o	D
    //   571: goto -469 -> 102
    //   574: aload_0
    //   575: aload_0
    //   576: getfield 149	mfh:d	I
    //   579: sipush 512
    //   582: ior
    //   583: putfield 149	mfh:d	I
    //   586: aload_0
    //   587: aload_1
    //   588: invokevirtual 194	lvp:b	()D
    //   591: putfield 119	mfh:p	D
    //   594: goto -492 -> 102
    //   597: aload_0
    //   598: aload_0
    //   599: getfield 149	mfh:d	I
    //   602: sipush 2048
    //   605: ior
    //   606: putfield 149	mfh:d	I
    //   609: aload_0
    //   610: aload_1
    //   611: invokevirtual 198	lvp:i	()Z
    //   614: putfield 123	mfh:r	Z
    //   617: goto -515 -> 102
    //   620: aload_0
    //   621: aload_0
    //   622: getfield 149	mfh:d	I
    //   625: sipush 1024
    //   628: ior
    //   629: putfield 149	mfh:d	I
    //   632: aload_0
    //   633: aload_1
    //   634: invokevirtual 194	lvp:b	()D
    //   637: putfield 121	mfh:q	D
    //   640: goto -538 -> 102
    //   643: aload_0
    //   644: aload_0
    //   645: getfield 149	mfh:d	I
    //   648: bipush 32
    //   650: ior
    //   651: putfield 149	mfh:d	I
    //   654: aload_0
    //   655: aload_1
    //   656: invokevirtual 194	lvp:b	()D
    //   659: putfield 107	mfh:m	D
    //   662: goto -560 -> 102
    //   665: aload_0
    //   666: aload_0
    //   667: getfield 149	mfh:d	I
    //   670: sipush 4096
    //   673: ior
    //   674: putfield 149	mfh:d	I
    //   677: aload_0
    //   678: aload_1
    //   679: invokevirtual 198	lvp:i	()Z
    //   682: putfield 125	mfh:s	Z
    //   685: goto -583 -> 102
    //   688: aload_1
    //   689: invokevirtual 200	lvp:n	()I
    //   692: istore 4
    //   694: iload 4
    //   696: invokestatic 205	mfl:a	(I)Lmfl;
    //   699: ifnonnull +14 -> 713
    //   702: aload_0
    //   703: bipush 34
    //   705: iload 4
    //   707: invokespecial 208	lvy:a	(II)V
    //   710: goto -608 -> 102
    //   713: aload_0
    //   714: aload_0
    //   715: getfield 149	mfh:d	I
    //   718: sipush 8192
    //   721: ior
    //   722: putfield 149	mfh:d	I
    //   725: aload_0
    //   726: iload 4
    //   728: putfield 127	mfh:t	I
    //   731: goto -629 -> 102
    //   734: aload_1
    //   735: invokevirtual 196	lvp:j	()Ljava/lang/String;
    //   738: astore 5
    //   740: aload_0
    //   741: aload_0
    //   742: getfield 149	mfh:d	I
    //   745: sipush 16384
    //   748: ior
    //   749: putfield 149	mfh:d	I
    //   752: aload_0
    //   753: aload 5
    //   755: putfield 129	mfh:u	Ljava/lang/String;
    //   758: goto -656 -> 102
    //   761: aload_0
    //   762: aload_0
    //   763: getfield 149	mfh:d	I
    //   766: ldc -47
    //   768: ior
    //   769: putfield 149	mfh:d	I
    //   772: aload_0
    //   773: aload_1
    //   774: invokevirtual 198	lvp:i	()Z
    //   777: putfield 131	mfh:v	Z
    //   780: goto -678 -> 102
    //   783: aload_0
    //   784: getfield 139	mfh:w	Llwj;
    //   787: invokeinterface 165 1 0
    //   792: ifeq +12 -> 804
    //   795: aload_0
    //   796: getfield 139	mfh:w	Llwj;
    //   799: invokeinterface 167 1 0
    //   804: aload_0
    //   805: invokevirtual 169	mfh:e	()V
    //   808: return
    //   809: goto -541 -> 268
    //   812: iconst_1
    //   813: istore_3
    //   814: goto -712 -> 102
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	817	0	this	mfh
    //   0	817	1	paramlvp	lvp
    //   0	817	2	paramlvt	lvt
    //   1	813	3	i1	int
    //   110	617	4	i2	int
    //   528	226	5	str	String
    // Exception table:
    //   from	to	target	type
    //   106	112	304	lwk
    //   268	278	304	lwk
    //   283	301	304	lwk
    //   346	364	304	lwk
    //   391	414	304	lwk
    //   414	434	304	lwk
    //   437	455	304	lwk
    //   458	477	304	lwk
    //   480	499	304	lwk
    //   502	521	304	lwk
    //   524	548	304	lwk
    //   551	571	304	lwk
    //   574	594	304	lwk
    //   597	617	304	lwk
    //   620	640	304	lwk
    //   643	662	304	lwk
    //   665	685	304	lwk
    //   688	710	304	lwk
    //   713	731	304	lwk
    //   734	758	304	lwk
    //   761	780	304	lwk
    //   106	112	318	finally
    //   268	278	318	finally
    //   283	301	318	finally
    //   305	318	318	finally
    //   346	364	318	finally
    //   368	391	318	finally
    //   391	414	318	finally
    //   414	434	318	finally
    //   437	455	318	finally
    //   458	477	318	finally
    //   480	499	318	finally
    //   502	521	318	finally
    //   524	548	318	finally
    //   551	571	318	finally
    //   574	594	318	finally
    //   597	617	318	finally
    //   620	640	318	finally
    //   643	662	318	finally
    //   665	685	318	finally
    //   688	710	318	finally
    //   713	731	318	finally
    //   734	758	318	finally
    //   761	780	318	finally
    //   106	112	367	java/io/IOException
    //   268	278	367	java/io/IOException
    //   283	301	367	java/io/IOException
    //   346	364	367	java/io/IOException
    //   391	414	367	java/io/IOException
    //   414	434	367	java/io/IOException
    //   437	455	367	java/io/IOException
    //   458	477	367	java/io/IOException
    //   480	499	367	java/io/IOException
    //   502	521	367	java/io/IOException
    //   524	548	367	java/io/IOException
    //   551	571	367	java/io/IOException
    //   574	594	367	java/io/IOException
    //   597	617	367	java/io/IOException
    //   620	640	367	java/io/IOException
    //   643	662	367	java/io/IOException
    //   665	685	367	java/io/IOException
    //   688	710	367	java/io/IOException
    //   713	731	367	java/io/IOException
    //   734	758	367	java/io/IOException
    //   761	780	367	java/io/IOException
  }
  
  private boolean p()
  {
    return (d & 0x1) == 1;
  }
  
  private boolean q()
  {
    return (d & 0x2) == 2;
  }
  
  protected final Object a(int paramInt, Object paramObject1, Object paramObject2)
  {
    int i1 = 0;
    switch (mfg.a[(paramInt - 1)])
    {
    default: 
      throw new UnsupportedOperationException();
    case 1: 
      paramObject2 = new mfh((lvp)paramObject1, (lvt)paramObject2);
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      boolean bool;
      do
      {
        return paramObject2;
        return new mfh(lwg.e, lvt.a);
        paramInt = x;
        if (paramInt == 1) {
          return f;
        }
        if (paramInt == 0) {
          return null;
        }
        bool = ((Boolean)paramObject1).booleanValue();
        if (!p())
        {
          if (bool) {
            x = 0;
          }
          return null;
        }
        if (!q())
        {
          if (bool) {
            x = 0;
          }
          return null;
        }
        paramInt = 0;
        while (paramInt < w.size())
        {
          if (!((mfi)w.get(paramInt)).f())
          {
            if (bool) {
              x = 0;
            }
            return null;
          }
          paramInt += 1;
        }
        if (bool) {
          x = 1;
        }
        return f;
        w.b();
        return null;
        return new lwa();
        paramObject2 = this;
      } while (paramObject1 == f);
      mfh localmfh = (mfh)paramObject1;
      if (localmfh.p()) {
        a(localmfh.j());
      }
      if (localmfh.q()) {
        b(i);
      }
      if ((d & 0x4) == 4)
      {
        paramInt = 1;
        if (paramInt != 0) {
          c(localmfh.k());
        }
        if ((d & 0x8) != 8) {
          break label791;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          long l1 = k;
          d |= 0x8;
          k = l1;
        }
        if ((d & 0x10) != 16) {
          break label796;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          paramInt = l;
          d |= 0x10;
          l = paramInt;
        }
        if ((d & 0x20) != 32) {
          break label801;
        }
        paramInt = 1;
        double d1;
        if (paramInt != 0)
        {
          d1 = m;
          d |= 0x20;
          m = d1;
        }
        if ((d & 0x40) != 64) {
          break label806;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          d1 = n;
          d |= 0x40;
          n = d1;
        }
        if ((d & 0x80) != 128) {
          break label811;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          d |= 0x80;
          e = e;
        }
        if ((d & 0x100) != 256) {
          break label816;
        }
        paramInt = 1;
        if (paramInt != 0) {
          a(localmfh.n());
        }
        if ((d & 0x200) != 512) {
          break label821;
        }
        paramInt = 1;
        if (paramInt != 0) {
          b(localmfh.o());
        }
        if ((d & 0x400) != 1024) {
          break label826;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          d1 = q;
          d |= 0x400;
          q = d1;
        }
        if ((d & 0x800) != 2048) {
          break label831;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          bool = r;
          d |= 0x800;
          r = bool;
        }
        if ((d & 0x1000) != 4096) {
          break label836;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          bool = s;
          d |= 0x1000;
          s = bool;
        }
        if ((d & 0x2000) != 8192) {
          break label841;
        }
        paramInt = 1;
      }
      for (;;)
      {
        if (paramInt != 0)
        {
          paramObject2 = mfl.a(t);
          paramObject1 = paramObject2;
          if (paramObject2 == null) {
            paramObject1 = mfl.a;
          }
          if (paramObject1 == null)
          {
            throw new NullPointerException();
            paramInt = 0;
            break;
            paramInt = 0;
            break label339;
            paramInt = 0;
            break label382;
            paramInt = 0;
            break label423;
            paramInt = 0;
            break label466;
            paramInt = 0;
            break label511;
            paramInt = 0;
            break label553;
            paramInt = 0;
            break label583;
            paramInt = 0;
            break label613;
            paramInt = 0;
            break label659;
            paramInt = 0;
            break label705;
            paramInt = 0;
            continue;
          }
          d |= 0x2000;
          t = e;
        }
      }
      if ((d & 0x4000) == 16384)
      {
        paramInt = 1;
        if (paramInt != 0)
        {
          d |= 0x4000;
          u = u;
        }
        paramInt = i1;
        if ((d & 0x8000) == 32768) {
          paramInt = 1;
        }
        if (paramInt != 0)
        {
          bool = v;
          d |= 0x8000;
          v = bool;
        }
        if (!w.isEmpty())
        {
          if (!w.isEmpty()) {
            break label1004;
          }
          w = w;
        }
      }
      for (;;)
      {
        a(b);
        return this;
        paramInt = 0;
        break;
        if (!w.a()) {
          w = a(w);
        }
        w.addAll(w);
      }
    case 7: 
      label339:
      label382:
      label423:
      label466:
      label511:
      label553:
      label583:
      label613:
      label659:
      label705:
      label791:
      label796:
      label801:
      label806:
      label811:
      label816:
      label821:
      label826:
      label831:
      label836:
      label841:
      label1004:
      return f;
    }
    if (y == null) {}
    try
    {
      if (y == null) {
        y = new lvi(f);
      }
      return y;
    }
    finally {}
  }
  
  public void a(double paramDouble)
  {
    d |= 0x100;
    o = paramDouble;
  }
  
  public void a(long paramLong)
  {
    d |= 0x1;
    h = paramLong;
  }
  
  public void a(lvq paramlvq)
  {
    if ((d & 0x1) == 1) {
      paramlvq.c(1, h);
    }
    if ((d & 0x2) == 2) {
      paramlvq.c(2, i);
    }
    int i1 = 0;
    while (i1 < w.size())
    {
      paramlvq.e(9, (lwp)w.get(i1));
      i1 += 1;
    }
    if ((d & 0x4) == 4) {
      paramlvq.c(14, j);
    }
    if ((d & 0x8) == 8) {
      paramlvq.c(15, k);
    }
    if ((d & 0x10) == 16) {
      paramlvq.b(16, l);
    }
    if ((d & 0x40) == 64) {
      paramlvq.a(17, n);
    }
    if ((d & 0x80) == 128) {
      paramlvq.a(18, l());
    }
    if ((d & 0x100) == 256) {
      paramlvq.a(19, o);
    }
    if ((d & 0x200) == 512) {
      paramlvq.a(20, p);
    }
    if ((d & 0x800) == 2048) {
      paramlvq.a(26, r);
    }
    if ((d & 0x400) == 1024) {
      paramlvq.a(31, q);
    }
    if ((d & 0x20) == 32) {
      paramlvq.a(32, m);
    }
    if ((d & 0x1000) == 4096) {
      paramlvq.a(33, s);
    }
    if ((d & 0x2000) == 8192) {
      paramlvq.a(t);
    }
    if ((d & 0x4000) == 16384) {
      paramlvq.a(35, u);
    }
    if ((d & 0x8000) == 32768) {
      paramlvq.a(36, v);
    }
    b.a(paramlvq);
  }
  
  public void b(double paramDouble)
  {
    d |= 0x200;
    p = paramDouble;
  }
  
  public void b(long paramLong)
  {
    d |= 0x2;
    i = paramLong;
  }
  
  public void c(long paramLong)
  {
    d |= 0x4;
    j = paramLong;
  }
  
  public long j()
  {
    return h;
  }
  
  public long k()
  {
    return j;
  }
  
  public String l()
  {
    return e;
  }
  
  public int m()
  {
    int i3 = 0;
    int i1 = c;
    if (i1 != -1) {
      return i1;
    }
    if ((d & 0x1) == 1) {}
    for (i1 = lvq.i(1) + 0;; i1 = 0)
    {
      int i2 = i1;
      if ((d & 0x2) == 2) {
        i2 = i1 + lvq.i(2);
      }
      i1 = i2;
      i2 = i3;
      while (i2 < w.size())
      {
        i3 = lvq.f(9, (lwp)w.get(i2));
        i2 += 1;
        i1 = i3 + i1;
      }
      i2 = i1;
      if ((d & 0x4) == 4) {
        i2 = i1 + lvq.i(14);
      }
      i1 = i2;
      if ((d & 0x8) == 8) {
        i1 = i2 + lvq.i(15);
      }
      i2 = i1;
      if ((d & 0x10) == 16) {
        i2 = i1 + lvq.d(16, l);
      }
      i1 = i2;
      if ((d & 0x40) == 64) {
        i1 = i2 + lvq.j(17);
      }
      i2 = i1;
      if ((d & 0x80) == 128) {
        i2 = i1 + lvq.b(18, l());
      }
      i1 = i2;
      if ((d & 0x100) == 256) {
        i1 = i2 + lvq.j(19);
      }
      i2 = i1;
      if ((d & 0x200) == 512) {
        i2 = i1 + lvq.j(20);
      }
      i1 = i2;
      if ((d & 0x800) == 2048) {
        i1 = i2 + lvq.k(26);
      }
      i2 = i1;
      if ((d & 0x400) == 1024) {
        i2 = i1 + lvq.j(31);
      }
      i1 = i2;
      if ((d & 0x20) == 32) {
        i1 = i2 + lvq.j(32);
      }
      i2 = i1;
      if ((d & 0x1000) == 4096) {
        i2 = i1 + lvq.k(33);
      }
      i1 = i2;
      if ((d & 0x2000) == 8192) {
        i1 = i2 + lvq.l(t);
      }
      i2 = i1;
      if ((d & 0x4000) == 16384) {
        i2 = i1 + lvq.b(35, u);
      }
      i1 = i2;
      if ((d & 0x8000) == 32768) {
        i1 = i2 + lvq.k(36);
      }
      i1 = b.b() + i1;
      c = i1;
      return i1;
    }
  }
  
  public double n()
  {
    return o;
  }
  
  public double o()
  {
    return p;
  }
}

/* Location:
 * Qualified Name:     mfh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */