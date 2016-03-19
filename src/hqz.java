import android.content.SharedPreferences;
import java.util.Collections;
import java.util.Set;

final class hqz
  implements hqb
{
  private final String b;
  
  hqz(hqq paramhqq, int paramInt)
  {
    this(paramhqq, Integer.toString(paramInt));
  }
  
  private hqz(hqq paramhqq, String paramString)
  {
    b = String.valueOf(paramString).concat(".");
  }
  
  private String f(String paramString)
  {
    String str = String.valueOf(b);
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  public float a(String paramString, float paramFloat)
  {
    paramString = f(paramString);
    return a.b.getFloat(paramString, paramFloat);
  }
  
  public int a(String paramString, int paramInt)
  {
    paramString = f(paramString);
    return a.b.getInt(paramString, paramInt);
  }
  
  public long a(String paramString, long paramLong)
  {
    paramString = f(paramString);
    return a.b.getLong(paramString, paramLong);
  }
  
  public String a(String paramString1, String paramString2)
  {
    paramString1 = f(paramString1);
    return a.b.getString(paramString1, paramString2);
  }
  
  public boolean a()
  {
    return d("logged_in");
  }
  
  public boolean a(String paramString)
  {
    paramString = f(paramString);
    return a.b.contains(paramString);
  }
  
  public boolean a(String paramString, boolean paramBoolean)
  {
    paramString = f(paramString);
    return a.b.getBoolean(paramString, paramBoolean);
  }
  
  public String b(String paramString)
  {
    return a(paramString, null);
  }
  
  public boolean b()
  {
    return d("logged_out");
  }
  
  public Set<String> c()
  {
    Object localObject = f((String)localObject);
    localObject = a.b.getStringSet((String)localObject, null);
    if (localObject == null) {
      return null;
    }
    return Collections.unmodifiableSet((Set)localObject);
  }
  
  public boolean d(String paramString)
  {
    return a(paramString, false);
  }
  
  public hqb e(String paramString)
  {
    hqq localhqq = a;
    String str = String.valueOf(b);
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = str.concat(paramString);; paramString = new String(str)) {
      return new hqz(localhqq, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     hqz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */