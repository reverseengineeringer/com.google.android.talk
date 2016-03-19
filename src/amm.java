import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

public final class amm
  implements amd
{
  private static final Bitmap.Config a = Bitmap.Config.ARGB_8888;
  private final amo b;
  private final Set<Bitmap.Config> c;
  private final int d;
  private final amn e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  
  public amm(int paramInt) {}
  
  private amm(int paramInt, amo paramamo, Set<Bitmap.Config> paramSet)
  {
    d = paramInt;
    f = paramInt;
    b = paramamo;
    c = paramSet;
    e = new amn();
  }
  
  private void b()
  {
    if (Log.isLoggable("LruBitmapPool", 2)) {
      c();
    }
  }
  
  private void b(int paramInt)
  {
    for (;;)
    {
      try
      {
        Bitmap localBitmap;
        if (g > paramInt)
        {
          localBitmap = b.a();
          if (localBitmap == null)
          {
            if (Log.isLoggable("LruBitmapPool", 5)) {
              c();
            }
            g = 0;
          }
        }
        else
        {
          return;
        }
        g -= b.c(localBitmap);
        k += 1;
        if (Log.isLoggable("LruBitmapPool", 3))
        {
          String str = String.valueOf(b.b(localBitmap));
          if (str.length() != 0) {
            "Evicting bitmap=".concat(str);
          }
        }
        else
        {
          b();
          localBitmap.recycle();
          continue;
        }
        new String("Evicting bitmap=");
      }
      finally {}
    }
  }
  
  private Bitmap c(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    for (;;)
    {
      Object localObject1;
      try
      {
        Object localObject2 = b;
        if (paramConfig != null)
        {
          localObject1 = paramConfig;
          localObject1 = ((amo)localObject2).a(paramInt1, paramInt2, (Bitmap.Config)localObject1);
          if (localObject1 != null) {
            break label159;
          }
          if (Log.isLoggable("LruBitmapPool", 3))
          {
            localObject2 = String.valueOf(b.b(paramInt1, paramInt2, paramConfig));
            if (((String)localObject2).length() != 0) {
              "Missing bitmap=".concat((String)localObject2);
            }
          }
          else
          {
            i += 1;
            if (Log.isLoggable("LruBitmapPool", 2))
            {
              paramConfig = String.valueOf(b.b(paramInt1, paramInt2, paramConfig));
              if (paramConfig.length() == 0) {
                break label220;
              }
              "Get bitmap=".concat(paramConfig);
            }
            b();
            return (Bitmap)localObject1;
          }
        }
        else
        {
          localObject1 = a;
          continue;
        }
        new String("Missing bitmap=");
        continue;
        h += 1;
      }
      finally {}
      label159:
      g -= b.c((Bitmap)localObject1);
      if (Build.VERSION.SDK_INT >= 12) {
        ((Bitmap)localObject1).setHasAlpha(true);
      }
      if (Build.VERSION.SDK_INT >= 19)
      {
        ((Bitmap)localObject1).setPremultiplied(true);
        continue;
        label220:
        new String("Get bitmap=");
      }
    }
  }
  
  private void c()
  {
    int m = h;
    int n = i;
    int i1 = j;
    int i2 = k;
    int i3 = g;
    int i4 = f;
    String str = String.valueOf(b);
    new StringBuilder(String.valueOf(str).length() + 133).append("Hits=").append(m).append(", misses=").append(n).append(", puts=").append(i1).append(", evictions=").append(i2).append(", currentSize=").append(i3).append(", maxSize=").append(i4).append("\nStrategy=").append(str);
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap localBitmap = c(paramInt1, paramInt2, paramConfig);
    if (localBitmap != null)
    {
      localBitmap.eraseColor(0);
      return localBitmap;
    }
    return Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
  }
  
  public void a()
  {
    b(0);
  }
  
  public void a(int paramInt)
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      new StringBuilder(29).append("trimMemory, level=").append(paramInt);
    }
    if (paramInt >= 40) {
      a();
    }
    while (paramInt < 20) {
      return;
    }
    b(f / 2);
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      try
      {
        throw new NullPointerException("Bitmap must not be null");
      }
      finally {}
    }
    if (paramBitmap.isRecycled()) {
      throw new IllegalStateException("Cannot pool recycled bitmap");
    }
    if ((!paramBitmap.isMutable()) || (b.c(paramBitmap) > f) || (!c.contains(paramBitmap.getConfig())))
    {
      if (Log.isLoggable("LruBitmapPool", 2))
      {
        String str1 = String.valueOf("Reject bitmap from pool, bitmap: ");
        String str2 = String.valueOf(b.b(paramBitmap));
        boolean bool1 = paramBitmap.isMutable();
        boolean bool2 = c.contains(paramBitmap.getConfig());
        new StringBuilder(String.valueOf(str1).length() + 45 + String.valueOf(str2).length()).append(str1).append(str2).append(", is mutable: ").append(bool1).append(", is allowed config: ").append(bool2);
      }
      paramBitmap.recycle();
      return;
    }
    int m = b.c(paramBitmap);
    b.a(paramBitmap);
    j += 1;
    g = (m + g);
    if (Log.isLoggable("LruBitmapPool", 2))
    {
      paramBitmap = String.valueOf(b.b(paramBitmap));
      if (paramBitmap.length() == 0) {
        break label286;
      }
      "Put bitmap in pool=".concat(paramBitmap);
    }
    for (;;)
    {
      b();
      b(f);
      break;
      label286:
      new String("Put bitmap in pool=");
    }
  }
  
  public Bitmap b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap localBitmap2 = c(paramInt1, paramInt2, paramConfig);
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null) {
      localBitmap1 = Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
    }
    return localBitmap1;
  }
}

/* Location:
 * Qualified Name:     amm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */