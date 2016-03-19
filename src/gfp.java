import android.os.IBinder;
import android.os.Parcel;

final class gfp
  implements gfn
{
  private IBinder a;
  
  gfp(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public fxx a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      fxx localfxx = fxy.a(localParcel2.readStrongBinder());
      return localfxx;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public fxx a(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localParcel1.writeFloat(paramFloat);
      a.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      fxx localfxx = fxy.a(localParcel2.readStrongBinder());
      return localfxx;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public fxx a(float paramFloat1, float paramFloat2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localParcel1.writeFloat(paramFloat1);
      localParcel1.writeFloat(paramFloat2);
      a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      fxx localfxx = fxy.a(localParcel2.readStrongBinder());
      return localfxx;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public fxx a(float paramFloat, int paramInt1, int paramInt2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localParcel1.writeFloat(paramFloat);
      localParcel1.writeInt(paramInt1);
      localParcel1.writeInt(paramInt2);
      a.transact(6, localParcel1, localParcel2, 0);
      localParcel2.readException();
      fxx localfxx = fxy.a(localParcel2.readStrongBinder());
      return localfxx;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  /* Error */
  public fxx a(com.google.android.gms.maps.model.CameraPosition paramCameraPosition)
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
    //   15: ifnull +51 -> 66
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 68	com/google/android/gms/maps/model/CameraPosition:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 15	gfp:a	Landroid/os/IBinder;
    //   33: bipush 7
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 35 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 38	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   52: invokestatic 47	fxy:a	(Landroid/os/IBinder;)Lfxx;
    //   55: astore_1
    //   56: aload_3
    //   57: invokevirtual 50	android/os/Parcel:recycle	()V
    //   60: aload_2
    //   61: invokevirtual 50	android/os/Parcel:recycle	()V
    //   64: aload_1
    //   65: areturn
    //   66: aload_2
    //   67: iconst_0
    //   68: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   71: goto -42 -> 29
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 50	android/os/Parcel:recycle	()V
    //   79: aload_2
    //   80: invokevirtual 50	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	gfp
    //   0	85	1	paramCameraPosition	com.google.android.gms.maps.model.CameraPosition
    //   3	77	2	localParcel1	Parcel
    //   7	69	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	74	finally
    //   18	29	74	finally
    //   29	56	74	finally
    //   66	71	74	finally
  }
  
  /* Error */
  public fxx a(com.google.android.gms.maps.model.LatLng paramLatLng)
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
    //   15: ifnull +51 -> 66
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 72	com/google/android/gms/maps/model/LatLng:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 15	gfp:a	Landroid/os/IBinder;
    //   33: bipush 8
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 35 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 38	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   52: invokestatic 47	fxy:a	(Landroid/os/IBinder;)Lfxx;
    //   55: astore_1
    //   56: aload_3
    //   57: invokevirtual 50	android/os/Parcel:recycle	()V
    //   60: aload_2
    //   61: invokevirtual 50	android/os/Parcel:recycle	()V
    //   64: aload_1
    //   65: areturn
    //   66: aload_2
    //   67: iconst_0
    //   68: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   71: goto -42 -> 29
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 50	android/os/Parcel:recycle	()V
    //   79: aload_2
    //   80: invokevirtual 50	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	gfp
    //   0	85	1	paramLatLng	com.google.android.gms.maps.model.LatLng
    //   3	77	2	localParcel1	Parcel
    //   7	69	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	74	finally
    //   18	29	74	finally
    //   29	56	74	finally
    //   66	71	74	finally
  }
  
  /* Error */
  public fxx a(com.google.android.gms.maps.model.LatLng paramLatLng, float paramFloat)
  {
    // Byte code:
    //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 25
    //   12: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_1
    //   16: ifnull +60 -> 76
    //   19: aload_3
    //   20: iconst_1
    //   21: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   24: aload_1
    //   25: aload_3
    //   26: iconst_0
    //   27: invokevirtual 72	com/google/android/gms/maps/model/LatLng:writeToParcel	(Landroid/os/Parcel;I)V
    //   30: aload_3
    //   31: fload_2
    //   32: invokevirtual 55	android/os/Parcel:writeFloat	(F)V
    //   35: aload_0
    //   36: getfield 15	gfp:a	Landroid/os/IBinder;
    //   39: bipush 9
    //   41: aload_3
    //   42: aload 4
    //   44: iconst_0
    //   45: invokeinterface 35 5 0
    //   50: pop
    //   51: aload 4
    //   53: invokevirtual 38	android/os/Parcel:readException	()V
    //   56: aload 4
    //   58: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   61: invokestatic 47	fxy:a	(Landroid/os/IBinder;)Lfxx;
    //   64: astore_1
    //   65: aload 4
    //   67: invokevirtual 50	android/os/Parcel:recycle	()V
    //   70: aload_3
    //   71: invokevirtual 50	android/os/Parcel:recycle	()V
    //   74: aload_1
    //   75: areturn
    //   76: aload_3
    //   77: iconst_0
    //   78: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   81: goto -51 -> 30
    //   84: astore_1
    //   85: aload 4
    //   87: invokevirtual 50	android/os/Parcel:recycle	()V
    //   90: aload_3
    //   91: invokevirtual 50	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	gfp
    //   0	96	1	paramLatLng	com.google.android.gms.maps.model.LatLng
    //   0	96	2	paramFloat	float
    //   3	88	3	localParcel1	Parcel
    //   7	79	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	84	finally
    //   19	30	84	finally
    //   30	65	84	finally
    //   76	81	84	finally
  }
  
  /* Error */
  public fxx a(com.google.android.gms.maps.model.LatLngBounds paramLatLngBounds, int paramInt)
  {
    // Byte code:
    //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 25
    //   12: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_1
    //   16: ifnull +60 -> 76
    //   19: aload_3
    //   20: iconst_1
    //   21: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   24: aload_1
    //   25: aload_3
    //   26: iconst_0
    //   27: invokevirtual 77	com/google/android/gms/maps/model/LatLngBounds:writeToParcel	(Landroid/os/Parcel;I)V
    //   30: aload_3
    //   31: iload_2
    //   32: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   35: aload_0
    //   36: getfield 15	gfp:a	Landroid/os/IBinder;
    //   39: bipush 10
    //   41: aload_3
    //   42: aload 4
    //   44: iconst_0
    //   45: invokeinterface 35 5 0
    //   50: pop
    //   51: aload 4
    //   53: invokevirtual 38	android/os/Parcel:readException	()V
    //   56: aload 4
    //   58: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   61: invokestatic 47	fxy:a	(Landroid/os/IBinder;)Lfxx;
    //   64: astore_1
    //   65: aload 4
    //   67: invokevirtual 50	android/os/Parcel:recycle	()V
    //   70: aload_3
    //   71: invokevirtual 50	android/os/Parcel:recycle	()V
    //   74: aload_1
    //   75: areturn
    //   76: aload_3
    //   77: iconst_0
    //   78: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   81: goto -51 -> 30
    //   84: astore_1
    //   85: aload 4
    //   87: invokevirtual 50	android/os/Parcel:recycle	()V
    //   90: aload_3
    //   91: invokevirtual 50	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	gfp
    //   0	96	1	paramLatLngBounds	com.google.android.gms.maps.model.LatLngBounds
    //   0	96	2	paramInt	int
    //   3	88	3	localParcel1	Parcel
    //   7	79	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	84	finally
    //   19	30	84	finally
    //   30	65	84	finally
    //   76	81	84	finally
  }
  
  /* Error */
  public fxx a(com.google.android.gms.maps.model.LatLngBounds paramLatLngBounds, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 25
    //   14: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +78 -> 96
    //   21: aload 5
    //   23: iconst_1
    //   24: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   27: aload_1
    //   28: aload 5
    //   30: iconst_0
    //   31: invokevirtual 77	com/google/android/gms/maps/model/LatLngBounds:writeToParcel	(Landroid/os/Parcel;I)V
    //   34: aload 5
    //   36: iload_2
    //   37: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   40: aload 5
    //   42: iload_3
    //   43: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   46: aload 5
    //   48: iload 4
    //   50: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   53: aload_0
    //   54: getfield 15	gfp:a	Landroid/os/IBinder;
    //   57: bipush 11
    //   59: aload 5
    //   61: aload 6
    //   63: iconst_0
    //   64: invokeinterface 35 5 0
    //   69: pop
    //   70: aload 6
    //   72: invokevirtual 38	android/os/Parcel:readException	()V
    //   75: aload 6
    //   77: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   80: invokestatic 47	fxy:a	(Landroid/os/IBinder;)Lfxx;
    //   83: astore_1
    //   84: aload 6
    //   86: invokevirtual 50	android/os/Parcel:recycle	()V
    //   89: aload 5
    //   91: invokevirtual 50	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: areturn
    //   96: aload 5
    //   98: iconst_0
    //   99: invokevirtual 61	android/os/Parcel:writeInt	(I)V
    //   102: goto -68 -> 34
    //   105: astore_1
    //   106: aload 6
    //   108: invokevirtual 50	android/os/Parcel:recycle	()V
    //   111: aload 5
    //   113: invokevirtual 50	android/os/Parcel:recycle	()V
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	gfp
    //   0	118	1	paramLatLngBounds	com.google.android.gms.maps.model.LatLngBounds
    //   0	118	2	paramInt1	int
    //   0	118	3	paramInt2	int
    //   0	118	4	paramInt3	int
    //   3	109	5	localParcel1	Parcel
    //   8	99	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	105	finally
    //   21	34	105	finally
    //   34	84	105	finally
    //   96	102	105	finally
  }
  
  public IBinder asBinder()
  {
    return a;
  }
  
  public fxx b()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      fxx localfxx = fxy.a(localParcel2.readStrongBinder());
      return localfxx;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public fxx b(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
      localParcel1.writeFloat(paramFloat);
      a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      fxx localfxx = fxy.a(localParcel2.readStrongBinder());
      return localfxx;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     gfp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */