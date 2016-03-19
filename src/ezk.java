import android.text.TextUtils;
import java.io.Serializable;

public final class ezk
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final String a;
  private final hos b;
  private final boolean c;
  private Boolean d;
  private String e;
  private Long f;
  private String g;
  
  public ezk(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, false);
  }
  
  ezk(String paramString1, String paramString2, boolean paramBoolean)
  {
    b = ezl.a.a(paramString1, paramString2);
    a = paramString2;
    c = paramBoolean;
    paramString2 = null;
    int i = 0;
    if (i < paramString1.length())
    {
      char c1 = paramString1.charAt(i);
      Object localObject;
      if (Character.isLetter(c1))
      {
        localObject = paramString2;
        if (paramString2 == null) {
          localObject = new StringBuilder();
        }
        ((StringBuilder)localObject).append(c1);
      }
      do
      {
        i += 1;
        paramString2 = (String)localObject;
        break;
        localObject = paramString2;
      } while (!Character.isDigit(c1));
    }
    if (paramString2 != null) {
      g = paramString2.toString();
    }
  }
  
  public hoo a(ezk paramezk)
  {
    boolean bool;
    if (g == null) {
      if (g == null) {
        bool = true;
      }
    }
    while (!bool)
    {
      return hoo.b;
      bool = false;
      continue;
      bool = g.equalsIgnoreCase(g);
    }
    return ezl.a.a(b, b);
  }
  
  public String a(int paramInt)
  {
    return ezl.a.a(b, paramInt);
  }
  
  public boolean a()
  {
    return c;
  }
  
  public boolean a(String paramString)
  {
    return TextUtils.equals(a, paramString);
  }
  
  public int b(String paramString)
  {
    String str = f();
    if (str == null) {}
    for (;;)
    {
      return ezl.a.e(paramString);
      paramString = str;
    }
  }
  
  public boolean b()
  {
    return hox.a.a(Long.toString(b.b()), (String)knq.c(a).a(ezm.i()));
  }
  
  public hos c()
  {
    return b;
  }
  
  public boolean d()
  {
    if (d == null) {
      d = Boolean.valueOf(ezl.a.b(b));
    }
    return aal.a(d, false);
  }
  
  public long e()
  {
    if (f == null) {
      f = Long.valueOf(b.b());
    }
    return aal.a(f, 0L);
  }
  
  public String f()
  {
    if (e == null) {
      e = ezl.a.c(b);
    }
    return e;
  }
}

/* Location:
 * Qualified Name:     ezk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */