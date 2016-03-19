public final class mdr
  extends lwc<mdr, lwb>
  implements lwr
{
  public static final mdr e = new mdr(lwg.e, lvt.a);
  private static volatile lwt<mdr> g;
  private static final long serialVersionUID = 0L;
  private byte f;
  
  /* Error */
  private mdr(lvp paramlvp, lvt paramlvt)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 44	lwc:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 46	mdr:f	B
    //   9: iconst_0
    //   10: istore_3
    //   11: iload_3
    //   12: ifne +63 -> 75
    //   15: aload_1
    //   16: invokevirtual 51	lvp:a	()I
    //   19: istore 4
    //   21: iload 4
    //   23: tableswitch	default:+105->128, 0:+47->70
    //   40: aload_0
    //   41: aload_0
    //   42: getstatic 56	lwe:g	I
    //   45: invokevirtual 61	lvy:a	(I)Ljava/lang/Object;
    //   48: checkcast 58	lvy
    //   51: aload_1
    //   52: aload_2
    //   53: iload 4
    //   55: invokevirtual 64	mdr:a	(Llwp;Llvp;Llvt;I)Z
    //   58: istore 5
    //   60: iload 5
    //   62: ifne +63 -> 125
    //   65: iconst_1
    //   66: istore_3
    //   67: goto -56 -> 11
    //   70: iconst_1
    //   71: istore_3
    //   72: goto -61 -> 11
    //   75: aload_0
    //   76: invokevirtual 66	mdr:e	()V
    //   79: return
    //   80: astore_1
    //   81: new 68	java/lang/RuntimeException
    //   84: dup
    //   85: aload_1
    //   86: aload_0
    //   87: invokevirtual 71	lwk:a	(Llwp;)Llwk;
    //   90: invokespecial 74	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   93: athrow
    //   94: astore_1
    //   95: aload_0
    //   96: invokevirtual 66	mdr:e	()V
    //   99: aload_1
    //   100: athrow
    //   101: astore_1
    //   102: new 68	java/lang/RuntimeException
    //   105: dup
    //   106: new 40	lwk
    //   109: dup
    //   110: aload_1
    //   111: invokevirtual 78	java/io/IOException:getMessage	()Ljava/lang/String;
    //   114: invokespecial 81	lwk:<init>	(Ljava/lang/String;)V
    //   117: aload_0
    //   118: invokevirtual 71	lwk:a	(Llwp;)Llwk;
    //   121: invokespecial 74	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   124: athrow
    //   125: goto -58 -> 67
    //   128: goto -88 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	mdr
    //   0	131	1	paramlvp	lvp
    //   0	131	2	paramlvt	lvt
    //   10	62	3	i	int
    //   19	35	4	j	int
    //   58	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   15	21	80	lwk
    //   40	60	80	lwk
    //   15	21	94	finally
    //   40	60	94	finally
    //   81	94	94	finally
    //   102	125	94	finally
    //   15	21	101	java/io/IOException
    //   40	60	101	java/io/IOException
  }
  
  protected final Object a(int paramInt, Object paramObject1, Object paramObject2)
  {
    switch (mds.a[(paramInt - 1)])
    {
    default: 
      throw new UnsupportedOperationException();
    case 1: 
      paramObject2 = new mdr((lvp)paramObject1, (lvt)paramObject2);
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      do
      {
        return paramObject2;
        return new mdr(lwg.e, lvt.a);
        paramInt = f;
        if (paramInt == 1) {
          return e;
        }
        if (paramInt == 0) {
          return null;
        }
        boolean bool = ((Boolean)paramObject1).booleanValue();
        if (!j())
        {
          if (bool) {
            f = 0;
          }
          return null;
        }
        if (bool) {
          f = 1;
        }
        return e;
        return null;
        return new lwb();
        paramObject2 = this;
      } while (paramObject1 == e);
      paramObject1 = (mdr)paramObject1;
      if (d.b()) {
        d = d.c();
      }
      d.a(d);
      a(b);
      return this;
    case 7: 
      return e;
    }
    if (g == null) {}
    try
    {
      if (g == null) {
        g = new lvi(e);
      }
      return g;
    }
    finally {}
  }
  
  public void a(lvq paramlvq)
  {
    k().a(paramlvq);
    b.a(paramlvq);
  }
  
  public int m()
  {
    int i = c;
    if (i != -1) {
      return i;
    }
    i = l() + 0 + b.b();
    c = i;
    return i;
  }
}

/* Location:
 * Qualified Name:     mdr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */