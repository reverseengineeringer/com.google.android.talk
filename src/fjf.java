import android.os.Bundle;

final class fjf
  implements fif, fih
{
  fjf(fiv paramfiv) {}
  
  public void a(int paramInt) {}
  
  /* Error */
  public void a(com.google.android.gms.common.ConnectionResult paramConnectionResult)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	fjf:a	Lfiv;
    //   4: getfield 26	fiv:b	Ljava/util/concurrent/locks/Lock;
    //   7: invokeinterface 31 1 0
    //   12: aload_0
    //   13: getfield 14	fjf:a	Lfiv;
    //   16: aload_1
    //   17: invokevirtual 34	fiv:a	(Lcom/google/android/gms/common/ConnectionResult;)Z
    //   20: ifeq +30 -> 50
    //   23: aload_0
    //   24: getfield 14	fjf:a	Lfiv;
    //   27: invokevirtual 37	fiv:i	()V
    //   30: aload_0
    //   31: getfield 14	fjf:a	Lfiv;
    //   34: invokevirtual 40	fiv:h	()V
    //   37: aload_0
    //   38: getfield 14	fjf:a	Lfiv;
    //   41: getfield 26	fiv:b	Ljava/util/concurrent/locks/Lock;
    //   44: invokeinterface 43 1 0
    //   49: return
    //   50: aload_0
    //   51: getfield 14	fjf:a	Lfiv;
    //   54: aload_1
    //   55: invokevirtual 45	fiv:b	(Lcom/google/android/gms/common/ConnectionResult;)V
    //   58: goto -21 -> 37
    //   61: astore_1
    //   62: aload_0
    //   63: getfield 14	fjf:a	Lfiv;
    //   66: getfield 26	fiv:b	Ljava/util/concurrent/locks/Lock;
    //   69: invokeinterface 43 1 0
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	fjf
    //   0	76	1	paramConnectionResult	com.google.android.gms.common.ConnectionResult
    // Exception table:
    //   from	to	target	type
    //   12	37	61	finally
    //   50	58	61	finally
  }
  
  public void a_(Bundle paramBundle)
  {
    a.d.a(new fme(a));
  }
}

/* Location:
 * Qualified Name:     fjf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */