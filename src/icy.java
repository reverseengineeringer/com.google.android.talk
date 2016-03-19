import android.graphics.RectF;

public class icy
  extends igq
{
  private icy a;
  icu b;
  int c;
  int d;
  public int e;
  int f;
  RectF g;
  a h;
  private int k;
  
  public icy()
  {
    super((byte)0);
  }
  
  public void a(icy paramicy)
  {
    a = paramicy;
  }
  
  public void b(int paramInt1, icu paramicu, int paramInt2, int paramInt3, int paramInt4)
  {
    a(paramInt1, paramicu.f());
    b = paramicu;
    c = 0;
    d = paramInt4;
    e = paramInt2;
    f = paramInt3;
    g = null;
    h = null;
    k = 0;
  }
  
  public String c()
  {
    switch (c)
    {
    default: 
      return "";
    case 0: 
      i = e;
      j = f;
      return 23 + i + "x" + j;
    case 2: 
      return "thumbnail";
    case 3: 
      return "large";
    case 1: 
      return "full";
    case 4: 
      return "original";
    }
    int i = e;
    int j = f;
    return 29 + "auto(" + i + "x" + j + ")";
  }
  
  public int d()
  {
    int i = Math.max(e, f);
    if ((i == 0) || (i > icw.d)) {
      return 6;
    }
    if (i > icw.e) {
      return 7;
    }
    return 8;
  }
  
  protected String e()
  {
    switch (c)
    {
    }
    do
    {
      return "";
    } while (d == -1);
    String str;
    switch (d)
    {
    default: 
      str = "";
    }
    for (;;)
    {
      str = String.valueOf(str);
      if (str.length() == 0) {
        break;
      }
      return "-".concat(str);
      str = "H";
      continue;
      str = "S";
      continue;
      str = "L";
      continue;
      str = "VL";
    }
    return new String("-");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    label125:
    label204:
    label238:
    for (;;)
    {
      return true;
      if (!(paramObject instanceof icy)) {
        return false;
      }
      paramObject = (icy)paramObject;
      int i;
      a locala1;
      a locala2;
      boolean bool;
      if ((this.i == i) && (d == d) && (b.equals(b)))
      {
        if (c == c) {
          break label125;
        }
        i = 0;
        if (i != 0)
        {
          locala1 = h;
          locala2 = h;
          if ((locala1 != null) || (locala2 != null)) {
            break label204;
          }
          bool = true;
        }
      }
      for (;;)
      {
        if ((bool) && ((g == null) || (g.equals(g)))) {
          break label238;
        }
        return false;
        switch (c)
        {
        }
        do
        {
          do
          {
            i = 1;
            break;
          } while (d() == ((icy)paramObject).d());
          i = 0;
          break;
        } while ((e == e) && (f == f));
        i = 0;
        break;
        if (((locala1 == null) && (locala2 != null)) || ((locala1 != null) && (locala2 == null))) {
          bool = false;
        } else {
          bool = locala1.s();
        }
      }
    }
  }
  
  protected String f()
  {
    if (g != null)
    {
      float f1 = g.left;
      float f2 = g.top;
      float f3 = g.right;
      float f4 = g.bottom;
      return 74 + ", crop(" + f1 + ", " + f2 + ", " + f3 + ", " + f4 + ")";
    }
    return "";
  }
  
  protected String g()
  {
    Object localObject1 = "";
    if ((i & 0x1) != 0) {
      localObject1 = String.valueOf("").concat(" no-disk-cache");
    }
    Object localObject2 = localObject1;
    if ((i & 0x2) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" download-only");
    }
    localObject1 = localObject2;
    if ((i & 0x4) != 0)
    {
      localObject2 = String.valueOf(localObject2).concat(" accept-animation");
      localObject1 = localObject2;
      if ((i & 0x20) != 0) {
        localObject1 = String.valueOf(localObject2).concat("-disable-webp");
      }
    }
    localObject2 = localObject1;
    if ((i & 0x8) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" disable-decoding");
    }
    localObject1 = localObject2;
    if ((i & 0x10) != 0) {
      localObject1 = String.valueOf(localObject2).concat(" disable-recycling");
    }
    localObject2 = localObject1;
    if ((i & 0x20) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" disable-webp");
    }
    localObject1 = localObject2;
    if ((i & 0x40) != 0) {
      localObject1 = String.valueOf(localObject2).concat(" accept-bitmap-container");
    }
    localObject2 = localObject1;
    if ((i & 0x80) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" disable-loading");
    }
    localObject1 = localObject2;
    if ((i & 0x100) != 0) {
      localObject1 = String.valueOf(localObject2).concat(" disable-smart-crop");
    }
    localObject2 = localObject1;
    if ((i & 0x200) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" disable-upscale");
    }
    localObject1 = localObject2;
    if ((i & 0x400) != 0) {
      localObject1 = String.valueOf(localObject2).concat(" long-term-cache");
    }
    localObject2 = localObject1;
    if ((i & 0x800) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" keep-partial-download");
    }
    localObject1 = localObject2;
    if ((i & 0x1000) != 0) {
      localObject1 = String.valueOf(localObject2).concat(" disable-automatic-high-res-download");
    }
    localObject2 = localObject1;
    if ((i & 0x2000) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" allow-large-file-download");
    }
    localObject1 = localObject2;
    if ((i & 0x4000) != 0) {
      localObject1 = String.valueOf(localObject2).concat(" for-media-sync");
    }
    localObject2 = localObject1;
    if ((i & 0x8000) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" prefer-high-res-download");
    }
    localObject1 = localObject2;
    if ((i & 0x10000) != 0) {
      localObject1 = String.valueOf(localObject2).concat(" convert-webp-to-jpeg");
    }
    localObject2 = localObject1;
    if ((i & 0x20000) != 0) {
      localObject2 = String.valueOf(localObject1).concat(" include-exif");
    }
    return (String)localObject2;
  }
  
  public icy h()
  {
    return a;
  }
  
  public int hashCode()
  {
    if (k == 0) {
      k = aal.a(b, c + aal.a(g, i + 527) * 31);
    }
    return k;
  }
  
  public String toString()
  {
    String str1 = c();
    String str2 = e();
    String str3 = f();
    String str4 = g();
    if (h != null) {}
    for (boolean bool = true;; bool = false)
    {
      String str5 = String.valueOf(b);
      return String.valueOf(str5).length() + 22 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "{" + str5 + " (" + str1 + str2 + str3 + ") hasEdits: " + bool + " " + str4 + "}";
    }
  }
}

/* Location:
 * Qualified Name:     icy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */