public final class mfk
  extends lvy<mfk, lwa>
  implements lwr
{
  public static final mfk d;
  private static volatile lwt<mfk> i;
  private static final long serialVersionUID = 0L;
  private int e;
  private long f;
  private String g;
  private byte h;
  
  static
  {
    lvp locallvp = lwg.e;
    lvt locallvt = lvt.a;
    d = new mfk(locallvp);
  }
  
  /* Error */
  private mfk(lvp paramlvp)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 49	lvy:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 51	mfk:h	B
    //   9: aload_0
    //   10: lconst_0
    //   11: putfield 53	mfk:f	J
    //   14: aload_0
    //   15: ldc 55
    //   17: putfield 57	mfk:g	Ljava/lang/String;
    //   20: iconst_0
    //   21: istore_2
    //   22: iload_2
    //   23: ifne +150 -> 173
    //   26: aload_1
    //   27: invokevirtual 62	lvp:a	()I
    //   30: istore_3
    //   31: iload_3
    //   32: lookupswitch	default:+146->178, 0:+149->181, 224:+50->82, 234:+92->124
    //   68: aload_0
    //   69: iload_3
    //   70: aload_1
    //   71: invokevirtual 65	mfk:a	(ILlvp;)Z
    //   74: ifne -52 -> 22
    //   77: iconst_1
    //   78: istore_2
    //   79: goto -57 -> 22
    //   82: aload_0
    //   83: aload_0
    //   84: getfield 67	mfk:e	I
    //   87: iconst_1
    //   88: ior
    //   89: putfield 67	mfk:e	I
    //   92: aload_0
    //   93: aload_1
    //   94: invokevirtual 70	lvp:e	()J
    //   97: putfield 53	mfk:f	J
    //   100: goto -78 -> 22
    //   103: astore_1
    //   104: new 72	java/lang/RuntimeException
    //   107: dup
    //   108: aload_1
    //   109: aload_0
    //   110: invokevirtual 75	lwk:a	(Llwp;)Llwk;
    //   113: invokespecial 78	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   116: athrow
    //   117: astore_1
    //   118: aload_0
    //   119: invokevirtual 80	mfk:e	()V
    //   122: aload_1
    //   123: athrow
    //   124: aload_1
    //   125: invokevirtual 84	lvp:j	()Ljava/lang/String;
    //   128: astore 4
    //   130: aload_0
    //   131: aload_0
    //   132: getfield 67	mfk:e	I
    //   135: iconst_2
    //   136: ior
    //   137: putfield 67	mfk:e	I
    //   140: aload_0
    //   141: aload 4
    //   143: putfield 57	mfk:g	Ljava/lang/String;
    //   146: goto -124 -> 22
    //   149: astore_1
    //   150: new 72	java/lang/RuntimeException
    //   153: dup
    //   154: new 45	lwk
    //   157: dup
    //   158: aload_1
    //   159: invokevirtual 87	java/io/IOException:getMessage	()Ljava/lang/String;
    //   162: invokespecial 90	lwk:<init>	(Ljava/lang/String;)V
    //   165: aload_0
    //   166: invokevirtual 75	lwk:a	(Llwp;)Llwk;
    //   169: invokespecial 78	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   172: athrow
    //   173: aload_0
    //   174: invokevirtual 80	mfk:e	()V
    //   177: return
    //   178: goto -110 -> 68
    //   181: iconst_1
    //   182: istore_2
    //   183: goto -161 -> 22
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	mfk
    //   0	186	1	paramlvp	lvp
    //   21	162	2	j	int
    //   30	40	3	k	int
    //   128	14	4	str	String
    // Exception table:
    //   from	to	target	type
    //   26	31	103	lwk
    //   68	77	103	lwk
    //   82	100	103	lwk
    //   124	146	103	lwk
    //   26	31	117	finally
    //   68	77	117	finally
    //   82	100	117	finally
    //   104	117	117	finally
    //   124	146	117	finally
    //   150	173	117	finally
    //   26	31	149	java/io/IOException
    //   68	77	149	java/io/IOException
    //   82	100	149	java/io/IOException
    //   124	146	149	java/io/IOException
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
      paramObject2 = new mfk((lvp)paramObject1);
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      do
      {
        return paramObject2;
        paramObject1 = lwg.e;
        paramObject2 = lvt.a;
        return new mfk((lvp)paramObject1);
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
        if (bool) {
          h = 1;
        }
        return d;
        return null;
        return new lwa('\000');
        paramObject2 = this;
      } while (paramObject1 == d);
      paramObject1 = (mfk)paramObject1;
      if (((mfk)paramObject1).j())
      {
        long l = f;
        e |= 0x1;
        f = l;
      }
      if ((e & 0x2) == 2) {}
      for (paramInt = 1;; paramInt = 0)
      {
        if (paramInt != 0)
        {
          e |= 0x2;
          g = g;
        }
        a(b);
        return this;
      }
    case 7: 
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
      paramlvq.a(28, f);
    }
    if ((e & 0x2) == 2) {
      paramlvq.a(29, g);
    }
    b.a(paramlvq);
  }
  
  public int m()
  {
    int j = c;
    if (j != -1) {
      return j;
    }
    j = 0;
    if ((e & 0x1) == 1) {
      j = lvq.d(28, f) + 0;
    }
    int k = j;
    if ((e & 0x2) == 2) {
      k = j + lvq.b(29, g);
    }
    j = k + b.b();
    c = j;
    return j;
  }
}

/* Location:
 * Qualified Name:     mfk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */