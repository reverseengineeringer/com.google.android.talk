import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class eye
{
  public static exb a;
  private static final hbu b = hbu.a;
  private static MediaMetadataRetriever c;
  private static Boolean d;
  private static final Object e = new Object();
  
  public static int a(ContentResolver paramContentResolver, Uri paramUri)
  {
    if (b(paramUri)) {
      label77:
      for (;;)
      {
        try
        {
          paramContentResolver = paramContentResolver.query(paramUri, new String[] { "orientation" }, null, null, null);
          if (paramContentResolver != null) {}
          int i = 0;
        }
        finally
        {
          try
          {
            if (!paramContentResolver.moveToFirst()) {
              break label77;
            }
            i = paramContentResolver.getInt(0);
            if (paramContentResolver != null) {
              paramContentResolver.close();
            }
            return i;
          }
          finally {}
          paramUri = finally;
          paramContentResolver = null;
          if (paramContentResolver != null) {
            paramContentResolver.close();
          }
        }
      }
    }
    return 0;
  }
  
  public static Bitmap a(int paramInt)
  {
    Bitmap localBitmap2 = BitmapFactory.decodeResource(aal.oJ.getResources(), paramInt);
    Bitmap localBitmap1 = a(localBitmap2);
    b(localBitmap2);
    localBitmap2 = localBitmap1.copy(localBitmap1.getConfig(), false);
    b(localBitmap1);
    return localBitmap2;
  }
  
  public static Bitmap a(Bitmap paramBitmap)
  {
    Bitmap localBitmap = null;
    Object localObject = paramBitmap;
    if (paramBitmap.getWidth() != paramBitmap.getHeight())
    {
      i = Math.min(paramBitmap.getWidth(), paramBitmap.getHeight());
      localBitmap = a().b(i, i);
      new Canvas(localBitmap).drawBitmap(paramBitmap, new Rect((paramBitmap.getWidth() - i) / 2, (paramBitmap.getHeight() - i) / 2, (paramBitmap.getWidth() + i) / 2, (paramBitmap.getHeight() + i) / 2), new Rect(0, 0, i, i), new Paint());
      localObject = localBitmap;
    }
    int i = ((Bitmap)localObject).getWidth();
    paramBitmap = a().b(i, i);
    Canvas localCanvas = new Canvas(paramBitmap);
    localObject = new BitmapShader((Bitmap)localObject, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setShader((Shader)localObject);
    localCanvas.drawRoundRect(new RectF(0.0F, 0.0F, i, i), i, i, localPaint);
    if (localBitmap != null) {
      a().a(localBitmap);
    }
    return paramBitmap;
  }
  
  public static Bitmap a(Uri paramUri)
  {
    if (c == null) {
      c = new MediaMetadataRetriever();
    }
    try
    {
      c.setDataSource(aal.oJ, paramUri);
      paramUri = c.getFrameAtTime(-1L);
      return paramUri;
    }
    catch (Exception paramUri) {}
    return null;
  }
  
  public static exb a()
  {
    if (a == null) {}
    synchronized (e)
    {
      if (a == null)
      {
        aal.oJ.getResources();
        a = new exb(aal.oJ, bfq.a());
        b.a(a);
      }
      return a;
    }
  }
  
  public static String a(File paramFile, String paramString1, String paramString2)
  {
    paramString1 = MimeTypeMap.getSingleton().getExtensionFromMimeType(paramString1);
    if (TextUtils.isEmpty(paramString2))
    {
      paramString2 = new Date(System.currentTimeMillis());
      int i = StressMode.bD;
      return b(paramFile, new SimpleDateFormat(aal.oJ.getString(i), Locale.US).format(paramString2), paramString1);
    }
    return String.valueOf(paramString2).length() + 1 + String.valueOf(paramString1).length() + paramString2 + "." + paramString1;
  }
  
  public static boolean a(Context paramContext)
  {
    if (d != null) {
      return aal.a(d, false);
    }
    paramContext = (ActivityManager)paramContext.getSystemService("activity");
    int i = paramContext.getMemoryClass();
    if (Build.VERSION.SDK_INT >= 19) {}
    for (boolean bool = paramContext.isLowRamDevice();; bool = false)
    {
      if ((i >= 24) && (!bool)) {}
      for (bool = true;; bool = false)
      {
        paramContext = Boolean.valueOf(bool);
        d = paramContext;
        return aal.a(paramContext, false);
      }
    }
  }
  
  public static byte[] a(Bitmap paramBitmap, int paramInt)
  {
    Object localObject1 = null;
    int j = 0;
    int i = 0;
    while (i == 0) {
      try
      {
        Object localObject2 = new ByteArrayOutputStream();
        paramBitmap.compress(Bitmap.CompressFormat.JPEG, paramInt, (OutputStream)localObject2);
        localObject2 = ((ByteArrayOutputStream)localObject2).toByteArray();
        localObject1 = localObject2;
        i = 1;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        ezi.d("Babel", "OutOfMemory converting bitmap to bytes.", new Object[0]);
        j += 1;
        if (j <= 1)
        {
          b.a();
        }
        else
        {
          ezi.d("Babel", "Failed to convert bitmap to bytes. Out of Memory.", new Object[0]);
          i = 1;
        }
      }
    }
    return (byte[])localObject1;
  }
  
  public static byte[] a(InputStream paramInputStream)
  {
    Object localObject1 = null;
    Object localObject5 = null;
    int j = 0;
    if (paramInputStream == null) {
      return (byte[])localObject5;
    }
    byte[] arrayOfByte2 = new byte[''];
    int i = 0;
    for (;;)
    {
      localObject5 = localObject1;
      if (i != 0) {
        break;
      }
      try
      {
        localObject5 = new ByteArrayOutputStream();
        for (;;)
        {
          k = paramInputStream.read(arrayOfByte2, 0, 128);
          if (k == -1) {
            break;
          }
          ((ByteArrayOutputStream)localObject5).write(arrayOfByte2, 0, k);
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        ezi.d("Babel", "OutOfMemory trying to create inputStream to bytes in ImageUtils.", new Object[0]);
        int m = j + 1;
        if (m <= 1) {
          b.a();
        }
        for (int k = i;; k = 1)
        {
          j = m;
          i = k;
          if (paramInputStream == null) {
            break;
          }
          try
          {
            paramInputStream.close();
            j = m;
            i = k;
          }
          catch (IOException localIOException2)
          {
            ezi.d("Babel", "Error trying to close input stream", localIOException2);
            j = m;
            i = k;
          }
          break;
          byte[] arrayOfByte1 = localIOException2.toByteArray();
          if (paramInputStream == null) {
            break label285;
          }
          try
          {
            paramInputStream.close();
            localObject1 = arrayOfByte1;
            i = 1;
          }
          catch (IOException localIOException1)
          {
            ezi.d("Babel", "Error trying to close input stream", localIOException1);
            Object localObject2 = arrayOfByte1;
            i = 1;
          }
          break;
          ezi.d("Babel", "Getting bitmap from uri failed in ImageUtils. Out of Memory.", new Object[0]);
        }
      }
      catch (IOException localIOException3)
      {
        ezi.d("Babel", "Error trying to convert input stream into bytes in ImageUtils: ", localIOException3);
        if (paramInputStream != null)
        {
          try
          {
            paramInputStream.close();
            i = 1;
          }
          catch (IOException localIOException4)
          {
            ezi.d("Babel", "Error trying to close input stream", localIOException4);
            i = 1;
          }
          continue;
        }
      }
      finally
      {
        if (paramInputStream != null) {}
        try
        {
          paramInputStream.close();
          throw ((Throwable)localObject3);
        }
        catch (IOException paramInputStream)
        {
          for (;;)
          {
            ezi.d("Babel", "Error trying to close input stream", paramInputStream);
          }
        }
        i = 1;
      }
      continue;
      label285:
      Object localObject4 = localIOException4;
      i = 1;
    }
  }
  
  /* Error */
  public static String b(ContentResolver paramContentResolver, Uri paramUri)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 32	eye:b	(Landroid/net/Uri;)Z
    //   4: ifeq +91 -> 95
    //   7: aload_0
    //   8: aload_1
    //   9: iconst_1
    //   10: anewarray 34	java/lang/String
    //   13: dup
    //   14: iconst_0
    //   15: ldc_w 355
    //   18: aastore
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 42	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull +97 -> 124
    //   30: aload_3
    //   31: invokeinterface 48 1 0
    //   36: ifeq +88 -> 124
    //   39: aload_3
    //   40: iconst_0
    //   41: invokeinterface 356 2 0
    //   46: astore_2
    //   47: aload_2
    //   48: astore_0
    //   49: aload_3
    //   50: ifnull +11 -> 61
    //   53: aload_3
    //   54: invokeinterface 55 1 0
    //   59: aload_2
    //   60: astore_0
    //   61: aload_0
    //   62: astore_2
    //   63: aload_0
    //   64: ifnonnull +14 -> 78
    //   67: aload_1
    //   68: invokevirtual 359	android/net/Uri:toString	()Ljava/lang/String;
    //   71: ldc_w 361
    //   74: invokestatic 366	aen:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   77: astore_2
    //   78: aload_2
    //   79: areturn
    //   80: astore_0
    //   81: aconst_null
    //   82: astore_3
    //   83: aload_3
    //   84: ifnull +9 -> 93
    //   87: aload_3
    //   88: invokeinterface 55 1 0
    //   93: aload_0
    //   94: athrow
    //   95: aload_1
    //   96: invokevirtual 359	android/net/Uri:toString	()Ljava/lang/String;
    //   99: ldc_w 368
    //   102: invokevirtual 372	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   105: ifeq +14 -> 119
    //   108: ldc_w 374
    //   111: astore_0
    //   112: goto -51 -> 61
    //   115: astore_0
    //   116: goto -33 -> 83
    //   119: aconst_null
    //   120: astore_0
    //   121: goto -60 -> 61
    //   124: aconst_null
    //   125: astore_2
    //   126: goto -79 -> 47
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	129	0	paramContentResolver	ContentResolver
    //   0	129	1	paramUri	Uri
    //   46	80	2	localObject	Object
    //   25	63	3	localCursor	Cursor
    // Exception table:
    //   from	to	target	type
    //   7	26	80	finally
    //   30	47	115	finally
  }
  
  private static String b(File paramFile, String paramString1, String paramString2)
  {
    String str = String.valueOf(paramString1).length() + 1 + String.valueOf(paramString2).length() + paramString1 + "." + paramString2;
    if (!new File(paramFile, str).exists())
    {
      paramString1 = str;
      return paramString1;
    }
    str = String.valueOf(paramString1).length() + 6 + String.valueOf(paramString2).length() + paramString1 + " (%d)." + paramString2;
    int i = 1;
    for (;;)
    {
      if (i > 99) {
        break label160;
      }
      paramString2 = String.format(Locale.US, str, new Object[] { Integer.valueOf(i) });
      paramString1 = paramString2;
      if (!new File(paramFile, paramString2).exists()) {
        break;
      }
      i += 1;
    }
    label160:
    ezi.e("Babel", "Too many duplicate final names. Aborted trying to create new file name", new Object[0]);
    return null;
  }
  
  private static void b(Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      a().a(paramBitmap);
    }
  }
  
  private static boolean b(Uri paramUri)
  {
    String str = paramUri.getAuthority();
    return (TextUtils.equals("content", paramUri.getScheme())) && ((TextUtils.equals("media", str)) || (TextUtils.equals("com.android.providers.media.documents", str)));
  }
}

/* Location:
 * Qualified Name:     eye
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */