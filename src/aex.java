import android.text.TextUtils;

public final class aex
  implements aez
{
  public final String a;
  
  public aex(String paramString)
  {
    a = paramString;
  }
  
  public afb a()
  {
    return afb.l;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof aex)) {
      return false;
    }
    paramObject = (aex)paramObject;
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
      return "birthday: ".concat(str);
    }
    return new String("birthday: ");
  }
}

/* Location:
 * Qualified Name:     aex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */