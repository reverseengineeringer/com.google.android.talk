import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

final class ggw
  implements ggu
{
  private IBinder a;
  
  ggw(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  /* Error */
  public gfn a()
  {
    // Byte code:
    //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 25
    //   11: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 15	ggw:a	Landroid/os/IBinder;
    //   18: iconst_4
    //   19: aload_2
    //   20: aload_3
    //   21: iconst_0
    //   22: invokeinterface 35 5 0
    //   27: pop
    //   28: aload_3
    //   29: invokevirtual 38	android/os/Parcel:readException	()V
    //   32: aload_3
    //   33: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   36: astore_1
    //   37: aload_1
    //   38: ifnonnull +15 -> 53
    //   41: aconst_null
    //   42: astore_1
    //   43: aload_3
    //   44: invokevirtual 45	android/os/Parcel:recycle	()V
    //   47: aload_2
    //   48: invokevirtual 45	android/os/Parcel:recycle	()V
    //   51: aload_1
    //   52: areturn
    //   53: aload_1
    //   54: ldc 47
    //   56: invokeinterface 51 2 0
    //   61: astore 4
    //   63: aload 4
    //   65: ifnull +20 -> 85
    //   68: aload 4
    //   70: instanceof 53
    //   73: ifeq +12 -> 85
    //   76: aload 4
    //   78: checkcast 53	gfn
    //   81: astore_1
    //   82: goto -39 -> 43
    //   85: new 55	gfp
    //   88: dup
    //   89: aload_1
    //   90: invokespecial 57	gfp:<init>	(Landroid/os/IBinder;)V
    //   93: astore_1
    //   94: goto -51 -> 43
    //   97: astore_1
    //   98: aload_3
    //   99: invokevirtual 45	android/os/Parcel:recycle	()V
    //   102: aload_2
    //   103: invokevirtual 45	android/os/Parcel:recycle	()V
    //   106: aload_1
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	ggw
    //   36	58	1	localObject1	Object
    //   97	10	1	localObject2	Object
    //   3	100	2	localParcel1	Parcel
    //   7	92	3	localParcel2	Parcel
    //   61	16	4	localIInterface	android.os.IInterface
    // Exception table:
    //   from	to	target	type
    //   8	37	97	finally
    //   53	63	97	finally
    //   68	82	97	finally
    //   85	94	97	finally
  }
  
  public gfz a(fxx paramfxx, GoogleMapOptions paramGoogleMapOptions)
  {
    Object localObject = null;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
        if (paramfxx != null)
        {
          paramfxx = paramfxx.asBinder();
          localParcel1.writeStrongBinder(paramfxx);
          if (paramGoogleMapOptions != null)
          {
            localParcel1.writeInt(1);
            paramGoogleMapOptions.writeToParcel(localParcel1, 0);
            a.transact(3, localParcel1, localParcel2, 0);
            localParcel2.readException();
            paramfxx = localParcel2.readStrongBinder();
            if (paramfxx != null) {
              break label125;
            }
            paramfxx = (fxx)localObject;
            return paramfxx;
          }
        }
        else
        {
          paramfxx = null;
          continue;
        }
        localParcel1.writeInt(0);
        continue;
        paramGoogleMapOptions = paramfxx.queryLocalInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      label125:
      if ((paramGoogleMapOptions != null) && ((paramGoogleMapOptions instanceof gfz))) {
        paramfxx = (gfz)paramGoogleMapOptions;
      } else {
        paramfxx = new ggb(paramfxx);
      }
    }
  }
  
  public ggl a(fxx paramfxx, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    Object localObject = null;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICreator");
        if (paramfxx != null)
        {
          paramfxx = paramfxx.asBinder();
          localParcel1.writeStrongBinder(paramfxx);
          if (paramStreetViewPanoramaOptions != null)
          {
            localParcel1.writeInt(1);
            paramStreetViewPanoramaOptions.writeToParcel(localParcel1, 0);
            a.transact(7, localParcel1, localParcel2, 0);
            localParcel2.readException();
            paramfxx = localParcel2.readStrongBinder();
            if (paramfxx != null) {
              break label126;
            }
            paramfxx = (fxx)localObject;
            return paramfxx;
          }
        }
        else
        {
          paramfxx = null;
          continue;
        }
        localParcel1.writeInt(0);
        continue;
        paramStreetViewPanoramaOptions = paramfxx.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      label126:
      if ((paramStreetViewPanoramaOptions != null) && ((paramStreetViewPanoramaOptions instanceof ggl))) {
        paramfxx = (ggl)paramStreetViewPanoramaOptions;
      } else {
        paramfxx = new ggn(paramfxx);
      }
    }
  }
  
  /* Error */
  public void a(fxx paramfxx)
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
    //   15: ifnull +42 -> 57
    //   18: aload_1
    //   19: invokeinterface 63 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 66	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	ggw:a	Landroid/os/IBinder;
    //   34: iconst_1
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 35 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 38	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 45	android/os/Parcel:recycle	()V
    //   52: aload_2
    //   53: invokevirtual 45	android/os/Parcel:recycle	()V
    //   56: return
    //   57: aconst_null
    //   58: astore_1
    //   59: goto -34 -> 25
    //   62: astore_1
    //   63: aload_3
    //   64: invokevirtual 45	android/os/Parcel:recycle	()V
    //   67: aload_2
    //   68: invokevirtual 45	android/os/Parcel:recycle	()V
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	ggw
    //   0	73	1	paramfxx	fxx
    //   3	65	2	localParcel1	Parcel
    //   7	57	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	62	finally
    //   18	25	62	finally
    //   25	48	62	finally
  }
  
  /* Error */
  public void a(fxx paramfxx, int paramInt)
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
    //   16: ifnull +51 -> 67
    //   19: aload_1
    //   20: invokeinterface 63 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 66	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: iload_2
    //   33: invokevirtual 70	android/os/Parcel:writeInt	(I)V
    //   36: aload_0
    //   37: getfield 15	ggw:a	Landroid/os/IBinder;
    //   40: bipush 6
    //   42: aload_3
    //   43: aload 4
    //   45: iconst_0
    //   46: invokeinterface 35 5 0
    //   51: pop
    //   52: aload 4
    //   54: invokevirtual 38	android/os/Parcel:readException	()V
    //   57: aload 4
    //   59: invokevirtual 45	android/os/Parcel:recycle	()V
    //   62: aload_3
    //   63: invokevirtual 45	android/os/Parcel:recycle	()V
    //   66: return
    //   67: aconst_null
    //   68: astore_1
    //   69: goto -43 -> 26
    //   72: astore_1
    //   73: aload 4
    //   75: invokevirtual 45	android/os/Parcel:recycle	()V
    //   78: aload_3
    //   79: invokevirtual 45	android/os/Parcel:recycle	()V
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	ggw
    //   0	84	1	paramfxx	fxx
    //   0	84	2	paramInt	int
    //   3	76	3	localParcel1	Parcel
    //   7	67	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	72	finally
    //   19	26	72	finally
    //   26	57	72	finally
  }
  
  public IBinder asBinder()
  {
    return a;
  }
  
  /* Error */
  public gfw b(fxx paramfxx)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   5: astore_3
    //   6: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   9: astore 4
    //   11: aload_3
    //   12: ldc 25
    //   14: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +58 -> 76
    //   21: aload_1
    //   22: invokeinterface 63 1 0
    //   27: astore_1
    //   28: aload_3
    //   29: aload_1
    //   30: invokevirtual 66	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   33: aload_0
    //   34: getfield 15	ggw:a	Landroid/os/IBinder;
    //   37: iconst_2
    //   38: aload_3
    //   39: aload 4
    //   41: iconst_0
    //   42: invokeinterface 35 5 0
    //   47: pop
    //   48: aload 4
    //   50: invokevirtual 38	android/os/Parcel:readException	()V
    //   53: aload 4
    //   55: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   58: astore_1
    //   59: aload_1
    //   60: ifnonnull +21 -> 81
    //   63: aload_2
    //   64: astore_1
    //   65: aload 4
    //   67: invokevirtual 45	android/os/Parcel:recycle	()V
    //   70: aload_3
    //   71: invokevirtual 45	android/os/Parcel:recycle	()V
    //   74: aload_1
    //   75: areturn
    //   76: aconst_null
    //   77: astore_1
    //   78: goto -50 -> 28
    //   81: aload_1
    //   82: ldc 100
    //   84: invokeinterface 51 2 0
    //   89: astore_2
    //   90: aload_2
    //   91: ifnull +18 -> 109
    //   94: aload_2
    //   95: instanceof 102
    //   98: ifeq +11 -> 109
    //   101: aload_2
    //   102: checkcast 102	gfw
    //   105: astore_1
    //   106: goto -41 -> 65
    //   109: new 104	gfy
    //   112: dup
    //   113: aload_1
    //   114: invokespecial 105	gfy:<init>	(Landroid/os/IBinder;)V
    //   117: astore_1
    //   118: goto -53 -> 65
    //   121: astore_1
    //   122: aload 4
    //   124: invokevirtual 45	android/os/Parcel:recycle	()V
    //   127: aload_3
    //   128: invokevirtual 45	android/os/Parcel:recycle	()V
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	ggw
    //   0	133	1	paramfxx	fxx
    //   1	101	2	localIInterface	android.os.IInterface
    //   5	123	3	localParcel1	Parcel
    //   9	114	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   11	17	121	finally
    //   21	28	121	finally
    //   28	59	121	finally
    //   81	90	121	finally
    //   94	106	121	finally
    //   109	118	121	finally
  }
  
  /* Error */
  public gjo b()
  {
    // Byte code:
    //   0: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 25
    //   11: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 15	ggw:a	Landroid/os/IBinder;
    //   18: iconst_5
    //   19: aload_2
    //   20: aload_3
    //   21: iconst_0
    //   22: invokeinterface 35 5 0
    //   27: pop
    //   28: aload_3
    //   29: invokevirtual 38	android/os/Parcel:readException	()V
    //   32: aload_3
    //   33: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   36: astore_1
    //   37: aload_1
    //   38: ifnonnull +15 -> 53
    //   41: aconst_null
    //   42: astore_1
    //   43: aload_3
    //   44: invokevirtual 45	android/os/Parcel:recycle	()V
    //   47: aload_2
    //   48: invokevirtual 45	android/os/Parcel:recycle	()V
    //   51: aload_1
    //   52: areturn
    //   53: aload_1
    //   54: ldc 108
    //   56: invokeinterface 51 2 0
    //   61: astore 4
    //   63: aload 4
    //   65: ifnull +20 -> 85
    //   68: aload 4
    //   70: instanceof 110
    //   73: ifeq +12 -> 85
    //   76: aload 4
    //   78: checkcast 110	gjo
    //   81: astore_1
    //   82: goto -39 -> 43
    //   85: new 112	gjq
    //   88: dup
    //   89: aload_1
    //   90: invokespecial 113	gjq:<init>	(Landroid/os/IBinder;)V
    //   93: astore_1
    //   94: goto -51 -> 43
    //   97: astore_1
    //   98: aload_3
    //   99: invokevirtual 45	android/os/Parcel:recycle	()V
    //   102: aload_2
    //   103: invokevirtual 45	android/os/Parcel:recycle	()V
    //   106: aload_1
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	ggw
    //   36	58	1	localObject1	Object
    //   97	10	1	localObject2	Object
    //   3	100	2	localParcel1	Parcel
    //   7	92	3	localParcel2	Parcel
    //   61	16	4	localIInterface	android.os.IInterface
    // Exception table:
    //   from	to	target	type
    //   8	37	97	finally
    //   53	63	97	finally
    //   68	82	97	finally
    //   85	94	97	finally
  }
  
  /* Error */
  public ggi c(fxx paramfxx)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   5: astore_3
    //   6: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   9: astore 4
    //   11: aload_3
    //   12: ldc 25
    //   14: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +59 -> 77
    //   21: aload_1
    //   22: invokeinterface 63 1 0
    //   27: astore_1
    //   28: aload_3
    //   29: aload_1
    //   30: invokevirtual 66	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   33: aload_0
    //   34: getfield 15	ggw:a	Landroid/os/IBinder;
    //   37: bipush 8
    //   39: aload_3
    //   40: aload 4
    //   42: iconst_0
    //   43: invokeinterface 35 5 0
    //   48: pop
    //   49: aload 4
    //   51: invokevirtual 38	android/os/Parcel:readException	()V
    //   54: aload 4
    //   56: invokevirtual 42	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   59: astore_1
    //   60: aload_1
    //   61: ifnonnull +21 -> 82
    //   64: aload_2
    //   65: astore_1
    //   66: aload 4
    //   68: invokevirtual 45	android/os/Parcel:recycle	()V
    //   71: aload_3
    //   72: invokevirtual 45	android/os/Parcel:recycle	()V
    //   75: aload_1
    //   76: areturn
    //   77: aconst_null
    //   78: astore_1
    //   79: goto -51 -> 28
    //   82: aload_1
    //   83: ldc 117
    //   85: invokeinterface 51 2 0
    //   90: astore_2
    //   91: aload_2
    //   92: ifnull +18 -> 110
    //   95: aload_2
    //   96: instanceof 119
    //   99: ifeq +11 -> 110
    //   102: aload_2
    //   103: checkcast 119	ggi
    //   106: astore_1
    //   107: goto -41 -> 66
    //   110: new 121	ggk
    //   113: dup
    //   114: aload_1
    //   115: invokespecial 122	ggk:<init>	(Landroid/os/IBinder;)V
    //   118: astore_1
    //   119: goto -53 -> 66
    //   122: astore_1
    //   123: aload 4
    //   125: invokevirtual 45	android/os/Parcel:recycle	()V
    //   128: aload_3
    //   129: invokevirtual 45	android/os/Parcel:recycle	()V
    //   132: aload_1
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	ggw
    //   0	134	1	paramfxx	fxx
    //   1	102	2	localIInterface	android.os.IInterface
    //   5	124	3	localParcel1	Parcel
    //   9	115	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   11	17	122	finally
    //   21	28	122	finally
    //   28	60	122	finally
    //   82	91	122	finally
    //   95	107	122	finally
    //   110	119	122	finally
  }
}

/* Location:
 * Qualified Name:     ggw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */