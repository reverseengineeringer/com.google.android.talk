import java.util.ArrayList;
import java.util.List;

public class hwj
  implements ioq, iox, ioy, ioz
{
  private final List<hwl> a = new ArrayList();
  private boolean b;
  private boolean c;
  
  public hwj(iog paramiog)
  {
    paramiog.a(this);
  }
  
  public evf a(Runnable paramRunnable)
  {
    try
    {
      paramRunnable = b(paramRunnable);
      return paramRunnable;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
  
  public void a(evf paramevf)
  {
    if (paramevf != null) {}
    try
    {
      paramevf.c();
      return;
    }
    finally
    {
      paramevf = finally;
      throw paramevf;
    }
  }
  
  void a(hwl paramhwl)
  {
    try
    {
      a.remove(paramhwl);
      return;
    }
    finally
    {
      paramhwl = finally;
      throw paramhwl;
    }
  }
  
  /* Error */
  public evf b(Runnable paramRunnable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 51	hwj:c	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +9 -> 17
    //   11: aconst_null
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: new 53	hwl
    //   20: dup
    //   21: aload_0
    //   22: aload_1
    //   23: lconst_0
    //   24: invokespecial 56	hwl:<init>	(Lhwj;Ljava/lang/Runnable;J)V
    //   27: astore_3
    //   28: aload_0
    //   29: getfield 28	hwj:a	Ljava/util/List;
    //   32: aload_3
    //   33: invokeinterface 59 2 0
    //   38: pop
    //   39: aload_3
    //   40: astore_1
    //   41: aload_0
    //   42: getfield 61	hwj:b	Z
    //   45: ifeq -32 -> 13
    //   48: aload_3
    //   49: invokevirtual 63	hwl:a	()V
    //   52: aload_3
    //   53: astore_1
    //   54: goto -41 -> 13
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	hwj
    //   0	62	1	paramRunnable	Runnable
    //   6	2	2	bool	boolean
    //   27	26	3	localhwl	hwl
    // Exception table:
    //   from	to	target	type
    //   2	7	57	finally
    //   17	39	57	finally
    //   41	52	57	finally
  }
  
  void b(hwl paramhwl)
  {
    try
    {
      a.remove(paramhwl);
      return;
    }
    finally
    {
      paramhwl = finally;
      throw paramhwl;
    }
  }
  
  public void h_()
  {
    try
    {
      c = true;
      int i = 0;
      while (i < a.size())
      {
        ((hwl)a.get(i)).c();
        i += 1;
      }
      a.clear();
      return;
    }
    finally {}
  }
  
  public void s_()
  {
    try
    {
      b = true;
      int i = 0;
      while (i < a.size())
      {
        ((hwl)a.get(i)).a();
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void t_()
  {
    try
    {
      b = false;
      int i = 0;
      while (i < a.size())
      {
        ((hwl)a.get(i)).b();
        i += 1;
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     hwj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */