final class hro
  implements hqk
{
  private final gwk a;
  
  hro(gwk paramgwk)
  {
    a = paramgwk;
  }
  
  /* Error */
  public java.util.List<hqi> a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 15	hro:a	Lgwk;
    //   4: ldc 25
    //   6: invokeinterface 30 2 0
    //   11: astore_2
    //   12: new 32	java/util/ArrayList
    //   15: dup
    //   16: aload_2
    //   17: arraylength
    //   18: invokespecial 35	java/util/ArrayList:<init>	(I)V
    //   21: astore_3
    //   22: iconst_0
    //   23: istore_1
    //   24: iload_1
    //   25: aload_2
    //   26: arraylength
    //   27: if_icmpge +44 -> 71
    //   30: aload_3
    //   31: new 37	hqj
    //   34: dup
    //   35: aload_2
    //   36: iload_1
    //   37: aaload
    //   38: getfield 43	android/accounts/Account:name	Ljava/lang/String;
    //   41: iload_1
    //   42: invokespecial 46	hqj:<init>	(Ljava/lang/String;I)V
    //   45: invokevirtual 50	hqj:b	()Lhqi;
    //   48: invokeinterface 56 2 0
    //   53: pop
    //   54: iload_1
    //   55: iconst_1
    //   56: iadd
    //   57: istore_1
    //   58: goto -34 -> 24
    //   61: astore_2
    //   62: new 58	hqn
    //   65: dup
    //   66: aload_2
    //   67: invokespecial 61	hqn:<init>	(Ljava/lang/Throwable;)V
    //   70: athrow
    //   71: aload_3
    //   72: areturn
    //   73: astore_2
    //   74: goto -12 -> 62
    //   77: astore_2
    //   78: goto -16 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	hro
    //   23	35	1	i	int
    //   11	25	2	arrayOfAccount	android.accounts.Account[]
    //   61	6	2	localgxh	gxh
    //   73	1	2	localgxg	gxg
    //   77	1	2	localRemoteException	android.os.RemoteException
    //   21	51	3	localArrayList	java.util.ArrayList
    // Exception table:
    //   from	to	target	type
    //   0	12	61	gxh
    //   0	12	73	gxg
    //   0	12	77	android/os/RemoteException
  }
}

/* Location:
 * Qualified Name:     hro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */