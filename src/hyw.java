import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedSet;

public final class hyw
  implements hwi
{
  private static final int b = (int)Math.round(Math.sqrt(16.0D));
  private static final imx c = new imx("debug.social.bitmap_pool", (byte)0);
  private static final String[] d = { "put", "evict", "hit", "inexact hit", "miss" };
  private final hys e;
  private final hyz f = new hyz();
  private final hzd g = new hzd();
  private final int h;
  private int i;
  private final Map<hyt, int[]> j = new HashMap();
  
  public hyw(int paramInt)
  {
    h = paramInt;
    if (Build.VERSION.SDK_INT >= 19)
    {
      e = new hzb();
      return;
    }
    e = new hyx();
  }
  
  private Bitmap a(int paramInt1, int paramInt2, hyv paramhyv)
  {
    for (;;)
    {
      try
      {
        hyt localhyt1 = e.a(paramInt1, paramInt2);
        Bitmap localBitmap = f.a(localhyt1);
        if (localBitmap == null)
        {
          localObject = e.a(b * paramInt1, b * paramInt2);
          localObject = g.a(localhyt1, (hyt)localObject);
          hyt localhyt2 = e.a(localhyt1, (SortedSet)localObject, paramhyv);
          localObject = localhyt2;
          if (localhyt2 != null)
          {
            localBitmap = f.a(localhyt2);
            localObject = localhyt2;
          }
          if (localBitmap != null)
          {
            e.a(localhyt1, localBitmap);
            i = ((int)(i - c));
            g.b((hyt)localObject);
            if (Log.isLoggable("BitmapPoolLru", 2))
            {
              paramhyv = String.valueOf(localObject);
              localObject = String.valueOf(localhyt1);
              new StringBuilder(String.valueOf(paramhyv).length() + 18 + String.valueOf(localObject).length()).append("Got bitmap: ").append(paramhyv).append(" for: ").append((String)localObject);
            }
            return localBitmap;
          }
          if (!Log.isLoggable("BitmapPoolLru", 3)) {
            continue;
          }
          localObject = String.valueOf(localhyt1);
          paramhyv = String.valueOf(paramhyv);
          new StringBuilder(String.valueOf(localObject).length() + 29 + String.valueOf(paramhyv).length()).append("Missing bitmap: ").append((String)localObject).append(" match type: ").append(paramhyv);
          continue;
        }
        Object localObject = localhyt1;
      }
      finally {}
    }
  }
  
  private void a(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException(String.format("Target byte size must be >= 0, got: %s", new Object[] { Integer.valueOf(paramInt) }));
    }
    Object localObject1;
    do
    {
      ((Bitmap)localObject1).recycle();
      if (Log.isLoggable("BitmapPoolLru", 2))
      {
        localObject1 = String.valueOf(localObject2);
        new StringBuilder(String.valueOf(localObject1).length() + 16).append("Evicted bitmap: ").append((String)localObject1);
      }
      if (i <= paramInt) {
        break;
      }
      localObject1 = f.a();
      Object localObject2 = e.a((Bitmap)localObject1);
      g.b((hyt)localObject2);
      i = ((int)(i - c));
    } while (localObject1 != null);
    throw new IllegalStateException("Pool is larger than its max size, but has no more bitmaps to evict.");
  }
  
  public Bitmap a(int paramInt1, int paramInt2)
  {
    return a(paramInt1, paramInt2, hyv.a);
  }
  
  public void a()
  {
    try
    {
      a(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void a(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 94	hyw:e	Lhys;
    //   6: aload_1
    //   7: invokeinterface 187 2 0
    //   12: astore 4
    //   14: aload 4
    //   16: getfield 123	hyt:c	J
    //   19: aload_0
    //   20: getfield 84	hyw:h	I
    //   23: i2l
    //   24: lcmp
    //   25: ifgt +20 -> 45
    //   28: aload_1
    //   29: invokevirtual 207	android/graphics/Bitmap:getConfig	()Landroid/graphics/Bitmap$Config;
    //   32: getstatic 213	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   35: if_acmpne +10 -> 45
    //   38: aload_1
    //   39: invokevirtual 217	android/graphics/Bitmap:isMutable	()Z
    //   42: ifne +10 -> 52
    //   45: aload_1
    //   46: invokevirtual 179	android/graphics/Bitmap:recycle	()V
    //   49: aload_0
    //   50: monitorexit
    //   51: return
    //   52: aload_0
    //   53: getfield 72	hyw:f	Lhyz;
    //   56: aload 4
    //   58: aload_1
    //   59: invokevirtual 218	hyz:a	(Lhyt;Landroid/graphics/Bitmap;)V
    //   62: aload_0
    //   63: getfield 77	hyw:g	Lhzd;
    //   66: aload 4
    //   68: invokevirtual 220	hzd:a	(Lhyt;)V
    //   71: ldc -128
    //   73: iconst_2
    //   74: invokestatic 134	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   77: ifeq +36 -> 113
    //   80: aload 4
    //   82: invokestatic 138	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   85: astore_1
    //   86: new 140	java/lang/StringBuilder
    //   89: dup
    //   90: aload_1
    //   91: invokestatic 138	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   94: invokevirtual 144	java/lang/String:length	()I
    //   97: bipush 24
    //   99: iadd
    //   100: invokespecial 146	java/lang/StringBuilder:<init>	(I)V
    //   103: ldc -34
    //   105: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: aload_1
    //   109: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: pop
    //   113: aload_0
    //   114: getfield 118	hyw:i	I
    //   117: i2l
    //   118: lstore_2
    //   119: aload_0
    //   120: aload 4
    //   122: getfield 123	hyt:c	J
    //   125: lload_2
    //   126: ladd
    //   127: l2i
    //   128: putfield 118	hyw:i	I
    //   131: aload_0
    //   132: aload_0
    //   133: getfield 84	hyw:h	I
    //   136: invokespecial 202	hyw:a	(I)V
    //   139: goto -90 -> 49
    //   142: astore_1
    //   143: aload_0
    //   144: monitorexit
    //   145: aload_1
    //   146: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	147	0	this	hyw
    //   0	147	1	paramBitmap	Bitmap
    //   118	8	2	l	long
    //   12	109	4	localhyt	hyt
    // Exception table:
    //   from	to	target	type
    //   2	45	142	finally
    //   45	49	142	finally
    //   52	113	142	finally
    //   113	139	142	finally
  }
  
  public void a(PrintWriter paramPrintWriter)
  {
    try
    {
      paramPrintWriter.print("current size: ");
      paramPrintWriter.println(i);
      paramPrintWriter.println("Profiling is currently inactive; to activate set the property debug.social.bitmap_pool to true.");
      return;
    }
    finally
    {
      paramPrintWriter = finally;
      throw paramPrintWriter;
    }
  }
  
  public float b()
  {
    try
    {
      float f1 = i;
      int k = h;
      f1 /= k;
      return f1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     hyw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */