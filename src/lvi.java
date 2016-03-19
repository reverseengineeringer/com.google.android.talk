public final class lvi<MessageType extends lwp>
  implements lwt<MessageType>
{
  private static final lvt b = lvt.a;
  T a;
  
  public lvi() {}
  
  public lvi(T paramT)
  {
    this();
    a = paramT;
  }
  
  private T b(lvp paramlvp, lvt paramlvt)
  {
    return lvy.a(a, paramlvp, paramlvt);
  }
  
  /* Error */
  private MessageType b(lvk paramlvk, lvt paramlvt)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 46	lvk:c	()Llvp;
    //   4: astore_1
    //   5: aload_0
    //   6: aload_1
    //   7: aload_2
    //   8: invokevirtual 49	lvi:a	(Llvp;Llvt;)Ljava/lang/Object;
    //   11: checkcast 51	lwp
    //   14: astore_2
    //   15: aload_1
    //   16: iconst_0
    //   17: invokevirtual 56	lvp:a	(I)V
    //   20: aload_2
    //   21: areturn
    //   22: astore_1
    //   23: aload_1
    //   24: aload_2
    //   25: invokevirtual 59	lwk:a	(Llwp;)Llwk;
    //   28: athrow
    //   29: astore_1
    //   30: aload_1
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	lvi
    //   0	32	1	paramlvk	lvk
    //   0	32	2	paramlvt	lvt
    // Exception table:
    //   from	to	target	type
    //   15	20	22	lwk
    //   0	15	29	lwk
    //   23	29	29	lwk
  }
  
  private MessageType c(lvk paramlvk, lvt paramlvt)
  {
    paramlvt = b(paramlvk, paramlvt);
    if ((paramlvt != null) && (!paramlvt.f()))
    {
      if ((paramlvt instanceof lvf)) {
        paramlvk = ((lvf)paramlvt).b();
      }
      for (;;)
      {
        throw paramlvk.a().a(paramlvt);
        if ((paramlvt instanceof lvh)) {
          paramlvk = ((lvh)paramlvt).ab_();
        } else {
          paramlvk = new lxe();
        }
      }
    }
    return paramlvt;
  }
}

/* Location:
 * Qualified Name:     lvi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */