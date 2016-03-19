public class lwa<MessageType extends lvy<MessageType, BuilderType>, BuilderType extends lwa<MessageType, BuilderType>>
  extends lvg<BuilderType>
{
  public MessageType a;
  public boolean b;
  private final MessageType c;
  
  public lwa()
  {
    this(mfh.f);
  }
  
  public lwa(byte paramByte)
  {
    this(mfj.d);
  }
  
  public lwa(char paramChar)
  {
    this(mfk.d);
  }
  
  public lwa(MessageType paramMessageType)
  {
    c = paramMessageType;
    a = ((lvy)paramMessageType.a(lwe.e));
    b = false;
  }
  
  public lwa(short paramShort)
  {
    this(mfi.d);
  }
  
  public lwa a(double paramDouble)
  {
    b();
    ((mfh)a).a(paramDouble);
    return this;
  }
  
  public lwa a(long paramLong)
  {
    b();
    ((mfh)a).a(paramLong);
    return this;
  }
  
  public lwa a(String paramString)
  {
    b();
    mfh localmfh = (mfh)a;
    if (paramString == null) {
      throw new NullPointerException();
    }
    d |= 0x80;
    e = paramString;
    return this;
  }
  
  public BuilderType a(MessageType paramMessageType)
  {
    b();
    a.a(lwe.c, paramMessageType);
    return this;
  }
  
  public lwa b(double paramDouble)
  {
    b();
    ((mfh)a).b(paramDouble);
    return this;
  }
  
  public lwa b(long paramLong)
  {
    b();
    ((mfh)a).b(paramLong);
    return this;
  }
  
  public void b()
  {
    if (b)
    {
      lvy locallvy = (lvy)a.a(lwe.e);
      locallvy.a(lwe.c, a);
      a = locallvy;
      b = false;
    }
  }
  
  public BuilderType c()
  {
    lwa locallwa = g().d();
    locallwa.a(d());
    return locallwa;
  }
  
  public lwa c(long paramLong)
  {
    b();
    ((mfh)a).c(paramLong);
    return this;
  }
  
  /* Error */
  public BuilderType c(lvp paramlvp, lvt paramlvt)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 106	lwa:g	()Llvy;
    //   4: invokevirtual 120	lvy:c	()Llwt;
    //   7: aload_1
    //   8: aload_2
    //   9: invokeinterface 125 3 0
    //   14: checkcast 48	lvy
    //   17: astore_1
    //   18: aload_1
    //   19: ifnull +9 -> 28
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 112	lwa:a	(Llvy;)Llwa;
    //   27: pop
    //   28: aload_0
    //   29: areturn
    //   30: astore_2
    //   31: aload_2
    //   32: invokevirtual 128	lwk:a	()Llwp;
    //   35: checkcast 48	lvy
    //   38: astore_1
    //   39: aload_2
    //   40: athrow
    //   41: astore_2
    //   42: aload_1
    //   43: ifnull +9 -> 52
    //   46: aload_0
    //   47: aload_1
    //   48: invokevirtual 112	lwa:a	(Llvy;)Llwa;
    //   51: pop
    //   52: aload_2
    //   53: athrow
    //   54: astore_2
    //   55: aconst_null
    //   56: astore_1
    //   57: goto -15 -> 42
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	lwa
    //   0	60	1	paramlvp	lvp
    //   0	60	2	paramlvt	lvt
    // Exception table:
    //   from	to	target	type
    //   0	18	30	lwk
    //   39	41	41	finally
    //   0	18	54	finally
    //   31	39	54	finally
  }
  
  public MessageType d()
  {
    if (b) {
      return a;
    }
    a.a(lwe.d);
    a.b.a();
    b = true;
    return a;
  }
  
  public final MessageType e()
  {
    lvy locallvy = d();
    if (!locallvy.f()) {
      throw new lxe();
    }
    return locallvy;
  }
  
  public final boolean f()
  {
    boolean bool = false;
    if (a.a(lwe.a, Boolean.valueOf(false)) != null) {
      bool = true;
    }
    return bool;
  }
  
  public MessageType g()
  {
    return c;
  }
  
  public long j()
  {
    return ((mfh)a).j();
  }
  
  public String k()
  {
    return ((mfh)a).l();
  }
}

/* Location:
 * Qualified Name:     lwa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */