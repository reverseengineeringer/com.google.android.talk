import android.text.TextUtils;

public final class afe
  implements aez
{
  private final String a;
  
  public afe(String paramString)
  {
    a = paramString;
  }
  
  public afb a()
  {
    return afb.j;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof afe)) {
      return false;
    }
    paramObject = (afe)paramObject;
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
      return "nickname: ".concat(str);
    }
    return new String("nickname: ");
  }
}

/* Location:
 * Qualified Name:     afe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */