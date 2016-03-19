public final class mfj
  extends lvy<mfj, lwa>
  implements lwr
{
  public static final mfj d = new mfj(lwg.e, lvt.a);
  private static volatile lwt<mfj> q;
  private static final long serialVersionUID = 0L;
  private int e;
  private String f;
  private double g;
  private int h;
  private String i;
  private int j;
  private long k;
  private double l;
  private mdr m;
  private boolean n;
  private lwj<mfk> o;
  private byte p;
  
  /* Error */
  private mfj(lvp paramlvp, lvt paramlvt)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 62	lvy:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 64	mfj:p	B
    //   9: aload_0
    //   10: ldc 66
    //   12: putfield 68	mfj:f	Ljava/lang/String;
    //   15: aload_0
    //   16: dconst_0
    //   17: putfield 70	mfj:g	D
    //   20: aload_0
    //   21: iconst_0
    //   22: putfield 72	mfj:h	I
    //   25: aload_0
    //   26: ldc 66
    //   28: putfield 74	mfj:i	Ljava/lang/String;
    //   31: aload_0
    //   32: iconst_0
    //   33: putfield 76	mfj:j	I
    //   36: aload_0
    //   37: lconst_0
    //   38: putfield 78	mfj:k	J
    //   41: aload_0
    //   42: dconst_0
    //   43: putfield 80	mfj:l	D
    //   46: aload_0
    //   47: iconst_0
    //   48: putfield 82	mfj:n	Z
    //   51: aload_0
    //   52: getstatic 88	lwu:b	Llwu;
    //   55: putfield 90	mfj:o	Llwj;
    //   58: iconst_0
    //   59: istore_3
    //   60: iload_3
    //   61: ifne +503 -> 564
    //   64: aload_1
    //   65: invokevirtual 95	lvp:a	()I
    //   68: istore 4
    //   70: iload 4
    //   72: lookupswitch	default:+524->596, 0:+527->599, 97:+115->187, 106:+178->250, 168:+228->300, 176:+250->322, 185:+272->344, 194:+294->366, 203:+377->449, 218:+423->495, 240:+448->520, 296:+471->543
    //   172: aload_0
    //   173: iload 4
    //   175: aload_1
    //   176: invokevirtual 98	mfj:a	(ILlvp;)Z
    //   179: ifne -119 -> 60
    //   182: iconst_1
    //   183: istore_3
    //   184: goto -124 -> 60
    //   187: aload_0
    //   188: aload_0
    //   189: getfield 100	mfj:e	I
    //   192: iconst_2
    //   193: ior
    //   194: putfield 100	mfj:e	I
    //   197: aload_0
    //   198: aload_1
    //   199: invokevirtual 103	lvp:b	()D
    //   202: putfield 70	mfj:g	D
    //   205: goto -145 -> 60
    //   208: astore_1
    //   209: new 105	java/lang/RuntimeException
    //   212: dup
    //   213: aload_1
    //   214: aload_0
    //   215: invokevirtual 108	lwk:a	(Llwp;)Llwk;
    //   218: invokespecial 111	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   221: athrow
    //   222: astore_1
    //   223: aload_0
    //   224: getfield 90	mfj:o	Llwj;
    //   227: invokeinterface 116 1 0
    //   232: ifeq +12 -> 244
    //   235: aload_0
    //   236: getfield 90	mfj:o	Llwj;
    //   239: invokeinterface 118 1 0
    //   244: aload_0
    //   245: invokevirtual 120	mfj:e	()V
    //   248: aload_1
    //   249: athrow
    //   250: aload_1
    //   251: invokevirtual 123	lvp:j	()Ljava/lang/String;
    //   254: astore 5
    //   256: aload_0
    //   257: aload_0
    //   258: getfield 100	mfj:e	I
    //   261: bipush 8
    //   263: ior
    //   264: putfield 100	mfj:e	I
    //   267: aload_0
    //   268: aload 5
    //   270: putfield 74	mfj:i	Ljava/lang/String;
    //   273: goto -213 -> 60
    //   276: astore_1
    //   277: new 105	java/lang/RuntimeException
    //   280: dup
    //   281: new 58	lwk
    //   284: dup
    //   285: aload_1
    //   286: invokevirtual 126	java/io/IOException:getMessage	()Ljava/lang/String;
    //   289: invokespecial 129	lwk:<init>	(Ljava/lang/String;)V
    //   292: aload_0
    //   293: invokevirtual 108	lwk:a	(Llwp;)Llwk;
    //   296: invokespecial 111	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   299: athrow
    //   300: aload_0
    //   301: aload_0
    //   302: getfield 100	mfj:e	I
    //   305: bipush 16
    //   307: ior
    //   308: putfield 100	mfj:e	I
    //   311: aload_0
    //   312: aload_1
    //   313: invokevirtual 131	lvp:f	()I
    //   316: putfield 76	mfj:j	I
    //   319: goto -259 -> 60
    //   322: aload_0
    //   323: aload_0
    //   324: getfield 100	mfj:e	I
    //   327: bipush 32
    //   329: ior
    //   330: putfield 100	mfj:e	I
    //   333: aload_0
    //   334: aload_1
    //   335: invokevirtual 134	lvp:e	()J
    //   338: putfield 78	mfj:k	J
    //   341: goto -281 -> 60
    //   344: aload_0
    //   345: aload_0
    //   346: getfield 100	mfj:e	I
    //   349: bipush 64
    //   351: ior
    //   352: putfield 100	mfj:e	I
    //   355: aload_0
    //   356: aload_1
    //   357: invokevirtual 103	lvp:b	()D
    //   360: putfield 80	mfj:l	D
    //   363: goto -303 -> 60
    //   366: aload_0
    //   367: getfield 100	mfj:e	I
    //   370: sipush 128
    //   373: iand
    //   374: sipush 128
    //   377: if_icmpne +213 -> 590
    //   380: aload_0
    //   381: getfield 136	mfj:m	Lmdr;
    //   384: invokevirtual 141	mdr:g	()Llwa;
    //   387: checkcast 143	lwb
    //   390: astore 5
    //   392: aload_0
    //   393: aload_1
    //   394: getstatic 145	mdr:e	Lmdr;
    //   397: aload_2
    //   398: invokevirtual 148	lvp:a	(Llvy;Llvt;)Llvy;
    //   401: checkcast 138	mdr
    //   404: putfield 136	mfj:m	Lmdr;
    //   407: aload 5
    //   409: ifnull +25 -> 434
    //   412: aload 5
    //   414: aload_0
    //   415: getfield 136	mfj:m	Lmdr;
    //   418: invokevirtual 151	lwb:a	(Llvy;)Llwa;
    //   421: pop
    //   422: aload_0
    //   423: aload 5
    //   425: invokevirtual 154	lwb:l	()Llwc;
    //   428: checkcast 138	mdr
    //   431: putfield 136	mfj:m	Lmdr;
    //   434: aload_0
    //   435: aload_0
    //   436: getfield 100	mfj:e	I
    //   439: sipush 128
    //   442: ior
    //   443: putfield 100	mfj:e	I
    //   446: goto -386 -> 60
    //   449: aload_0
    //   450: getfield 90	mfj:o	Llwj;
    //   453: invokeinterface 116 1 0
    //   458: ifne +14 -> 472
    //   461: aload_0
    //   462: new 84	lwu
    //   465: dup
    //   466: invokespecial 155	lwu:<init>	()V
    //   469: putfield 90	mfj:o	Llwj;
    //   472: aload_0
    //   473: getfield 90	mfj:o	Llwj;
    //   476: aload_1
    //   477: bipush 25
    //   479: getstatic 160	mfk:d	Lmfk;
    //   482: aload_2
    //   483: invokevirtual 163	lvp:a	(ILlvy;Llvt;)Llvy;
    //   486: invokeinterface 167 2 0
    //   491: pop
    //   492: goto -432 -> 60
    //   495: aload_1
    //   496: invokevirtual 123	lvp:j	()Ljava/lang/String;
    //   499: astore 5
    //   501: aload_0
    //   502: aload_0
    //   503: getfield 100	mfj:e	I
    //   506: iconst_1
    //   507: ior
    //   508: putfield 100	mfj:e	I
    //   511: aload_0
    //   512: aload 5
    //   514: putfield 68	mfj:f	Ljava/lang/String;
    //   517: goto -457 -> 60
    //   520: aload_0
    //   521: aload_0
    //   522: getfield 100	mfj:e	I
    //   525: sipush 256
    //   528: ior
    //   529: putfield 100	mfj:e	I
    //   532: aload_0
    //   533: aload_1
    //   534: invokevirtual 169	lvp:i	()Z
    //   537: putfield 82	mfj:n	Z
    //   540: goto -480 -> 60
    //   543: aload_0
    //   544: aload_0
    //   545: getfield 100	mfj:e	I
    //   548: iconst_4
    //   549: ior
    //   550: putfield 100	mfj:e	I
    //   553: aload_0
    //   554: aload_1
    //   555: invokevirtual 131	lvp:f	()I
    //   558: putfield 72	mfj:h	I
    //   561: goto -501 -> 60
    //   564: aload_0
    //   565: getfield 90	mfj:o	Llwj;
    //   568: invokeinterface 116 1 0
    //   573: ifeq +12 -> 585
    //   576: aload_0
    //   577: getfield 90	mfj:o	Llwj;
    //   580: invokeinterface 118 1 0
    //   585: aload_0
    //   586: invokevirtual 120	mfj:e	()V
    //   589: return
    //   590: aconst_null
    //   591: astore 5
    //   593: goto -201 -> 392
    //   596: goto -424 -> 172
    //   599: iconst_1
    //   600: istore_3
    //   601: goto -541 -> 60
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	604	0	this	mfj
    //   0	604	1	paramlvp	lvp
    //   0	604	2	paramlvt	lvt
    //   59	542	3	i1	int
    //   68	106	4	i2	int
    //   254	338	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   64	70	208	lwk
    //   172	182	208	lwk
    //   187	205	208	lwk
    //   250	273	208	lwk
    //   300	319	208	lwk
    //   322	341	208	lwk
    //   344	363	208	lwk
    //   366	392	208	lwk
    //   392	407	208	lwk
    //   412	434	208	lwk
    //   434	446	208	lwk
    //   449	472	208	lwk
    //   472	492	208	lwk
    //   495	517	208	lwk
    //   520	540	208	lwk
    //   543	561	208	lwk
    //   64	70	222	finally
    //   172	182	222	finally
    //   187	205	222	finally
    //   209	222	222	finally
    //   250	273	222	finally
    //   277	300	222	finally
    //   300	319	222	finally
    //   322	341	222	finally
    //   344	363	222	finally
    //   366	392	222	finally
    //   392	407	222	finally
    //   412	434	222	finally
    //   434	446	222	finally
    //   449	472	222	finally
    //   472	492	222	finally
    //   495	517	222	finally
    //   520	540	222	finally
    //   543	561	222	finally
    //   64	70	276	java/io/IOException
    //   172	182	276	java/io/IOException
    //   187	205	276	java/io/IOException
    //   250	273	276	java/io/IOException
    //   300	319	276	java/io/IOException
    //   322	341	276	java/io/IOException
    //   344	363	276	java/io/IOException
    //   366	392	276	java/io/IOException
    //   392	407	276	java/io/IOException
    //   412	434	276	java/io/IOException
    //   434	446	276	java/io/IOException
    //   449	472	276	java/io/IOException
    //   472	492	276	java/io/IOException
    //   495	517	276	java/io/IOException
    //   520	540	276	java/io/IOException
    //   543	561	276	java/io/IOException
  }
  
  private boolean j()
  {
    return (e & 0x2) == 2;
  }
  
  private boolean k()
  {
    return (e & 0x80) == 128;
  }
  
  private mdr l()
  {
    if (m == null) {
      return mdr.e;
    }
    return m;
  }
  
  protected final Object a(int paramInt, Object paramObject1, Object paramObject2)
  {
    int i1 = 0;
    switch (mfg.a[(paramInt - 1)])
    {
    default: 
      throw new UnsupportedOperationException();
    case 1: 
      paramObject2 = new mfj((lvp)paramObject1, (lvt)paramObject2);
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      boolean bool;
      do
      {
        return paramObject2;
        return new mfj(lwg.e, lvt.a);
        paramInt = p;
        if (paramInt == 1) {
          return d;
        }
        if (paramInt == 0) {
          return null;
        }
        bool = ((Boolean)paramObject1).booleanValue();
        if (!j())
        {
          if (bool) {
            p = 0;
          }
          return null;
        }
        if ((k()) && (!l().f()))
        {
          if (bool) {
            p = 0;
          }
          return null;
        }
        paramInt = 0;
        while (paramInt < o.size())
        {
          if (!((mfk)o.get(paramInt)).f())
          {
            if (bool) {
              p = 0;
            }
            return null;
          }
          paramInt += 1;
        }
        if (bool) {
          p = 1;
        }
        return d;
        o.b();
        return null;
        return new lwa((byte)0);
        paramObject2 = this;
      } while (paramObject1 == d);
      paramObject1 = (mfj)paramObject1;
      if ((e & 0x1) == 1)
      {
        paramInt = 1;
        if (paramInt != 0)
        {
          e |= 0x1;
          f = f;
        }
        double d1;
        if (((mfj)paramObject1).j())
        {
          d1 = g;
          e |= 0x2;
          g = d1;
        }
        if ((e & 0x4) != 4) {
          break label706;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          paramInt = h;
          e |= 0x4;
          h = paramInt;
        }
        if ((e & 0x8) != 8) {
          break label711;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          e |= 0x8;
          i = i;
        }
        if ((e & 0x10) != 16) {
          break label716;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          paramInt = j;
          e |= 0x10;
          j = paramInt;
        }
        if ((e & 0x20) != 32) {
          break label721;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          long l1 = k;
          e |= 0x20;
          k = l1;
        }
        if ((e & 0x40) != 64) {
          break label726;
        }
        paramInt = 1;
        if (paramInt != 0)
        {
          d1 = l;
          e |= 0x40;
          l = d1;
        }
        if (((mfj)paramObject1).k())
        {
          paramObject2 = ((mfj)paramObject1).l();
          if ((m == null) || (m == mdr.e)) {
            break label731;
          }
          mdr localmdr = m;
          m = ((mdr)((lwb)((lwb)((lwb)mdr.e.g()).a(localmdr)).a((lvy)paramObject2)).l());
          e |= 0x80;
        }
        paramInt = i1;
        if ((e & 0x100) == 256) {
          paramInt = 1;
        }
        if (paramInt != 0)
        {
          bool = n;
          e |= 0x100;
          n = bool;
        }
        if (!o.isEmpty())
        {
          if (!o.isEmpty()) {
            break label739;
          }
          o = o;
        }
      }
      for (;;)
      {
        a(b);
        return this;
        paramInt = 0;
        break;
        paramInt = 0;
        break label349;
        paramInt = 0;
        break label387;
        paramInt = 0;
        break label424;
        paramInt = 0;
        break label463;
        paramInt = 0;
        break label504;
        m = ((mdr)paramObject2);
        break label600;
        if (!o.a()) {
          o = a(o);
        }
        o.addAll(o);
      }
    case 7: 
      label349:
      label387:
      label424:
      label463:
      label504:
      label600:
      label706:
      label711:
      label716:
      label721:
      label726:
      label731:
      label739:
      return d;
    }
    if (q == null) {}
    try
    {
      if (q == null) {
        q = new lvi(d);
      }
      return q;
    }
    finally {}
  }
  
  public void a(lvq paramlvq)
  {
    if ((e & 0x2) == 2) {
      paramlvq.a(12, g);
    }
    if ((e & 0x8) == 8) {
      paramlvq.a(13, i);
    }
    if ((e & 0x10) == 16) {
      paramlvq.b(21, j);
    }
    if ((e & 0x20) == 32) {
      paramlvq.a(22, k);
    }
    if ((e & 0x40) == 64) {
      paramlvq.a(23, l);
    }
    if ((e & 0x80) == 128) {
      paramlvq.a(24, l());
    }
    int i1 = 0;
    while (i1 < o.size())
    {
      paramlvq.e(25, (lwp)o.get(i1));
      i1 += 1;
    }
    if ((e & 0x1) == 1) {
      paramlvq.a(27, f);
    }
    if ((e & 0x100) == 256) {
      paramlvq.a(30, n);
    }
    if ((e & 0x4) == 4) {
      paramlvq.b(37, h);
    }
    b.a(paramlvq);
  }
  
  public int m()
  {
    int i3 = 0;
    int i1 = c;
    if (i1 != -1) {
      return i1;
    }
    if ((e & 0x2) == 2) {}
    for (int i2 = lvq.j(12) + 0;; i2 = 0)
    {
      i1 = i2;
      if ((e & 0x8) == 8) {
        i1 = i2 + lvq.b(13, i);
      }
      i2 = i1;
      if ((e & 0x10) == 16) {
        i2 = i1 + lvq.d(21, j);
      }
      i1 = i2;
      if ((e & 0x20) == 32) {
        i1 = i2 + lvq.d(22, k);
      }
      i2 = i1;
      if ((e & 0x40) == 64) {
        i2 = i1 + lvq.j(23);
      }
      i1 = i2;
      if ((e & 0x80) == 128) {
        i1 = i2 + lvq.c(24, l());
      }
      i2 = i3;
      while (i2 < o.size())
      {
        i3 = lvq.f(25, (lwp)o.get(i2));
        i2 += 1;
        i1 = i3 + i1;
      }
      i2 = i1;
      if ((e & 0x1) == 1) {
        i2 = i1 + lvq.b(27, f);
      }
      i1 = i2;
      if ((e & 0x100) == 256) {
        i1 = i2 + lvq.k(30);
      }
      i2 = i1;
      if ((e & 0x4) == 4) {
        i2 = i1 + lvq.d(37, h);
      }
      i1 = b.b() + i2;
      c = i1;
      return i1;
    }
  }
}

/* Location:
 * Qualified Name:     mfj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */