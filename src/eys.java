import android.graphics.Bitmap;

public final class eys
  implements ejb
{
  public static int a = 1;
  private static final boolean b;
  private static final Object c;
  private Bitmap d;
  private int e = 0;
  private final int f;
  private final String g;
  private boolean h = false;
  private int i;
  
  static
  {
    imx localimx = ezi.t;
    b = false;
    c = new Object();
  }
  
  public eys(Bitmap paramBitmap, String paramString)
  {
    int j;
    if (paramBitmap == null) {
      j = 1;
    }
    synchronized (c)
    {
      d = paramBitmap;
      g = paramString;
      f = j;
      j = a;
      a = j + 1;
      i = j;
      if (b)
      {
        paramBitmap = String.valueOf(toString());
        if (paramBitmap.length() != 0) {
          "RefcountedBitmap created: ".concat(paramBitmap);
        }
      }
      else
      {
        return;
        j = paramBitmap.getByteCount();
      }
    }
    new String("RefcountedBitmap created: ");
  }
  
  private void j()
  {
    boolean bool2 = true;
    if (e > 0)
    {
      bool1 = true;
      hbs.a("Expected condition to be true", bool1);
      if (i <= 0) {
        break label38;
      }
    }
    label38:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hbs.a("Expected condition to be true", bool1);
      return;
      bool1 = false;
      break;
    }
  }
  
  public void a()
  {
    synchronized (c)
    {
      if (b)
      {
        String str = String.valueOf(toString());
        if (str.length() != 0) {
          "RefcountedBitmap acquire :".concat(str);
        }
      }
      else
      {
        e += 1;
        return;
      }
      new String("RefcountedBitmap acquire :");
    }
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    if (i > 0) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      if ((d == null) || (d.getWidth() != paramInt1) || (d.getHeight() != paramInt2)) {
        break;
      }
      return true;
    }
    return false;
  }
  
  public void b()
  {
    for (;;)
    {
      synchronized (c)
      {
        if (b)
        {
          String str = String.valueOf(toString());
          if (str.length() != 0) {
            "RefcountedBitmap release : ".concat(str);
          }
        }
        else
        {
          if (e <= 0) {
            break label80;
          }
          bool = true;
          hbs.a("Expected condition to be true", bool);
          e -= 1;
          return;
        }
        new String("RefcountedBitmap release : ");
      }
      label80:
      boolean bool = false;
    }
  }
  
  public Bitmap c()
  {
    Object localObject3 = null;
    synchronized (c)
    {
      Object localObject1;
      if (b)
      {
        localObject1 = String.valueOf(toString());
        if (((String)localObject1).length() != 0) {
          "RefcountedBitmap dispose : ".concat((String)localObject1);
        }
      }
      else
      {
        localObject1 = localObject3;
        if (!h)
        {
          localObject1 = localObject3;
          if (d != null) {
            localObject1 = d;
          }
        }
        i = (-i);
        d = null;
        return (Bitmap)localObject1;
      }
      new String("RefcountedBitmap dispose : ");
    }
  }
  
  public Bitmap d()
  {
    synchronized (c)
    {
      Object localObject2;
      if (b)
      {
        localObject2 = String.valueOf(toString());
        if (((String)localObject2).length() != 0) {
          "RefcountedBitmap getBitmapWithoutRefcount : ".concat((String)localObject2);
        }
      }
      else
      {
        j();
        localObject2 = d;
        h = true;
        b();
        return (Bitmap)localObject2;
      }
      new String("RefcountedBitmap getBitmapWithoutRefcount : ");
    }
  }
  
  public Bitmap e()
  {
    j();
    return d;
  }
  
  Bitmap f()
  {
    return d;
  }
  
  public boolean g()
  {
    return (d != null) && (d.isMutable());
  }
  
  public String h()
  {
    return g;
  }
  
  public int i()
  {
    return e;
  }
  
  public String toString()
  {
    int j = i;
    int k = e;
    String str1 = g;
    boolean bool = h;
    int m = f;
    String str2 = String.valueOf(d);
    return String.valueOf(str1).length() + 98 + String.valueOf(str2).length() + "RefCountedBitmap id=" + j + " count=" + k + " key=" + str1 + " dontreturn=" + bool + " size=" + m + " bitmap = " + str2;
  }
}

/* Location:
 * Qualified Name:     eys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */