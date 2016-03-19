import android.text.TextUtils;

public final class aff
  implements aez
{
  public final String a;
  
  public aff(String paramString)
  {
    a = paramString;
  }
  
  public afb a()
  {
    return afb.k;
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
    if (!(paramObject instanceof aff)) {
      return false;
    }
    paramObject = (aff)paramObject;
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
      return "note: ".concat(str);
    }
    return new String("note: ");
  }
}

/* Location:
 * Qualified Name:     aff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */