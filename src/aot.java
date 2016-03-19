import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

public class aot
  implements aiw
{
  private final aou b;
  private final URL c;
  private final String d;
  private String e;
  private URL f;
  private volatile byte[] g;
  
  public aot(String paramString)
  {
    this(paramString, aou.b);
  }
  
  public aot(String paramString, aou paramaou)
  {
    c = null;
    d = aal.e(paramString);
    b = ((aou)aal.a(paramaou, "Argument must not be null"));
  }
  
  public aot(URL paramURL)
  {
    this(paramURL, aou.b);
  }
  
  private aot(URL paramURL, aou paramaou)
  {
    c = ((URL)aal.a(paramURL, "Argument must not be null"));
    d = null;
    b = ((aou)aal.a(paramaou, "Argument must not be null"));
  }
  
  public URL a()
  {
    if (f == null)
    {
      if (TextUtils.isEmpty(e))
      {
        String str2 = d;
        String str1 = str2;
        if (TextUtils.isEmpty(str2)) {
          str1 = c.toString();
        }
        e = Uri.encode(str1, "@#&=*+-_.,:!?()/~'%");
      }
      f = new URL(e);
    }
    return f;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    if (g == null) {
      g = c().getBytes(a);
    }
    paramMessageDigest.update(g);
  }
  
  public Map<String, String> b()
  {
    return b.a();
  }
  
  public String c()
  {
    if (d != null) {
      return d;
    }
    return c.toString();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof aot))
    {
      paramObject = (aot)paramObject;
      bool1 = bool2;
      if (c().equals(((aot)paramObject).c()))
      {
        bool1 = bool2;
        if (b.equals(b)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return c().hashCode() * 31 + b.hashCode();
  }
  
  public String toString()
  {
    return c();
  }
}

/* Location:
 * Qualified Name:     aot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */