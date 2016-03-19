import android.content.Intent;
import android.os.Bundle;

public class ikb
  implements inl, ioz
{
  public rf b;
  public ijj c;
  
  public ikb(rf paramrf, iog paramiog)
  {
    this(paramrf, paramiog, (byte)0);
  }
  
  private ikb(rf paramrf, iog paramiog, byte paramByte)
  {
    b = paramrf;
    c = null;
    paramiog.a(this);
  }
  
  public Bundle a(Intent paramIntent)
  {
    return null;
  }
  
  public ijj a()
  {
    return c;
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      paramBundle = a();
      if (paramBundle == null) {
        throw new IllegalStateException("A PreferenceFragment must be provided!");
      }
      Bundle localBundle = a(b.getIntent());
      if (localBundle != null) {
        paramBundle.setArguments(localBundle);
      }
      b.C_().a().a(fkr.j, paramBundle).b();
    }
  }
}

/* Location:
 * Qualified Name:     ikb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */