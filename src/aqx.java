import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;

public final class aqx
  implements ajc<Bitmap>
{
  public static final aix<Integer> a = aix.a("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", Integer.valueOf(90));
  public static final aix<Bitmap.CompressFormat> b = new aix("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, aix.a);
  
  /* Error */
  private static boolean a(alr<Bitmap> paramalr, java.io.File paramFile, aja paramaja)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface 52 1 0
    //   6: checkcast 54	android/graphics/Bitmap
    //   9: astore 10
    //   11: invokestatic 59	avm:a	()J
    //   14: lstore 6
    //   16: aload_2
    //   17: getstatic 40	aqx:b	Laix;
    //   20: invokevirtual 64	aja:a	(Laix;)Ljava/lang/Object;
    //   23: checkcast 66	android/graphics/Bitmap$CompressFormat
    //   26: astore_0
    //   27: aload_0
    //   28: ifnull +127 -> 155
    //   31: aload_2
    //   32: getstatic 29	aqx:a	Laix;
    //   35: invokevirtual 64	aja:a	(Laix;)Ljava/lang/Object;
    //   38: checkcast 18	java/lang/Integer
    //   41: invokevirtual 70	java/lang/Integer:intValue	()I
    //   44: istore 5
    //   46: iconst_0
    //   47: istore 9
    //   49: new 72	java/io/FileOutputStream
    //   52: dup
    //   53: aload_1
    //   54: invokespecial 75	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   57: astore_1
    //   58: aload 10
    //   60: aload_0
    //   61: iload 5
    //   63: aload_1
    //   64: invokevirtual 79	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   67: pop
    //   68: aload_1
    //   69: invokevirtual 84	java/io/OutputStream:close	()V
    //   72: iconst_1
    //   73: istore 8
    //   75: aload_1
    //   76: invokevirtual 84	java/io/OutputStream:close	()V
    //   79: ldc 86
    //   81: iconst_2
    //   82: invokestatic 92	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   85: ifeq +67 -> 152
    //   88: aload_0
    //   89: invokestatic 97	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   92: astore_0
    //   93: aload 10
    //   95: invokestatic 102	avq:a	(Landroid/graphics/Bitmap;)I
    //   98: istore 5
    //   100: lload 6
    //   102: invokestatic 105	avm:a	(J)D
    //   105: dstore_3
    //   106: new 107	java/lang/StringBuilder
    //   109: dup
    //   110: aload_0
    //   111: invokestatic 97	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   114: invokevirtual 110	java/lang/String:length	()I
    //   117: bipush 70
    //   119: iadd
    //   120: invokespecial 113	java/lang/StringBuilder:<init>	(I)V
    //   123: ldc 115
    //   125: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: aload_0
    //   129: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc 121
    //   134: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: iload 5
    //   139: invokevirtual 124	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   142: ldc 126
    //   144: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: dload_3
    //   148: invokevirtual 129	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   151: pop
    //   152: iload 8
    //   154: ireturn
    //   155: aload 10
    //   157: invokevirtual 133	android/graphics/Bitmap:hasAlpha	()Z
    //   160: ifeq +10 -> 170
    //   163: getstatic 137	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   166: astore_0
    //   167: goto -136 -> 31
    //   170: getstatic 140	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   173: astore_0
    //   174: goto -143 -> 31
    //   177: astore_1
    //   178: aconst_null
    //   179: astore_1
    //   180: iload 9
    //   182: istore 8
    //   184: aload_1
    //   185: ifnull -106 -> 79
    //   188: aload_1
    //   189: invokevirtual 84	java/io/OutputStream:close	()V
    //   192: iload 9
    //   194: istore 8
    //   196: goto -117 -> 79
    //   199: astore_1
    //   200: iload 9
    //   202: istore 8
    //   204: goto -125 -> 79
    //   207: astore_0
    //   208: aconst_null
    //   209: astore_1
    //   210: aload_1
    //   211: ifnull +7 -> 218
    //   214: aload_1
    //   215: invokevirtual 84	java/io/OutputStream:close	()V
    //   218: aload_0
    //   219: athrow
    //   220: astore_1
    //   221: goto -142 -> 79
    //   224: astore_1
    //   225: goto -7 -> 218
    //   228: astore_0
    //   229: goto -19 -> 210
    //   232: astore_2
    //   233: goto -53 -> 180
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	paramalr	alr<Bitmap>
    //   0	236	1	paramFile	java.io.File
    //   0	236	2	paramaja	aja
    //   105	43	3	d	double
    //   44	94	5	i	int
    //   14	87	6	l	long
    //   73	130	8	bool1	boolean
    //   47	154	9	bool2	boolean
    //   9	147	10	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   49	58	177	java/io/IOException
    //   188	192	199	java/io/IOException
    //   49	58	207	finally
    //   75	79	220	java/io/IOException
    //   214	218	224	java/io/IOException
    //   58	72	228	finally
    //   58	72	232	java/io/IOException
  }
  
  public ait a(aja paramaja)
  {
    return ait.b;
  }
}

/* Location:
 * Qualified Name:     aqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */