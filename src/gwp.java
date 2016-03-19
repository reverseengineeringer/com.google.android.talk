import android.accounts.Account;
import android.content.Context;
import android.os.Build.VERSION;

final class gwp
  extends gwo
{
  public gwp(Context paramContext)
  {
    super(paramContext);
  }
  
  public Account[] a(String paramString)
  {
    if (Build.VERSION.SDK_INT <= 22) {
      return super.a(paramString);
    }
    try
    {
      paramString = fgk.c(a, paramString);
      return paramString;
    }
    catch (fhq paramString)
    {
      throw new gxh(paramString.a(), paramString.getMessage(), paramString.b(), paramString);
    }
    catch (fhp paramString)
    {
      throw new gxg(a, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     gwp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */