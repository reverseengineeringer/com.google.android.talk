import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;

public final class arm
{
  public static final aix<ais> a = aix.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", ais.c);
  public static final aix<are> b = aix.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", are.c);
  private static final aro c = new arn();
  private static final Set<ImageHeaderParser.ImageType> d = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
  private static final Queue<BitmapFactory.Options> e = avq.a(0);
  private final amd f;
  private final DisplayMetrics g;
  private final amg h;
  
  public arm(DisplayMetrics paramDisplayMetrics, amd paramamd, amg paramamg)
  {
    g = ((DisplayMetrics)aal.a(paramDisplayMetrics, "Argument must not be null"));
    f = ((amd)aal.a(paramamd, "Argument must not be null"));
    h = ((amg)aal.a(paramamg, "Argument must not be null"));
  }
  
  private int a(InputStream paramInputStream)
  {
    paramInputStream.mark(5242880);
    try
    {
      int i = new ImageHeaderParser(paramInputStream, h).c();
      paramInputStream.reset();
      return i;
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      paramInputStream.reset();
      return -1;
    }
    finally
    {
      localObject = finally;
      paramInputStream.reset();
      throw ((Throwable)localObject);
    }
  }
  
  private Bitmap.Config a(InputStream paramInputStream, ais paramais)
  {
    if ((paramais == ais.a) || (Build.VERSION.SDK_INT == 16)) {
      return Bitmap.Config.ARGB_8888;
    }
    int i = 0;
    paramInputStream.mark(5242880);
    try
    {
      boolean bool = new ImageHeaderParser(paramInputStream, h).a();
      i = bool;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        if (Log.isLoggable("Downsampler", 3))
        {
          String str = String.valueOf("Cannot determine whether the image has alpha or not from header, format ");
          paramais = String.valueOf(paramais);
          new StringBuilder(String.valueOf(str).length() + 0 + String.valueOf(paramais).length()).append(str).append(paramais);
        }
        paramInputStream.reset();
      }
    }
    finally
    {
      paramInputStream.reset();
    }
    if (i != 0) {
      return Bitmap.Config.ARGB_8888;
    }
    return Bitmap.Config.RGB_565;
  }
  
  private static Bitmap a(InputStream paramInputStream, BitmapFactory.Options paramOptions, aro paramaro)
  {
    if (inJustDecodeBounds) {
      paramInputStream.mark(5242880);
    }
    for (;;)
    {
      i = outWidth;
      j = outHeight;
      paramaro = outMimeType;
      arz.a.lock();
      try
      {
        localObject = BitmapFactory.decodeStream(paramInputStream, null, paramOptions);
        arz.a.unlock();
        if (inJustDecodeBounds) {
          paramInputStream.reset();
        }
        return (Bitmap)localObject;
      }
      catch (IllegalArgumentException paramInputStream)
      {
        Object localObject = String.valueOf("Exception decoding bitmap, outWidth: ");
        paramOptions = String.valueOf(b(paramOptions));
        throw new IOException(String.valueOf(localObject).length() + 62 + String.valueOf(paramaro).length() + String.valueOf(paramOptions).length() + (String)localObject + i + ", outHeight: " + j + ", outMimeType: " + paramaro + ", inBitmap: " + paramOptions, paramInputStream);
      }
      finally
      {
        arz.a.unlock();
      }
      paramaro.a();
    }
  }
  
  private static String a(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return null;
    }
    int i;
    if (Build.VERSION.SDK_INT >= 19) {
      i = paramBitmap.getAllocationByteCount();
    }
    for (String str = 14 + " (" + i + ")";; str = "")
    {
      i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      paramBitmap = String.valueOf(paramBitmap.getConfig());
      return String.valueOf(paramBitmap).length() + 26 + String.valueOf(str).length() + "[" + i + "x" + j + "] " + paramBitmap + str;
    }
  }
  
  public static boolean a()
  {
    return true;
  }
  
  private static boolean a(BitmapFactory.Options paramOptions)
  {
    return (inTargetDensity > 0) && (inDensity > 0) && (inTargetDensity != inDensity);
  }
  
  private static String b(BitmapFactory.Options paramOptions)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return a(inBitmap);
    }
    return null;
  }
  
  public static boolean b()
  {
    return true;
  }
  
  private boolean b(InputStream paramInputStream)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return true;
    }
    paramInputStream.mark(5242880);
    try
    {
      ImageHeaderParser.ImageType localImageType = new ImageHeaderParser(paramInputStream, h).b();
      boolean bool = d.contains(localImageType);
      paramInputStream.reset();
      return bool;
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      paramInputStream.reset();
      return false;
    }
    finally
    {
      localObject = finally;
      paramInputStream.reset();
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private static BitmapFactory.Options c()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 88	arm:e	Ljava/util/Queue;
    //   6: astore_0
    //   7: aload_0
    //   8: monitorenter
    //   9: getstatic 88	arm:e	Ljava/util/Queue;
    //   12: invokeinterface 300 1 0
    //   17: checkcast 184	android/graphics/BitmapFactory$Options
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: astore_0
    //   25: aload_1
    //   26: ifnonnull +15 -> 41
    //   29: new 184	android/graphics/BitmapFactory$Options
    //   32: dup
    //   33: invokespecial 301	android/graphics/BitmapFactory$Options:<init>	()V
    //   36: astore_0
    //   37: aload_0
    //   38: invokestatic 304	arm:d	(Landroid/graphics/BitmapFactory$Options;)V
    //   41: ldc 2
    //   43: monitorexit
    //   44: aload_0
    //   45: areturn
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    //   51: astore_0
    //   52: ldc 2
    //   54: monitorexit
    //   55: aload_0
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   51	5	0	localObject2	Object
    //   20	6	1	localOptions	BitmapFactory.Options
    //   46	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	23	46	finally
    //   47	49	46	finally
    //   3	9	51	finally
    //   29	41	51	finally
    //   49	51	51	finally
  }
  
  private static void c(BitmapFactory.Options paramOptions)
  {
    d(paramOptions);
    synchronized (e)
    {
      e.offer(paramOptions);
      return;
    }
  }
  
  private static void d(BitmapFactory.Options paramOptions)
  {
    inTempStorage = null;
    inDither = false;
    inScaled = false;
    inSampleSize = 1;
    inPreferredConfig = null;
    inJustDecodeBounds = false;
    inDensity = 0;
    inTargetDensity = 0;
    outWidth = 0;
    outHeight = 0;
    outMimeType = null;
    if (11 <= Build.VERSION.SDK_INT)
    {
      inBitmap = null;
      inMutable = true;
    }
  }
  
  public alr<Bitmap> a(InputStream paramInputStream, int paramInt1, int paramInt2, aja paramaja)
  {
    return a(paramInputStream, paramInt1, paramInt2, paramaja, c);
  }
  
  public alr<Bitmap> a(InputStream paramInputStream, int paramInt1, int paramInt2, aja paramaja, aro paramaro)
  {
    if (!paramInputStream.markSupported()) {
      throw new IllegalArgumentException("You must provide an InputStream that supports mark()");
    }
    byte[] arrayOfByte = h.a(65536);
    BitmapFactory.Options localOptions = c();
    inTempStorage = arrayOfByte;
    Object localObject1 = (ais)paramaja.a(a);
    Object localObject2 = (are)paramaja.a(b);
    for (;;)
    {
      int m;
      int n;
      int i;
      try
      {
        inJustDecodeBounds = true;
        a(paramInputStream, localOptions, paramaro);
        inJustDecodeBounds = false;
        paramaja = new int[2];
        paramaja[0] = outWidth;
        paramaja[1] = outHeight;
        m = paramaja[0];
        n = paramaja[1];
        paramaja = outMimeType;
        i2 = a(paramInputStream);
        k = arz.a(a(paramInputStream));
        inPreferredConfig = a(paramInputStream, (ais)localObject1);
        if (inPreferredConfig == Bitmap.Config.ARGB_8888) {
          break label1318;
        }
        inDither = true;
      }
      finally
      {
        int i2;
        c(localOptions);
        h.a(arrayOfByte);
      }
      localObject1 = f;
      if (((inSampleSize == 1) || (19 <= Build.VERSION.SDK_INT)) && (b(paramInputStream)))
      {
        if (!a(localOptions)) {
          break label1312;
        }
        f1 = inTargetDensity / inDensity;
        i = inSampleSize;
        j = (int)Math.ceil(m / i);
        k = (int)Math.ceil(n / i);
        j = Math.round(j * f1);
        k = Math.round(k * f1);
        if (Log.isLoggable("Downsampler", 2))
        {
          i1 = inTargetDensity;
          i3 = inDensity;
          new StringBuilder(192).append("Calculated target [").append(j).append("x").append(k).append("] for source [").append(m).append("x").append(n).append("], sampleSize: ").append(i).append(", targetDensity: ").append(i1).append(", density: ").append(i3).append(", density multiplier: ").append(f1);
        }
        if ((j > 0) && (k > 0))
        {
          localObject2 = inPreferredConfig;
          if (11 <= Build.VERSION.SDK_INT) {
            inBitmap = ((amd)localObject1).b(j, k, (Bitmap.Config)localObject2);
          }
        }
      }
      localObject1 = a(paramInputStream, localOptions, paramaro);
      paramaro.a(f, (Bitmap)localObject1);
      if (Log.isLoggable("Downsampler", 2))
      {
        paramInputStream = String.valueOf(a((Bitmap)localObject1));
        paramaro = String.valueOf(b(localOptions));
        i = inSampleSize;
        j = inDensity;
        k = inTargetDensity;
        localObject2 = String.valueOf(Thread.currentThread().getName());
        new StringBuilder(String.valueOf(paramInputStream).length() + 172 + String.valueOf(paramaja).length() + String.valueOf(paramaro).length() + String.valueOf(localObject2).length()).append("Decoded ").append(paramInputStream).append(" from [").append(m).append("x").append(n).append("] ").append(paramaja).append(" with inBitmap ").append(paramaro).append(" for [").append(paramInt1).append("x").append(paramInt2).append("], sample size: ").append(i).append(", density: ").append(j).append(", target density: ").append(k).append(", thread: ").append((String)localObject2);
      }
      paramInputStream = null;
      if (localObject1 != null)
      {
        ((Bitmap)localObject1).setDensity(g.densityDpi);
        paramaja = arz.a(f, (Bitmap)localObject1, i2);
        paramInputStream = paramaja;
        if (!localObject1.equals(paramaja))
        {
          f.a((Bitmap)localObject1);
          paramInputStream = paramaja;
        }
      }
      paramInputStream = aqy.a(paramInputStream, f);
      c(localOptions);
      h.a(arrayOfByte);
      return paramInputStream;
      if (paramInt2 == Integer.MIN_VALUE)
      {
        i = n;
        if (paramInt1 == Integer.MIN_VALUE)
        {
          j = m;
          if ((k != 90) && (k != 270)) {
            break label930;
          }
          f1 = ((are)localObject2).a(n, m, j, i);
          if (f1 > 0.0F) {
            break label948;
          }
          paramInputStream = String.valueOf(localObject2);
          throw new IllegalArgumentException(String.valueOf(paramInputStream).length() + 48 + "Cannot scale with factor: " + f1 + " from: " + paramInputStream);
        }
      }
      else
      {
        i = paramInt2;
        continue;
      }
      int j = paramInt1;
      continue;
      label930:
      float f1 = ((are)localObject2).a(m, n, j, i);
      continue;
      label948:
      int i3 = ((are)localObject2).a();
      if (i3 == 0) {
        throw new IllegalArgumentException("Cannot round with null rounding");
      }
      int i1 = (int)(m * f1 + 0.5F);
      int k = (int)(n * f1 + 0.5F);
      i1 = m / i1;
      k = n / k;
      label1028:
      float f2;
      if (i3 == arl.a)
      {
        k = Math.max(i1, k);
        i1 = Math.max(1, Integer.highestOneBit(k));
        k = i1;
        if (i3 == arl.a)
        {
          k = i1;
          if (i1 < 1.0F / f1) {
            k = i1 << 1;
          }
        }
        f2 = k * f1;
        inSampleSize = k;
        if (Build.VERSION.SDK_INT >= 19)
        {
          inTargetDensity = ((int)(1000.0F * f2 + 0.5F));
          inDensity = 1000;
        }
        if (!a(localOptions)) {
          break label1297;
        }
        inScaled = true;
      }
      for (;;)
      {
        if (!Log.isLoggable("Downsampler", 2)) {
          break label1310;
        }
        localObject1 = String.valueOf("Calculate scaling, source: [");
        i1 = inTargetDensity;
        i3 = inDensity;
        new StringBuilder(String.valueOf(localObject1).length() + 224).append((String)localObject1).append(m).append("x").append(n).append("], target: [").append(j).append("x").append(i).append("], exact scale factor: ").append(f1).append(", power of 2 sample size: ").append(k).append(", adjusted scale factor: ").append(f2).append(", target density: ").append(i1).append(", density: ").append(i3);
        break;
        k = Math.min(i1, k);
        break label1028;
        label1297:
        inTargetDensity = 0;
        inDensity = 0;
      }
      label1310:
      continue;
      label1312:
      f1 = 1.0F;
      continue;
      label1318:
      if (m > 0) {
        if (n > 0) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     arm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */