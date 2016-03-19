import android.net.Uri;
import android.text.TextUtils;

public class eyd
  extends eyg
{
  private int a = -1;
  private int e = -1;
  private int f;
  private int g;
  private boolean h;
  private boolean i;
  private int j;
  private boolean k;
  private boolean l;
  private beo m;
  private boolean n;
  
  public eyd(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public static StringBuilder a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean3)
    {
      localStringBuilder.append("d");
      localStringBuilder.append("-ip");
      return localStringBuilder;
    }
    if (paramInt2 == paramInt1)
    {
      localStringBuilder.append("s").append(paramInt1);
      if (paramBoolean1) {
        localStringBuilder.append("-c");
      }
    }
    for (;;)
    {
      if (paramBoolean2) {
        localStringBuilder.append("-k");
      }
      localStringBuilder.append("-no");
      return localStringBuilder;
      localStringBuilder.append("w").append(paramInt1).append("-h").append(paramInt2);
      if (paramBoolean1) {
        localStringBuilder.append("-n");
      }
    }
  }
  
  public eyd a(int paramInt)
  {
    g = paramInt;
    f = paramInt;
    return this;
  }
  
  public eyd a(int paramInt1, int paramInt2)
  {
    g = paramInt1;
    f = paramInt2;
    return this;
  }
  
  public eyd a(beo parambeo)
  {
    m = parambeo;
    return this;
  }
  
  public eyd a(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  public void a()
  {
    String str1;
    if (TextUtils.isEmpty(n())) {
      str1 = null;
    }
    Object localObject;
    label60:
    label123:
    int i1;
    label162:
    label219:
    label227:
    do
    {
      for (;;)
      {
        b = str1;
        localObject = a(g, f, h, k, d);
        if (m != beo.c) {
          break label376;
        }
        ((StringBuilder)localObject).append("-gvsms");
        if (l) {
          ((StringBuilder)localObject).append("-force");
        }
        if (n) {
          ((StringBuilder)localObject).append("-rounded");
        }
        str1 = String.valueOf(n());
        localObject = String.valueOf(((StringBuilder)localObject).toString());
        if (((String)localObject).length() == 0) {
          break label397;
        }
        str1 = str1.concat((String)localObject);
        c = str1;
        return;
        if (!n().startsWith("content://")) {
          break;
        }
        str1 = n();
      }
      if (e == -1)
      {
        i1 = g;
        if (a != -1) {
          break label219;
        }
      }
      for (int i2 = f;; i2 = a)
      {
        str1 = n();
        localObject = a(i1, i2, h, k, d);
        if (!TextUtils.isEmpty(str1)) {
          break label227;
        }
        str1 = null;
        break;
        i1 = e;
        break label162;
      }
    } while (eia.a(str1));
    String str2 = Uri.parse(str1).getScheme();
    if (TextUtils.equals(str2, "content")) {
      i1 = 1;
    }
    for (;;)
    {
      if (i1 != 0) {
        localObject = String.valueOf(((StringBuilder)localObject).toString());
      }
      for (str1 = String.valueOf(str1).length() + 1 + String.valueOf(localObject).length() + str1 + "?" + (String)localObject;; str1 = dhr.a(((StringBuilder)localObject).toString(), str1).toString())
      {
        break;
        if (str2 != null) {
          break label409;
        }
        str1 = String.valueOf(str1);
        if (str1.length() != 0) {}
        for (str1 = "https:".concat(str1);; str1 = new String("https:"))
        {
          i1 = 0;
          break;
        }
      }
      label376:
      if (m != beo.b) {
        break label60;
      }
      ((StringBuilder)localObject).append("-sms");
      break label60;
      label397:
      str1 = new String(str1);
      break label123;
      label409:
      i1 = 0;
    }
  }
  
  public eyd b()
  {
    j = 0;
    return this;
  }
  
  public eyd b(int paramInt1, int paramInt2)
  {
    e = paramInt1;
    a = paramInt2;
    return this;
  }
  
  public eyd b(boolean paramBoolean)
  {
    n = paramBoolean;
    return this;
  }
  
  public eyd c()
  {
    d = true;
    return this;
  }
  
  public eyd c(boolean paramBoolean)
  {
    i = paramBoolean;
    return this;
  }
  
  public int d()
  {
    return g;
  }
  
  public eyd d(boolean paramBoolean)
  {
    k = paramBoolean;
    return this;
  }
  
  public int e()
  {
    return f;
  }
  
  public eyd e(boolean paramBoolean)
  {
    l = paramBoolean;
    return this;
  }
  
  public boolean f()
  {
    return h;
  }
  
  public boolean g()
  {
    return i;
  }
  
  public int h()
  {
    return j;
  }
  
  public boolean i()
  {
    return n;
  }
  
  public boolean j()
  {
    return k;
  }
  
  public boolean k()
  {
    return l;
  }
  
  public boolean l()
  {
    return (m != null) && (m != beo.a);
  }
  
  public beo m()
  {
    return m;
  }
}

/* Location:
 * Qualified Name:     eyd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */