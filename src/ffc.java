import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class ffc
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<ffc> CREATOR = new ffd();
  private final String a;
  private final Bitmap b;
  
  protected ffc(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = ((Bitmap)paramParcel.readParcelable(Bitmap.class.getClassLoader()));
  }
  
  ffc(String paramString, Bitmap paramBitmap)
  {
    a = paramString;
    b = paramBitmap;
  }
  
  /* Error */
  public int a(android.content.Context paramContext, bcg parambcg)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 53
    //   3: invokestatic 58	ilh:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   6: checkcast 53	ffi
    //   9: aload_1
    //   10: invokeinterface 61 2 0
    //   15: astore_2
    //   16: aload_2
    //   17: invokevirtual 66	ffe:a	()Lfic;
    //   20: getstatic 72	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   23: invokeinterface 77 2 0
    //   28: pop
    //   29: aload_2
    //   30: invokevirtual 66	ffe:a	()Lfic;
    //   33: invokeinterface 81 1 0
    //   38: ifne +21 -> 59
    //   41: ldc 83
    //   43: ldc 85
    //   45: invokestatic 90	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   48: pop
    //   49: getstatic 96	bco:d	I
    //   52: istore_3
    //   53: aload_2
    //   54: invokevirtual 98	ffe:e	()V
    //   57: iload_3
    //   58: ireturn
    //   59: aload_0
    //   60: getfield 35	ffc:a	Ljava/lang/String;
    //   63: invokestatic 104	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   66: astore_1
    //   67: aload_1
    //   68: invokevirtual 108	java/lang/String:length	()I
    //   71: ifeq +75 -> 146
    //   74: ldc 110
    //   76: aload_1
    //   77: invokevirtual 114	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   80: astore_1
    //   81: aload_1
    //   82: invokestatic 119	grw:a	(Ljava/lang/String;)Lgrw;
    //   85: astore_1
    //   86: aload_1
    //   87: invokevirtual 122	grw:b	()Lgrp;
    //   90: astore 4
    //   92: aload 4
    //   94: ldc 124
    //   96: aload_0
    //   97: getfield 35	ffc:a	Ljava/lang/String;
    //   100: invokevirtual 129	grp:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   103: aload 4
    //   105: ldc -125
    //   107: aload_0
    //   108: getfield 49	ffc:b	Landroid/graphics/Bitmap;
    //   111: invokestatic 136	aal:a	(Landroid/graphics/Bitmap;)Lcom/google/android/gms/wearable/Asset;
    //   114: invokevirtual 139	grp:a	(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V
    //   117: aload_2
    //   118: invokevirtual 142	ffe:b	()Lgrg;
    //   121: aload_2
    //   122: invokevirtual 66	ffe:a	()Lfic;
    //   125: aload_1
    //   126: invokevirtual 146	grw:c	()Lcom/google/android/gms/wearable/PutDataRequest;
    //   129: invokevirtual 151	grg:a	(Lfic;Lcom/google/android/gms/wearable/PutDataRequest;)Lfij;
    //   132: invokeinterface 156 1 0
    //   137: pop
    //   138: aload_2
    //   139: invokevirtual 98	ffe:e	()V
    //   142: getstatic 158	bco:a	I
    //   145: ireturn
    //   146: new 100	java/lang/String
    //   149: dup
    //   150: ldc 110
    //   152: invokespecial 161	java/lang/String:<init>	(Ljava/lang/String;)V
    //   155: astore_1
    //   156: goto -75 -> 81
    //   159: astore_1
    //   160: aload_2
    //   161: invokevirtual 98	ffe:e	()V
    //   164: aload_1
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	this	ffc
    //   0	166	1	paramContext	android.content.Context
    //   0	166	2	parambcg	bcg
    //   52	6	3	i	int
    //   90	14	4	localgrp	grp
    // Exception table:
    //   from	to	target	type
    //   16	53	159	finally
    //   59	81	159	finally
    //   81	138	159	finally
    //   146	156	159	finally
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeParcelable(b, 0);
  }
}

/* Location:
 * Qualified Name:     ffc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */