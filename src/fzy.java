import android.os.IBinder;

public final class fzy
  implements fzw
{
  private IBinder a;
  
  public fzy(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  /* Error */
  public void a(com.google.android.gms.common.api.Status paramStatus, java.util.List<com.google.android.gms.herrevad.PredictedNetworkQuality> paramList)
  {
    // Byte code:
    //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: aload_3
    //   5: ldc 25
    //   7: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   10: aload_1
    //   11: ifnull +38 -> 49
    //   14: aload_3
    //   15: iconst_1
    //   16: invokevirtual 33	android/os/Parcel:writeInt	(I)V
    //   19: aload_1
    //   20: aload_3
    //   21: iconst_0
    //   22: invokevirtual 39	com/google/android/gms/common/api/Status:writeToParcel	(Landroid/os/Parcel;I)V
    //   25: aload_3
    //   26: aload_2
    //   27: invokevirtual 43	android/os/Parcel:writeTypedList	(Ljava/util/List;)V
    //   30: aload_0
    //   31: getfield 15	fzy:a	Landroid/os/IBinder;
    //   34: iconst_2
    //   35: aload_3
    //   36: aconst_null
    //   37: iconst_1
    //   38: invokeinterface 49 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 52	android/os/Parcel:recycle	()V
    //   48: return
    //   49: aload_3
    //   50: iconst_0
    //   51: invokevirtual 33	android/os/Parcel:writeInt	(I)V
    //   54: goto -29 -> 25
    //   57: astore_1
    //   58: aload_3
    //   59: invokevirtual 52	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	fzy
    //   0	64	1	paramStatus	com.google.android.gms.common.api.Status
    //   0	64	2	paramList	java.util.List<com.google.android.gms.herrevad.PredictedNetworkQuality>
    //   3	56	3	localParcel	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   4	10	57	finally
    //   14	25	57	finally
    //   25	44	57	finally
    //   49	54	57	finally
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     fzy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */