import android.content.Context;
import android.os.Bundle;

final class ibr
  extends htu
{
  private final ibw a;
  
  public ibr(String paramString, ibw paramibw)
  {
    super(paramString);
    a = paramibw;
  }
  
  protected hus a(Context paramContext)
  {
    boolean bool = a.a();
    paramContext = new hus(true);
    paramContext.d().putBoolean("are_accounts_ready_for_login", bool);
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     ibr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */