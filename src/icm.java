import android.content.Intent;
import android.os.Bundle;

public final class icm
{
  private Intent a;
  private boolean b;
  private hzq c;
  
  public icm a()
  {
    b = true;
    return this;
  }
  
  public icm a(Intent paramIntent)
  {
    a = paramIntent;
    return this;
  }
  
  public icm a(hzq paramhzq)
  {
    c = paramhzq;
    return this;
  }
  
  public av b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("allow_no_accounts", b);
    localBundle.putParcelable("account_filter", c);
    localBundle.putParcelable("account_intent", a);
    icj localicj = new icj();
    localicj.setArguments(localBundle);
    return localicj;
  }
}

/* Location:
 * Qualified Name:     icm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */