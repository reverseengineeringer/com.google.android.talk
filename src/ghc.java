import android.os.IBinder;

final class ghc
  implements gha
{
  private IBinder a;
  
  ghc(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  /* Error */
  public void a(com.google.android.gms.maps.model.CameraPosition paramCameraPosition)
  {
    // Byte code:
    //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 25
    //   11: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +41 -> 56
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 33	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 39	com/google/android/gms/maps/model/CameraPosition:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 15	ghc:a	Landroid/os/IBinder;
    //   33: iconst_1
    //   34: aload_2
    //   35: aload_3
    //   36: iconst_0
    //   37: invokeinterface 45 5 0
    //   42: pop
    //   43: aload_3
    //   44: invokevirtual 48	android/os/Parcel:readException	()V
    //   47: aload_3
    //   48: invokevirtual 51	android/os/Parcel:recycle	()V
    //   51: aload_2
    //   52: invokevirtual 51	android/os/Parcel:recycle	()V
    //   55: return
    //   56: aload_2
    //   57: iconst_0
    //   58: invokevirtual 33	android/os/Parcel:writeInt	(I)V
    //   61: goto -32 -> 29
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 51	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 51	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	ghc
    //   0	75	1	paramCameraPosition	com.google.android.gms.maps.model.CameraPosition
    //   3	67	2	localParcel1	android.os.Parcel
    //   7	59	3	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	29	64	finally
    //   29	47	64	finally
    //   56	61	64	finally
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     ghc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */