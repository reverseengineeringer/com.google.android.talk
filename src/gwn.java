import android.accounts.AuthenticatorException;
import android.content.Context;

final class gwn
  implements gwi
{
  gwn() {}
  
  gwn(byte paramByte)
  {
    this();
  }
  
  public String a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext = fgk.c(paramContext, paramString1, paramString2);
      return paramContext;
    }
    catch (fgj paramContext)
    {
      throw new AuthenticatorException("Cannot get Oauth2 token from GMS", paramContext);
    }
  }
  
  public void a(Context paramContext, String paramString)
  {
    try
    {
      fgk.b(paramContext, paramString);
      return;
    }
    catch (fgl paramContext)
    {
      throw new AuthenticatorException("Cannot invalidate token", paramContext);
    }
    catch (fgj paramContext)
    {
      throw new AuthenticatorException("Cannot invalidate token", paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     gwn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */