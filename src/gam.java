import android.os.IBinder;
import android.os.Parcel;

final class gam
  implements gak
{
  private IBinder a;
  
  gam(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  /* Error */
  public android.os.Bundle a(String paramString)
  {
    // Byte code:
    //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 25
    //   11: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_2
    //   15: aload_1
    //   16: invokevirtual 32	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 15	gam:a	Landroid/os/IBinder;
    //   23: iconst_1
    //   24: aload_2
    //   25: aload_3
    //   26: iconst_0
    //   27: invokeinterface 38 5 0
    //   32: pop
    //   33: aload_3
    //   34: invokevirtual 41	android/os/Parcel:readException	()V
    //   37: aload_3
    //   38: invokevirtual 45	android/os/Parcel:readInt	()I
    //   41: ifeq +26 -> 67
    //   44: getstatic 51	android/os/Bundle:CREATOR	Landroid/os/Parcelable$Creator;
    //   47: aload_3
    //   48: invokeinterface 57 2 0
    //   53: checkcast 47	android/os/Bundle
    //   56: astore_1
    //   57: aload_3
    //   58: invokevirtual 60	android/os/Parcel:recycle	()V
    //   61: aload_2
    //   62: invokevirtual 60	android/os/Parcel:recycle	()V
    //   65: aload_1
    //   66: areturn
    //   67: aconst_null
    //   68: astore_1
    //   69: goto -12 -> 57
    //   72: astore_1
    //   73: aload_3
    //   74: invokevirtual 60	android/os/Parcel:recycle	()V
    //   77: aload_2
    //   78: invokevirtual 60	android/os/Parcel:recycle	()V
    //   81: aload_1
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	this	gam
    //   0	83	1	paramString	String
    //   3	75	2	localParcel1	Parcel
    //   7	67	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	57	72	finally
  }
  
  public void a(String paramString, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.http.IGoogleHttpService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     gam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */