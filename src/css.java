import android.os.Bundle;

public final class css
{
  String a;
  String b;
  
  public Bundle a()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("account_name", a);
    localBundle.putString("effective_gaia_id", b);
    return localBundle;
  }
  
  public css a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public css b(String paramString)
  {
    b = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     css
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */