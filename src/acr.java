import android.content.ContentResolver;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build.VERSION;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.regex.Pattern;

public final class acr
{
  static final Pattern a = Pattern.compile("^(?:.*;)?base64,.*");
  public static final int b = act.a;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      b = act.c;
      return;
    }
    if (abn.a >= 32L)
    {
      b = act.c;
      return;
    }
    if (abn.a >= 24L)
    {
      b = act.b;
      return;
    }
  }
  
  public static aco a(ContentResolver paramContentResolver, Uri paramUri, int paramInt)
  {
    localaco = new aco();
    if ("data".equals(paramUri.getScheme())) {}
    for (paramContentResolver = new acs(paramContentResolver, paramUri);; paramContentResolver = new acu(paramContentResolver, paramUri)) {
      try
      {
        paramUri = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        a(paramContentResolver, paramUri);
        paramUri = new Point(outWidth, outHeight);
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        inSampleSize = Math.max(x / paramInt, y / paramInt);
        b = a(paramContentResolver, localOptions);
        c = 0;
        return localaco;
      }
      catch (IOException paramContentResolver)
      {
        c = 1;
        return localaco;
      }
      catch (SecurityException paramContentResolver)
      {
        for (;;)
        {
          c = 1;
        }
      }
      catch (IllegalArgumentException paramContentResolver)
      {
        for (;;) {}
      }
      catch (FileNotFoundException paramContentResolver)
      {
        for (;;) {}
      }
    }
  }
  
  /* Error */
  private static android.graphics.Bitmap a(acu paramacu, BitmapFactory.Options paramOptions)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 124	acu:a	()Ljava/io/InputStream;
    //   4: astore_3
    //   5: aload_3
    //   6: astore 4
    //   8: aload_3
    //   9: ldc2_w 125
    //   12: invokestatic 131	aal:a	(Ljava/io/InputStream;J)I
    //   15: istore_2
    //   16: aload_3
    //   17: ifnull +10 -> 27
    //   20: aload_3
    //   21: astore 4
    //   23: aload_3
    //   24: invokevirtual 136	java/io/InputStream:close	()V
    //   27: aload_3
    //   28: astore 4
    //   30: aload_0
    //   31: invokevirtual 124	acu:a	()Ljava/io/InputStream;
    //   34: astore_0
    //   35: aload_0
    //   36: astore_3
    //   37: aload_0
    //   38: aconst_null
    //   39: aload_1
    //   40: invokestatic 142	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   43: astore 4
    //   45: aload_0
    //   46: ifnull +58 -> 104
    //   49: aload 4
    //   51: ifnonnull +53 -> 104
    //   54: aload_0
    //   55: astore_3
    //   56: aload_1
    //   57: getfield 83	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   60: ifne +44 -> 104
    //   63: aload_0
    //   64: astore_3
    //   65: new 144	java/lang/UnsupportedOperationException
    //   68: dup
    //   69: ldc -110
    //   71: invokespecial 149	java/lang/UnsupportedOperationException:<init>	(Ljava/lang/String;)V
    //   74: athrow
    //   75: astore_1
    //   76: aload_0
    //   77: astore_3
    //   78: aload_1
    //   79: astore_0
    //   80: aload_3
    //   81: astore 4
    //   83: ldc -105
    //   85: ldc -103
    //   87: aload_0
    //   88: invokestatic 159	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   91: pop
    //   92: aload_3
    //   93: ifnull +7 -> 100
    //   96: aload_3
    //   97: invokevirtual 136	java/io/InputStream:close	()V
    //   100: aconst_null
    //   101: astore_1
    //   102: aload_1
    //   103: areturn
    //   104: aload 4
    //   106: ifnull +65 -> 171
    //   109: iload_2
    //   110: ifeq +61 -> 171
    //   113: aload_0
    //   114: astore_3
    //   115: new 161	android/graphics/Matrix
    //   118: dup
    //   119: invokespecial 162	android/graphics/Matrix:<init>	()V
    //   122: astore_1
    //   123: aload_0
    //   124: astore_3
    //   125: aload_1
    //   126: iload_2
    //   127: i2f
    //   128: invokevirtual 166	android/graphics/Matrix:postRotate	(F)Z
    //   131: pop
    //   132: aload_0
    //   133: astore_3
    //   134: aload 4
    //   136: iconst_0
    //   137: iconst_0
    //   138: aload 4
    //   140: invokevirtual 172	android/graphics/Bitmap:getWidth	()I
    //   143: aload 4
    //   145: invokevirtual 175	android/graphics/Bitmap:getHeight	()I
    //   148: aload_1
    //   149: iconst_1
    //   150: invokestatic 179	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   153: astore_1
    //   154: aload_1
    //   155: astore_3
    //   156: aload_3
    //   157: astore_1
    //   158: aload_0
    //   159: ifnull -57 -> 102
    //   162: aload_0
    //   163: invokevirtual 136	java/io/InputStream:close	()V
    //   166: aload_3
    //   167: areturn
    //   168: astore_0
    //   169: aload_3
    //   170: areturn
    //   171: aload 4
    //   173: astore_1
    //   174: aload_0
    //   175: ifnull -73 -> 102
    //   178: aload_0
    //   179: invokevirtual 136	java/io/InputStream:close	()V
    //   182: aload 4
    //   184: areturn
    //   185: astore_0
    //   186: aload 4
    //   188: areturn
    //   189: astore_1
    //   190: aconst_null
    //   191: astore_0
    //   192: aload_0
    //   193: astore_3
    //   194: ldc -105
    //   196: ldc -75
    //   198: aload_1
    //   199: invokestatic 159	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   202: pop
    //   203: aload_0
    //   204: ifnull +7 -> 211
    //   207: aload_0
    //   208: invokevirtual 136	java/io/InputStream:close	()V
    //   211: aconst_null
    //   212: areturn
    //   213: astore_0
    //   214: aconst_null
    //   215: astore_3
    //   216: aload_3
    //   217: ifnull +7 -> 224
    //   220: aload_3
    //   221: invokevirtual 136	java/io/InputStream:close	()V
    //   224: aload_0
    //   225: athrow
    //   226: astore_0
    //   227: goto -127 -> 100
    //   230: astore_0
    //   231: goto -20 -> 211
    //   234: astore_1
    //   235: goto -11 -> 224
    //   238: astore_0
    //   239: aload 4
    //   241: astore_3
    //   242: goto -26 -> 216
    //   245: astore_0
    //   246: goto -30 -> 216
    //   249: astore_1
    //   250: aload_3
    //   251: astore_0
    //   252: goto -60 -> 192
    //   255: astore_1
    //   256: goto -64 -> 192
    //   259: astore_0
    //   260: aconst_null
    //   261: astore_3
    //   262: goto -182 -> 80
    //   265: astore_0
    //   266: goto -186 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	269	0	paramacu	acu
    //   0	269	1	paramOptions	BitmapFactory.Options
    //   15	112	2	i	int
    //   4	258	3	localObject1	Object
    //   6	234	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   37	45	75	java/lang/OutOfMemoryError
    //   56	63	75	java/lang/OutOfMemoryError
    //   65	75	75	java/lang/OutOfMemoryError
    //   115	123	75	java/lang/OutOfMemoryError
    //   125	132	75	java/lang/OutOfMemoryError
    //   134	154	75	java/lang/OutOfMemoryError
    //   162	166	168	java/io/IOException
    //   178	182	185	java/io/IOException
    //   0	5	189	java/io/IOException
    //   0	5	213	finally
    //   96	100	226	java/io/IOException
    //   207	211	230	java/io/IOException
    //   220	224	234	java/io/IOException
    //   8	16	238	finally
    //   23	27	238	finally
    //   30	35	238	finally
    //   83	92	238	finally
    //   37	45	245	finally
    //   56	63	245	finally
    //   65	75	245	finally
    //   115	123	245	finally
    //   125	132	245	finally
    //   134	154	245	finally
    //   194	203	245	finally
    //   8	16	249	java/io/IOException
    //   23	27	249	java/io/IOException
    //   30	35	249	java/io/IOException
    //   37	45	255	java/io/IOException
    //   56	63	255	java/io/IOException
    //   65	75	255	java/io/IOException
    //   115	123	255	java/io/IOException
    //   125	132	255	java/io/IOException
    //   134	154	255	java/io/IOException
    //   0	5	259	java/lang/OutOfMemoryError
    //   8	16	265	java/lang/OutOfMemoryError
    //   23	27	265	java/lang/OutOfMemoryError
    //   30	35	265	java/lang/OutOfMemoryError
  }
}

/* Location:
 * Qualified Name:     acr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */