import android.text.TextUtils;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;

public final class dkc
  implements Serializable
{
  private static final boolean a = false;
  private final String b;
  private final boolean c;
  private final boolean d;
  private final boolean e;
  private final int f;
  private boolean g;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  private dkc(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt, boolean paramBoolean3)
  {
    b = paramString;
    c = paramBoolean1;
    e = paramBoolean2;
    f = paramInt;
    d = paramBoolean3;
  }
  
  public dkc(kcs paramkcs)
  {
    g = false;
    b = a.a;
    if (TextUtils.isEmpty(b)) {
      ezi.e("Babel", "Phone number should not be empty", new Object[0]);
    }
    c = aal.a(b, false);
    d = aal.a(f, false);
    boolean bool;
    if ((c != null) && (aal.a(c, 0) == 1))
    {
      bool = true;
      e = bool;
      if (a)
      {
        String str1 = b;
        String str2 = String.valueOf(e);
        new StringBuilder(String.valueOf(str1).length() + 29 + String.valueOf(str2).length()).append("Discoverability status for ").append(str1).append(": ").append(str2);
      }
      switch (aal.a(e, 0))
      {
      case 2: 
      default: 
        f = 0;
      }
    }
    for (;;)
    {
      paramkcs = (hba)ilh.a(aal.oJ, hba.class);
      if (e) {
        paramkcs.a(-1).a(1616).a(TimeUnit.DAYS);
      }
      if (g) {
        paramkcs.a(-1).a(1617).a(TimeUnit.DAYS);
      }
      return;
      bool = false;
      break;
      f = 1;
      g = true;
      continue;
      f = 2;
    }
  }
  
  public static dkc a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    String[] arrayOfString = paramString.split(",");
    if (arrayOfString.length != 5)
    {
      String str = String.valueOf("Phone verification state is ignored due to changed format. Expected 5 parts, but got ");
      int i = arrayOfString.length;
      ezi.d("Babel", String.valueOf(str).length() + 26 + String.valueOf(paramString).length() + str + i + "; input was: [" + paramString + "]", new Object[0]);
      return null;
    }
    return new dkc(arrayOfString[0], Boolean.parseBoolean(arrayOfString[1]), Boolean.parseBoolean(arrayOfString[2]), Integer.parseInt(arrayOfString[3]), Boolean.parseBoolean(arrayOfString[4]));
  }
  
  public String a()
  {
    return b;
  }
  
  public boolean b()
  {
    return e;
  }
  
  public boolean c()
  {
    return (e) && (f == 1);
  }
  
  public boolean d()
  {
    return c;
  }
  
  public boolean e()
  {
    return d;
  }
  
  public String toString()
  {
    return b + "," + String.valueOf(c) + "," + String.valueOf(e) + "," + String.valueOf(f) + "," + String.valueOf(d);
  }
}

/* Location:
 * Qualified Name:     dkc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */