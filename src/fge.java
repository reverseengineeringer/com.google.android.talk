import java.util.regex.Pattern;

public final class fge
  implements Comparable
{
  public static final fge e = new fge();
  public final String a;
  public final String b;
  public final String c;
  public final boolean d;
  
  private fge()
  {
    a = "DEFAULT";
    b = "";
    c = null;
    d = false;
  }
  
  public fge(String paramString1, String paramString2)
  {
    a = paramString1;
    String[] arrayOfString = fgd.a.split(paramString2);
    if (arrayOfString.length == 0) {
      throw new fgf("Empty rule");
    }
    b = arrayOfString[0];
    paramString1 = null;
    boolean bool = false;
    int i = 1;
    while (i < arrayOfString.length)
    {
      String str = arrayOfString[i].toLowerCase();
      if ((str.equals("rewrite")) && (i + 1 < arrayOfString.length))
      {
        paramString1 = arrayOfString[(i + 1)];
        i += 2;
      }
      else if (str.equals("block"))
      {
        i += 1;
        bool = true;
      }
      else
      {
        throw new fgf("Illegal rule: " + paramString2);
      }
    }
    c = paramString1;
    d = bool;
  }
  
  public String a(String paramString)
  {
    String str;
    if (d) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (c == null);
    return c + paramString.substring(b.length());
  }
  
  public int compareTo(Object paramObject)
  {
    return b.compareTo(b);
  }
}

/* Location:
 * Qualified Name:     fge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */