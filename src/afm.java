import android.text.TextUtils;

public final class afm
  implements aez
{
  private final String a;
  
  public afm(String paramString)
  {
    a = paramString;
  }
  
  public afb a()
  {
    return afb.h;
  }
  
  public String b()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof afm)) {
      return false;
    }
    paramObject = (afm)paramObject;
    return TextUtils.equals(a, a);
  }
  
  public int hashCode()
  {
    if (a != null) {
      return a.hashCode();
    }
    return 0;
  }
  
  public String toString()
  {
    String str = String.valueOf(a);
    if (str.length() != 0) {
      return "website: ".concat(str);
    }
    return new String("website: ");
  }
}

/* Location:
 * Qualified Name:     afm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */