public final class mfi
  extends lvy<mfi, lwa>
  implements lwr
{
  public static final mfi d = new mfi(lwg.e, lvt.a);
  private static volatile lwt<mfi> i;
  private static final long serialVersionUID = 0L;
  private int e;
  private int f;
  private lwj<mfj> g;
  private byte h;
  
  /* Error */
  private mfi(lvp paramlvp, lvt paramlvt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: invokespecial 50	lvy:<init>	()V
    //   6: aload_0
    //   7: iconst_m1
    //   8: putfield 52	mfi:h	B
    //   11: aload_0
    //   12: iconst_0
    //   13: putfield 54	mfi:f	I
    //   16: aload_0
    //   17: getstatic 60	lwu:b	Llwu;
    //   20: putfield 62	mfi:g	Llwj;
    //   23: iload_3
    //   24: ifne +192 -> 216
    //   27: aload_1
    //   28: invokevirtual 67	lvp:a	()I
    //   31: istore 4
    //   33: iload 4
    //   35: lookupswitch	default:+207->242, 0:+210->245, 85:+48->83, 91:+111->146
    //   68: aload_0
    //   69: iload 4
    //   71: aload_1
    //   72: invokevirtual 70	mfi:a	(ILlvp;)Z
    //   75: ifne -52 -> 23
    //   78: iconst_1
    //   79: istore_3
    //   80: goto -57 -> 23
    //   83: aload_0
    //   84: aload_0
    //   85: getfield 72	mfi:e	I
    //   88: iconst_1
    //   89: ior
    //   90: putfield 72	mfi:e	I
    //   93: aload_0
    //   94: aload_1
    //   95: invokevirtual 74	lvp:h	()I
    //   98: putfield 54	mfi:f	I
    //   101: goto -78 -> 23
    //   104: astore_1
    //   105: new 76	java/lang/RuntimeException
    //   108: dup
    //   109: aload_1
    //   110: aload_0
    //   111: invokevirtual 79	lwk:a	(Llwp;)Llwk;
    //   114: invokespecial 82	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   117: athrow
    //   118: astore_1
    //   119: aload_0
    //   120: getfield 62	mfi:g	Llwj;
    //   123: invokeinterface 87 1 0
    //   128: ifeq +12 -> 140
    //   131: aload_0
    //   132: getfield 62	mfi:g	Llwj;
    //   135: invokeinterface 89 1 0
    //   140: aload_0
    //   141: invokevirtual 91	mfi:e	()V
    //   144: aload_1
    //   145: athrow
    //   146: aload_0
    //   147: getfield 62	mfi:g	Llwj;
    //   150: invokeinterface 87 1 0
    //   155: ifne +14 -> 169
    //   158: aload_0
    //   159: new 56	lwu
    //   162: dup
    //   163: invokespecial 92	lwu:<init>	()V
    //   166: putfield 62	mfi:g	Llwj;
    //   169: aload_0
    //   170: getfield 62	mfi:g	Llwj;
    //   173: aload_1
    //   174: bipush 11
    //   176: getstatic 97	mfj:d	Lmfj;
    //   179: aload_2
    //   180: invokevirtual 100	lvp:a	(ILlvy;Llvt;)Llvy;
    //   183: invokeinterface 104 2 0
    //   188: pop
    //   189: goto -166 -> 23
    //   192: astore_1
    //   193: new 76	java/lang/RuntimeException
    //   196: dup
    //   197: new 46	lwk
    //   200: dup
    //   201: aload_1
    //   202: invokevirtual 108	java/io/IOException:getMessage	()Ljava/lang/String;
    //   205: invokespecial 111	lwk:<init>	(Ljava/lang/String;)V
    //   208: aload_0
    //   209: invokevirtual 79	lwk:a	(Llwp;)Llwk;
    //   212: invokespecial 82	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   215: athrow
    //   216: aload_0
    //   217: getfield 62	mfi:g	Llwj;
    //   220: invokeinterface 87 1 0
    //   225: ifeq +12 -> 237
    //   228: aload_0
    //   229: getfield 62	mfi:g	Llwj;
    //   232: invokeinterface 89 1 0
    //   237: aload_0
    //   238: invokevirtual 91	mfi:e	()V
    //   241: return
    //   242: goto -174 -> 68
    //   245: iconst_1
    //   246: istore_3
    //   247: goto -224 -> 23
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	250	0	this	mfi
    //   0	250	1	paramlvp	lvp
    //   0	250	2	paramlvt	lvt
    //   1	246	3	j	int
    //   31	39	4	k	int
    // Exception table:
    //   from	to	target	type
    //   27	33	104	lwk
    //   68	78	104	lwk
    //   83	101	104	lwk
    //   146	169	104	lwk
    //   169	189	104	lwk
    //   27	33	118	finally
    //   68	78	118	finally
    //   83	101	118	finally
    //   105	118	118	finally
    //   146	169	118	finally
    //   169	189	118	finally
    //   193	216	118	finally
    //   27	33	192	java/io/IOException
    //   68	78	192	java/io/IOException
    //   83	101	192	java/io/IOException
    //   146	169	192	java/io/IOException
    //   169	189	192	java/io/IOException
  }
  
  private boolean j()
  {
    return (e & 0x1) == 1;
  }
  
  protected final Object a(int paramInt, Object paramObject1, Object paramObject2)
  {
    switch (mfg.a[(paramInt - 1)])
    {
    default: 
      throw new UnsupportedOperationException();
    case 1: 
      paramObject2 = new mfi((lvp)paramObject1, (lvt)paramObject2);
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      do
      {
        return paramObject2;
        return new mfi(lwg.e, lvt.a);
        paramInt = h;
        if (paramInt == 1) {
          return d;
        }
        if (paramInt == 0) {
          return null;
        }
        boolean bool = ((Boolean)paramObject1).booleanValue();
        if (!j())
        {
          if (bool) {
            h = 0;
          }
          return null;
        }
        paramInt = 0;
        while (paramInt < g.size())
        {
          if (!((mfj)g.get(paramInt)).f())
          {
            if (bool) {
              h = 0;
            }
            return null;
          }
          paramInt += 1;
        }
        if (bool) {
          h = 1;
        }
        return d;
        g.b();
        return null;
        return new lwa((short)0);
        paramObject2 = this;
      } while (paramObject1 == d);
      paramObject1 = (mfi)paramObject1;
      if (((mfi)paramObject1).j())
      {
        paramInt = f;
        e |= 0x1;
        f = paramInt;
      }
      if (!g.isEmpty())
      {
        if (!g.isEmpty()) {
          break label310;
        }
        g = g;
      }
      for (;;)
      {
        a(b);
        return this;
        if (!g.a()) {
          g = a(g);
        }
        g.addAll(g);
      }
    case 7: 
      label310:
      return d;
    }
    if (i == null) {}
    try
    {
      if (i == null) {
        i = new lvi(d);
      }
      return i;
    }
    finally {}
  }
  
  public void a(lvq paramlvq)
  {
    if ((e & 0x1) == 1) {
      paramlvq.c(10, f);
    }
    int j = 0;
    while (j < g.size())
    {
      paramlvq.e(11, (lwp)g.get(j));
      j += 1;
    }
    b.a(paramlvq);
  }
  
  public int m()
  {
    int k = 0;
    int j = c;
    if (j != -1) {
      return j;
    }
    if ((e & 0x1) == 1) {
      j = lvq.h(10) + 0;
    }
    for (;;)
    {
      if (k < g.size())
      {
        int m = lvq.f(11, (lwp)g.get(k));
        k += 1;
        j = m + j;
      }
      else
      {
        j = b.b() + j;
        c = j;
        return j;
        j = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     mfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */