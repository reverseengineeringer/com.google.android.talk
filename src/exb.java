import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.Build.VERSION;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class exb
  implements exe, hbv
{
  public static final boolean a = false;
  public final exd b;
  private int c;
  private final LinkedHashMap<String, eys> d;
  private final Object e = new Object();
  private boolean f;
  
  static
  {
    imx localimx = ezi.t;
  }
  
  public exb(Context paramContext, int paramInt)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      int i = ((ActivityManager)paramContext.getSystemService("activity")).getMemoryClass() << 10 << 10;
      c = ((int)(i / 10.0D));
      if (a)
      {
        int j = c;
        new StringBuilder(159).append("Initializing BitmapCache; maxMemory available (bytes): ").append(i).append("; expected cacheSize (bytes): ").append(j).append("; min (bytes): 2097152; max (bytes): 25165824");
      }
      c = Math.max(c, 2097152);
      c = Math.min(c, 25165824);
      if (a)
      {
        i = c;
        new StringBuilder(43).append("Initialized cache size (bytes): ").append(i);
      }
      d = new LinkedHashMap(0, 0.75F, true);
      f = exd.a(paramContext);
      b = exd.a(paramContext, 5, 30, 100, paramInt, "Image");
      return;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    label455:
    label461:
    label471:
    for (;;)
    {
      int j;
      synchronized (e)
      {
        c();
        if (a) {
          new StringBuilder(42).append("Begin BitmapCache prune: lowMemory = ").append(paramBoolean);
        }
        Iterator localIterator = d.entrySet().iterator();
        int i = 0;
        k = 0;
        Object localObject3;
        if (localIterator.hasNext())
        {
          localObject3 = (eys)((Map.Entry)localIterator.next()).getValue();
          j = k;
          if (((eys)localObject3).i() == 0) {
            j = k + 1;
          }
          localObject3 = ((eys)localObject3).f();
          if (localObject3 == null) {
            break label455;
          }
          i = c((Bitmap)localObject3) + i;
          break label455;
        }
        if (a)
        {
          j = c;
          new StringBuilder(108).append("Evictable bitmap count: ").append(k).append("; total cache (bytes) = ").append(i).append("; max cache size (bytes) = ").append(j);
        }
        if (k != 0) {
          break label461;
        }
        return;
        localIterator = d.entrySet().iterator();
        int m = 0;
        j = i;
        i = m;
        if (localIterator.hasNext())
        {
          localObject3 = (eys)((Map.Entry)localIterator.next()).getValue();
          if ((j > k) && (((eys)localObject3).i() == 0))
          {
            localObject3 = ((eys)localObject3).c();
            localIterator.remove();
            if (localObject3 != null)
            {
              m = c((Bitmap)localObject3);
              if (a)
              {
                int n = ((Bitmap)localObject3).getWidth();
                int i1 = ((Bitmap)localObject3).getHeight();
                int i2 = c;
                new StringBuilder(107).append("Evicting bitmap: size (").append(n).append("x").append(i1).append("); bytes: ").append(m).append("; need to evict: ").append(j - i2).append(" bytes more.");
              }
              j -= m;
              i = m + i;
              if (paramBoolean)
              {
                ((Bitmap)localObject3).recycle();
                continue;
                k = c;
                continue;
              }
              b.a((Bitmap)localObject3);
              break label471;
            }
          }
        }
        else
        {
          if ((a) && (i > 0))
          {
            new StringBuilder(60).append("************************* Pruned total of ").append(i).append(" bytes.");
            c();
          }
          return;
        }
      }
      break label471;
      int k = j;
      continue;
      if (paramBoolean) {
        k = 0;
      }
    }
  }
  
  private boolean a(int paramInt)
  {
    boolean bool = true;
    if (a) {
      new StringBuilder(33).append("BitmapCache evictSome=").append(paramInt);
    }
    c();
    switch (paramInt)
    {
    default: 
      bool = false;
    case 0: 
      return bool;
    case 1: 
      h();
      return true;
    }
    ezi.d("Babel_BitmapCache", "Warning: BitmapCache hitting too many OOMs.", new Object[0]);
    hbu.a.a();
    return true;
  }
  
  private static int c(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramBitmap.getAllocationByteCount();
    }
    return paramBitmap.getByteCount();
  }
  
  private void c()
  {
    int i = 0;
    if (!a) {
      return;
    }
    for (;;)
    {
      int m;
      int n;
      int i1;
      synchronized (e)
      {
        Iterator localIterator = d.entrySet().iterator();
        j = 0;
        k = 0;
        if (localIterator.hasNext())
        {
          Object localObject1 = (Map.Entry)localIterator.next();
          eys localeys = (eys)((Map.Entry)localObject1).getValue();
          Object localObject3 = localeys.f();
          m = i;
          n = j;
          i1 = k;
          if (localObject3 == null) {
            break label362;
          }
          int i2 = ((Bitmap)localObject3).getWidth();
          int i3 = ((Bitmap)localObject3).getHeight();
          i1 = k + i2 * i3;
          n = j + 1;
          m = i + ((Bitmap)localObject3).getByteCount();
          localObject3 = (String)((Map.Entry)localObject1).getKey();
          localObject1 = localObject3;
          if (((String)localObject3).startsWith("//"))
          {
            localObject1 = String.valueOf(localObject3);
            if (((String)localObject1).length() != 0) {
              localObject1 = "https:".concat((String)localObject1);
            }
          }
          else
          {
            i = localeys.i();
            new StringBuilder(String.valueOf(localObject1).length() + 73).append("*** Bitmap (refcount = ").append(i).append(") ;   size: ").append(i2).append(" x ").append(i3).append(": ").append((String)localObject1);
            break label362;
          }
          localObject1 = new String("https:");
        }
      }
      double d1 = i / 1024.0D;
      double d2 = d1 / 1024.0D;
      new StringBuilder(168).append("*****   Total Pixel Area : ").append(k).append(" sq pixels; numBitmaps = ").append(j).append("; totalBytes = ").append(i).append("; in KB = ").append(d1).append("; in MB = ").append(d2);
      return;
      label362:
      int j = n;
      int k = i1;
      i = m;
    }
  }
  
  public Bitmap a(int paramInt1, int paramInt2)
  {
    if (!f) {
      return null;
    }
    label355:
    label419:
    label422:
    label425:
    for (;;)
    {
      int i;
      synchronized (e)
      {
        if (a)
        {
          i = d.size();
          new StringBuilder(100).append("BitmapCache getBitmap starting evictions cache size=").append(i).append(" width=").append(paramInt1).append(" height=").append(paramInt2);
        }
        i = 0;
        Object localObject1 = d.entrySet().iterator();
        if (((Iterator)localObject1).hasNext())
        {
          localObject3 = ((eys)((Map.Entry)((Iterator)localObject1).next()).getValue()).f();
          if (localObject3 == null) {
            break label422;
          }
          i = c((Bitmap)localObject3) + i;
          break label422;
        }
        if (i <= c)
        {
          if (a)
          {
            paramInt1 = c;
            new StringBuilder(114).append("BitmapCache getAvailableBitmap: currentCacheSize ").append(i).append(" < ").append(paramInt1).append(" available. So not evicting any bitmaps.");
          }
          return null;
        }
        Iterator localIterator = d.entrySet().iterator();
        localObject1 = null;
        if (localIterator.hasNext())
        {
          localObject3 = (eys)((Map.Entry)localIterator.next()).getValue();
          if ((((eys)localObject3).i() != 0) || (!((eys)localObject3).a(paramInt1, paramInt2)) || (!((eys)localObject3).g())) {
            break label419;
          }
          if (a)
          {
            localObject1 = String.valueOf(((eys)localObject3).toString());
            if (((String)localObject1).length() != 0) {
              "BitmapCache getAvailableBitmap evicting: ".concat((String)localObject1);
            }
          }
          else
          {
            localObject1 = ((eys)localObject3).c();
            localIterator.remove();
            localObject3 = localObject1;
            if (localObject1 != null) {
              break label355;
            }
            break label425;
          }
          new String("BitmapCache getAvailableBitmap evicting: ");
        }
      }
      Object localObject3 = localObject2;
      if (a)
      {
        i = d.size();
        new StringBuilder(109).append("BitmapCache getAvailableBitmap finished evictions cache size=").append(i).append(" width=").append(paramInt1).append(" height=").append(paramInt2);
      }
      c();
      return (Bitmap)localObject3;
      break label425;
    }
  }
  
  public Bitmap a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      paramArrayOfByte = b(paramArrayOfByte, paramInt1, paramInt2, paramInt3);
      return paramArrayOfByte;
    }
    catch (OutOfMemoryError paramArrayOfByte) {}
    return null;
  }
  
  public eys a(String paramString)
  {
    synchronized (e)
    {
      c();
      paramString = (eys)d.get(paramString);
      if (paramString == null)
      {
        a(false);
        return paramString;
      }
      paramString.a();
    }
  }
  
  public eys a(String paramString, eys parameys)
  {
    boolean bool2 = true;
    fii.a(parameys);
    if (a)
    {
      if (b(parameys.e())) {
        break label89;
      }
      bool1 = true;
      fii.b(bool1);
      if (b.b(parameys.e())) {
        break label94;
      }
    }
    label89:
    label94:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      fii.b(bool1);
      synchronized (e)
      {
        paramString = (eys)d.put(paramString, parameys);
        c();
        return paramString;
      }
      bool1 = false;
      break;
    }
  }
  
  LinkedHashMap<String, eys> a()
  {
    return d;
  }
  
  public void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      c();
      b.a(paramBitmap);
    }
  }
  
  public Bitmap b(int paramInt1, int paramInt2)
  {
    c();
    return b.a(paramInt1, paramInt2, this);
  }
  
  public Bitmap b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool;
    label19:
    label35:
    int j;
    int i;
    if (paramInt1 >= 0)
    {
      bool = true;
      fii.a(bool);
      if (paramInt2 < 0) {
        break label242;
      }
      bool = true;
      fii.a(bool);
      if (paramInt3 % 90 != 0) {
        break label248;
      }
      bool = true;
      fii.a(bool);
      if (paramInt3 % 180 == 0) {
        break label667;
      }
      j = paramInt2;
      i = paramInt1;
    }
    for (;;)
    {
      Object localObject2 = exd.a(0, 0);
      inJustDecodeBounds = true;
      int k;
      Object localObject1;
      try
      {
        BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, (BitmapFactory.Options)localObject2);
        inJustDecodeBounds = false;
        k = outWidth;
        int m = outHeight;
        if (a)
        {
          localObject1 = String.valueOf("BitmapCache.decodeByteArray: bitmap.w=");
          new StringBuilder(String.valueOf(localObject1).length() + 73).append((String)localObject1).append(k).append(" bitmap.h=").append(m).append(", limit.w=").append(j).append(" limit.h=").append(i);
        }
        if (k <= j)
        {
          paramInt1 = k;
          paramInt2 = m;
          if (m <= i) {
            break label305;
          }
        }
        int n = 1;
        paramInt2 = m;
        paramInt1 = k;
        k = n;
        while ((paramInt1 > j) || (paramInt2 > i))
        {
          paramInt1 /= 2;
          paramInt2 /= 2;
          k <<= 1;
        }
        bool = false;
      }
      catch (Exception paramArrayOfByte)
      {
        label242:
        ezi.d("Babel", "can not decode bitmap dimensions", paramArrayOfByte);
        localObject2 = null;
      }
      bool = false;
      break label19;
      label248:
      bool = false;
      break label35;
      return (Bitmap)localObject2;
      if (a) {
        new StringBuilder(52).append("BitmapCache.decodeByteArray: sample size=").append(k);
      }
      inSampleSize = k;
      label305:
      if (a) {
        new StringBuilder(66).append("BitmapCache.decodeByteArray: decode to w=").append(paramInt1).append(" h=").append(paramInt2);
      }
      i = 0;
      label664:
      for (;;)
      {
        try
        {
          localObject1 = b.a(paramArrayOfByte, (BitmapFactory.Options)localObject2, paramInt1, paramInt2, this);
          localObject2 = localObject1;
          if (localObject1 == null) {
            break;
          }
          localObject2 = localObject1;
          if (paramInt3 % 360 == 0) {
            break;
          }
          paramInt1 = 0;
        }
        catch (OutOfMemoryError localOutOfMemoryError1)
        {
          try
          {
            paramInt2 = ((Bitmap)localObject1).getWidth();
            i = ((Bitmap)localObject1).getHeight();
            localObject2 = new Matrix();
            ((Matrix)localObject2).setRotate(paramInt3, paramInt2 / 2.0F, i / 2.0F);
            localObject2 = Bitmap.createBitmap((Bitmap)localObject1, 0, 0, paramInt2, i, (Matrix)localObject2, true);
            if ((localObject2 != null) && (localObject1 != localObject2)) {
              a((Bitmap)localObject1);
            }
            return (Bitmap)localObject2;
          }
          catch (OutOfMemoryError localOutOfMemoryError2)
          {
            paramInt2 = paramArrayOfByte.length;
            ezi.d("Babel", 53 + "out of memory for rotating a " + paramInt2 + " sized bitmap", new Object[0]);
            paramInt1 += 1;
            if (a(paramInt1)) {
              break label664;
            }
            paramInt1 = paramArrayOfByte.length;
            ezi.d("Babel", 61 + "out of memory: gave up on rotating a " + paramInt1 + " sized bitmap", new Object[0]);
            throw localOutOfMemoryError2;
          }
          localOutOfMemoryError1 = localOutOfMemoryError1;
          j = paramArrayOfByte.length;
          ezi.d("Babel", 53 + "out of memory for decoding a " + j + " sized bitmap", new Object[0]);
          i += 1;
          if (!a(i))
          {
            paramInt1 = paramArrayOfByte.length;
            ezi.d("Babel", 61 + "out of memory: gave up on decoding a " + paramInt1 + " sized bitmap", new Object[0]);
            throw localOutOfMemoryError1;
          }
        }
      }
      label667:
      i = paramInt2;
      j = paramInt1;
    }
  }
  
  exd b()
  {
    return b;
  }
  
  public void b(int paramInt)
  {
    if (paramInt != 5) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  boolean b(Bitmap paramBitmap)
  {
    synchronized (e)
    {
      Iterator localIterator = d.values().iterator();
      while (localIterator.hasNext()) {
        if (((eys)localIterator.next()).f() == paramBitmap) {
          return true;
        }
      }
      return false;
    }
  }
  
  public void h()
  {
    a(true);
  }
}

/* Location:
 * Qualified Name:     exb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */