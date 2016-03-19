import android.content.Context;
import android.util.Log;

final class ibu
  extends htu
{
  private final ibw a;
  
  ibu(String paramString, ibw paramibw)
  {
    super(paramString);
    a = paramibw;
  }
  
  protected hus a(Context paramContext)
  {
    try
    {
      paramContext = ibp.a(a.b());
      return paramContext;
    }
    catch (hqn paramContext)
    {
      String str = String.valueOf(paramContext);
      Log.e("LoginHelperFragment", String.valueOf(str).length() + 29 + "Device accounts load failed: " + str);
    }
    return new hus(0, paramContext, null);
  }
}

/* Location:
 * Qualified Name:     ibu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */