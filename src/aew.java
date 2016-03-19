import android.text.TextUtils;

public final class aew
  implements aez
{
  private final String a;
  
  public aew(String paramString)
  {
    a = paramString;
  }
  
  public afb a()
  {
    return afb.m;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof aew)) {
      return false;
    }
    paramObject = (aew)paramObject;
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
      return "anniversary: ".concat(str);
    }
    return new String("anniversary: ");
  }
}

/* Location:
 * Qualified Name:     aew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */