import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.util.SparseArray;

public final class exf
  extends exd
{
  private static volatile int e = 0;
  private final SparseArray<exg> f;
  private final Object g = new Object();
  private final int h;
  private int i;
  private int j;
  private boolean k = false;
  private final int l;
  private final int m;
  private int n = 0;
  
  protected exf(int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    super(paramString);
    h = paramInt1;
    f = new SparseArray();
    if (paramInt4 >= 0) {
      bool = true;
    }
    hbs.a("Expected condition to be true", bool);
    l = paramInt4;
    m = c(paramInt4, paramInt4);
    if (paramInt4 != 0)
    {
      k = true;
      i = paramInt2;
      j = paramInt3;
    }
  }
  
  private static String a(int paramInt)
  {
    return 23 + (paramInt >>> 16) + "x" + (0xFFFF & paramInt);
  }
  
  private void a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2, exe paramexe)
  {
    if (inJustDecodeBounds) {
      return;
    }
    inBitmap = b(paramInt1, paramInt2, paramexe);
  }
  
  private Bitmap b(int paramInt1, int paramInt2, exe paramexe)
  {
    int i1 = 0;
    int i2 = c(paramInt1, paramInt2);
    if (i2 != 0) {}
    for (;;)
    {
      synchronized (g)
      {
        if (k)
        {
          if (i1 < i)
          {
            localObject1 = super.a(l, l, null);
            n += 1;
            a((Bitmap)localObject1);
            i1 += 1;
            continue;
          }
          k = false;
        }
        Object localObject3 = (exg)f.get(i2);
        if ((localObject3 != null) && (a > 0))
        {
          if (b)
          {
            localObject1 = c;
            String str1 = String.valueOf(a(i2));
            i1 = a;
            String str2 = String.valueOf(b[(a - 1)]);
            new StringBuilder(String.valueOf(localObject1).length() + 81 + String.valueOf(str1).length() + String.valueOf(str2).length()).append("BitmapPoolICS(").append((String)localObject1).append(") found bitmap from pool for size=").append(str1).append(" numAvailable=").append(i1).append(" Bitmap=").append(str2);
          }
          a -= 1;
          localObject1 = b[a];
          b[a] = null;
          ??? = localObject1;
          localObject1 = ???;
          if (??? == null)
          {
            localObject1 = ???;
            if (i2 == m)
            {
              localObject1 = (ActivityManager)aal.oJ.getSystemService("activity");
              ??? = new ActivityManager.MemoryInfo();
              ((ActivityManager)localObject1).getMemoryInfo((ActivityManager.MemoryInfo)???);
              if ((!lowMemory) && (n < j)) {
                break label701;
              }
              localObject1 = null;
            }
          }
          ??? = localObject1;
          if (localObject1 == null)
          {
            ??? = localObject1;
            if (paramexe != null)
            {
              paramexe = paramexe.a(paramInt1, paramInt2);
              ??? = paramexe;
              if (b)
              {
                if (paramexe == null) {
                  break label729;
                }
                localObject1 = c;
                ??? = String.valueOf(a(i2));
                new StringBuilder(String.valueOf(localObject1).length() + 53 + String.valueOf(???).length()).append("BitmapPoolICS(").append((String)localObject1).append(") found bitmap from provider for size: ").append((String)???);
                ??? = paramexe;
              }
            }
          }
          if (b)
          {
            localObject1 = c;
            localObject3 = String.valueOf(a(i2));
            if (??? != null) {
              break label799;
            }
            paramexe = "To Be Allocated";
            new StringBuilder(String.valueOf(localObject1).length() + 46 + String.valueOf(localObject3).length() + String.valueOf(paramexe).length()).append("BitmapPoolICS(").append((String)localObject1).append(") final findPoolBitmap: ").append((String)localObject3).append(" bitmap=").append(paramexe);
          }
          return (Bitmap)???;
        }
        if (!b) {
          break label808;
        }
        localObject1 = c;
        localObject3 = String.valueOf(a(i2));
        new StringBuilder(String.valueOf(localObject1).length() + 45 + String.valueOf(localObject3).length()).append("BitmapPoolICS(").append((String)localObject1).append(") no bitmaps in pool for size: ").append((String)localObject3);
      }
      if (b)
      {
        localObject1 = c;
        new StringBuilder(String.valueOf(localObject1).length() + 57).append("BitmapPoolICS(").append((String)localObject1).append(") unsupported size: ").append(paramInt1).append("x").append(paramInt2);
      }
      ??? = null;
      continue;
      label701:
      Object localObject1 = super.a(l, l, null);
      n += 1;
      continue;
      label729:
      localObject1 = c;
      ??? = String.valueOf(a(i2));
      new StringBuilder(String.valueOf(localObject1).length() + 49 + String.valueOf(???).length()).append("BitmapPoolICS(").append((String)localObject1).append(") no bitmaps in provider for size: ").append((String)???);
      ??? = paramexe;
      continue;
      label799:
      paramexe = ???.toString();
      continue;
      label808:
      localObject1 = null;
    }
  }
  
  private static int c(int paramInt1, int paramInt2)
  {
    if ((paramInt1 > 65535) || (paramInt2 > 65535)) {
      return 0;
    }
    return paramInt1 << 16 | paramInt2;
  }
  
  public Bitmap a(int paramInt1, int paramInt2, exe paramexe)
  {
    paramexe = b(paramInt1, paramInt2, paramexe);
    if (paramexe == null)
    {
      if (c(paramInt1, paramInt2) == m) {
        n += 1;
      }
      return super.a(paramInt1, paramInt2, null);
    }
    paramexe.eraseColor(0);
    paramexe.setHasAlpha(true);
    return paramexe;
  }
  
  public Bitmap a(int paramInt1, BitmapFactory.Options paramOptions, int paramInt2, int paramInt3)
  {
    localObject1 = null;
    hbs.b("Expected non-null", paramOptions);
    a(paramOptions, paramInt2, paramInt3, null);
    try
    {
      localObject2 = BitmapFactory.decodeResource(a, paramInt1, paramOptions);
      paramOptions = (BitmapFactory.Options)localObject2;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Object localObject2;
      while (inBitmap != null)
      {
        inBitmap = null;
        Bitmap localBitmap = BitmapFactory.decodeResource(a, paramInt1, paramOptions);
        paramInt2 = e + 1;
        e = paramInt2;
        paramOptions = localBitmap;
        if (paramInt2 % 100 == 0)
        {
          paramInt2 = e;
          ezi.d("Babel", 63 + "Pooled bitmap consistently not being reused count = " + paramInt2, new Object[0]);
          paramOptions = localBitmap;
        }
      }
    }
    catch (OutOfMemoryError paramOptions)
    {
      for (;;)
      {
        ezi.d("Babel", 33 + "Oom decoding resource " + paramInt1, new Object[0]);
        hbu.a.a();
        paramOptions = null;
        continue;
        localObject1 = paramOptions.toString();
      }
    }
    if (b)
    {
      localObject2 = c;
      if (paramOptions == null)
      {
        localObject1 = String.valueOf(localObject1);
        new StringBuilder(String.valueOf(localObject2).length() + 80 + String.valueOf(localObject1).length()).append("BitmapPoolICS(").append((String)localObject2).append(") decodeSampledBitmapFromResource ICS for ").append(paramInt1).append(" bytes gave: ").append((String)localObject1);
      }
    }
    else
    {
      return paramOptions;
    }
  }
  
  public Bitmap a(byte[] paramArrayOfByte, BitmapFactory.Options paramOptions, int paramInt1, int paramInt2, exe paramexe)
  {
    Object localObject = null;
    hbs.b("Expected non-null", paramOptions);
    a(paramOptions, paramInt1, paramInt2, paramexe);
    try
    {
      paramexe = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramOptions);
      paramOptions = paramexe;
    }
    catch (IllegalArgumentException paramexe)
    {
      for (;;)
      {
        if (b)
        {
          paramexe = c;
          new StringBuilder(String.valueOf(paramexe).length() + 41).append("BitmapPoolICS(").append(paramexe).append(") Unable to use pool bitmap");
        }
        if (inBitmap != null)
        {
          inBitmap = null;
          paramexe = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramOptions);
          paramInt1 = e + 1;
          e = paramInt1;
          paramOptions = paramexe;
          if (paramInt1 % 100 == 0)
          {
            paramInt1 = e;
            ezi.d("Babel", 63 + "Pooled bitmap consistently not being reused count = " + paramInt1, new Object[0]);
            paramOptions = paramexe;
            continue;
            paramArrayOfByte = paramOptions.toString();
          }
        }
        else
        {
          paramOptions = null;
        }
      }
    }
    if (b)
    {
      paramexe = c;
      paramInt1 = paramArrayOfByte.length;
      if (paramOptions == null)
      {
        paramArrayOfByte = (byte[])localObject;
        paramArrayOfByte = String.valueOf(paramArrayOfByte);
        new StringBuilder(String.valueOf(paramexe).length() + 64 + String.valueOf(paramArrayOfByte).length()).append("BitmapPoolICS(").append(paramexe).append(") decodeByteArray ICS for ").append(paramInt1).append(" bytes gave: ").append(paramArrayOfByte);
      }
    }
    else
    {
      return paramOptions;
    }
  }
  
  public void a()
  {
    Object localObject1 = g;
    int i1 = 0;
    try
    {
      while (i1 < f.size())
      {
        exg localexg = (exg)f.valueAt(i1);
        int i2 = 0;
        while (i2 < a)
        {
          c(b[i2]);
          b[i2] = null;
          i2 += 1;
        }
        a = 0;
        i1 += 1;
      }
      f.clear();
      return;
    }
    finally {}
  }
  
  public void a(Bitmap paramBitmap)
  {
    hbs.b("Expected condition to be false", bfq.a(paramBitmap));
    if (b)
    {
      hbs.b("Expected condition to be false", b(paramBitmap));
      hbs.b("Expected condition to be false", eye.a().b(paramBitmap));
    }
    Object localObject2;
    if (b)
    {
      localObject2 = c;
      if (paramBitmap != null) {
        break label172;
      }
    }
    label172:
    for (Object localObject1 = null;; localObject1 = paramBitmap.toString())
    {
      localObject1 = String.valueOf(localObject1);
      new StringBuilder(String.valueOf(localObject2).length() + 29 + String.valueOf(localObject1).length()).append("BitmapPoolICS(").append((String)localObject2).append(") put bitmap b=").append((String)localObject1);
      if (paramBitmap != null) {
        break;
      }
      paramBitmap = c;
      ezi.c("Babel", String.valueOf(paramBitmap).length() + 37 + "BitmapPoolICS(" + paramBitmap + ") receiving null bitmap", new Exception());
      return;
    }
    int i2 = c(paramBitmap.getWidth(), paramBitmap.getHeight());
    if ((i2 == 0) || (!paramBitmap.isMutable()))
    {
      c(paramBitmap);
      return;
    }
    for (;;)
    {
      synchronized (g)
      {
        localObject2 = (exg)f.get(i2);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          if (i2 == m)
          {
            i1 = i;
            localObject1 = new exg(i1);
            f.append(i2, localObject1);
          }
        }
        else
        {
          if (a >= b.length) {
            break label419;
          }
          b[a] = paramBitmap;
          a += 1;
          if (b)
          {
            paramBitmap = c;
            localObject2 = String.valueOf(a(i2));
            i1 = a;
            new StringBuilder(String.valueOf(paramBitmap).length() + 79 + String.valueOf(localObject2).length()).append("BitmapPoolICS(").append(paramBitmap).append(") putting bitmap into size pool ").append((String)localObject2).append(" which now has ").append(i1).append(" items.");
          }
          return;
        }
      }
      int i1 = h;
      continue;
      label419:
      if (b)
      {
        localObject2 = c;
        String str = String.valueOf(a(i2));
        i1 = a;
        new StringBuilder(String.valueOf(localObject2).length() + 92 + String.valueOf(str).length()).append("BitmapPoolICS(").append((String)localObject2).append(") tried putting bitmap into size pool ").append(str).append(" but it was full with ").append(i1).append(" items.");
      }
      if (i2 == m) {
        n -= 1;
      }
      c(paramBitmap);
    }
  }
  
  SparseArray<exg> b()
  {
    return f;
  }
  
  public boolean b(int paramInt1, int paramInt2)
  {
    int i1 = c(paramInt1, paramInt2);
    if (i1 == 0) {
      return super.b(paramInt1, paramInt2);
    }
    synchronized (g)
    {
      exg localexg = (exg)f.get(i1);
      if ((localexg != null) && (a == b.length)) {
        return true;
      }
    }
    return false;
  }
  
  boolean b(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {}
    for (;;)
    {
      return false;
      int i1 = c(paramBitmap.getWidth(), paramBitmap.getHeight());
      exg localexg = (exg)f.get(i1);
      if (localexg != null)
      {
        i1 = 0;
        while (i1 < a)
        {
          if (b[i1] == paramBitmap) {
            return true;
          }
          i1 += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     exf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */