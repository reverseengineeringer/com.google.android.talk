public final class gfl
{
  private static boolean a = false;
  
  /* Error */
  public static int a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ldc 18
    //   6: invokestatic 24	aal:b	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   9: pop
    //   10: getstatic 10	gfl:a	Z
    //   13: istore_2
    //   14: iload_2
    //   15: ifeq +10 -> 25
    //   18: iconst_0
    //   19: istore_1
    //   20: ldc 2
    //   22: monitorexit
    //   23: iload_1
    //   24: ireturn
    //   25: aload_0
    //   26: invokestatic 29	gjf:a	(Landroid/content/Context;)Lggu;
    //   29: astore_0
    //   30: aload_0
    //   31: invokeinterface 34 1 0
    //   36: invokestatic 38	aal:d	(Ljava/lang/Object;)Ljava/lang/Object;
    //   39: checkcast 40	gfn
    //   42: putstatic 44	aal:sD	Lgfn;
    //   45: aload_0
    //   46: invokeinterface 47 1 0
    //   51: astore_0
    //   52: getstatic 51	aal:sE	Lgjo;
    //   55: ifnonnull +13 -> 68
    //   58: aload_0
    //   59: invokestatic 38	aal:d	(Ljava/lang/Object;)Ljava/lang/Object;
    //   62: checkcast 53	gjo
    //   65: putstatic 51	aal:sE	Lgjo;
    //   68: iconst_1
    //   69: putstatic 10	gfl:a	Z
    //   72: iconst_0
    //   73: istore_1
    //   74: goto -54 -> 20
    //   77: astore_0
    //   78: aload_0
    //   79: getfield 56	fhp:a	I
    //   82: istore_1
    //   83: goto -63 -> 20
    //   86: astore_0
    //   87: new 58	ax
    //   90: dup
    //   91: aload_0
    //   92: invokespecial 62	ax:<init>	(Landroid/os/RemoteException;)V
    //   95: athrow
    //   96: astore_0
    //   97: ldc 2
    //   99: monitorexit
    //   100: aload_0
    //   101: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	paramContext	android.content.Context
    //   19	64	1	i	int
    //   13	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   25	30	77	fhp
    //   30	68	86	android/os/RemoteException
    //   3	14	96	finally
    //   25	30	96	finally
    //   30	68	96	finally
    //   68	72	96	finally
    //   78	83	96	finally
    //   87	96	96	finally
  }
}

/* Location:
 * Qualified Name:     gfl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */