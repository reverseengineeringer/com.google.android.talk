import android.os.Bundle;

public final class iaq
{
  String a;
  hzq b;
  private boolean c = true;
  private boolean d = false;
  private boolean e = true;
  private boolean f = false;
  
  public iaq a()
  {
    c = false;
    return this;
  }
  
  public iaq a(hzq paramhzq)
  {
    b = paramhzq;
    return this;
  }
  
  public iaq a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public iaq b()
  {
    e = false;
    return this;
  }
  
  public Bundle c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("dialog_title", a);
    localBundle.putBoolean("add_account", c);
    localBundle.putBoolean("add_account_button_shown", d);
    localBundle.putBoolean("auto_select_single_logged_out_account", e);
    localBundle.putBoolean("never_auto_select_single_account", f);
    localBundle.putParcelable("account_filter", b);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     iaq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */