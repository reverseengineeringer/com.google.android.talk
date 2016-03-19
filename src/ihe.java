import android.util.Log;

public final class ihe
  implements ihh
{
  public static final imw a = new imw("debug.social.rpc.debug_log");
  
  private static boolean a(String paramString, int paramInt)
  {
    boolean bool = false;
    if (!Log.isLoggable("HttpOperation", paramInt))
    {
      String str = paramString;
      if (paramString != null)
      {
        str = paramString;
        if (paramString.length() > 23) {
          str = paramString.substring(0, 23);
        }
      }
      if (!Log.isLoggable(str, paramInt)) {}
    }
    else
    {
      bool = true;
    }
    return bool;
  }
  
  public void a(String paramString1, ihp paramihp, int paramInt, String paramString2) {}
  
  public boolean a(String paramString)
  {
    return a(paramString, 3);
  }
  
  public boolean b(String paramString)
  {
    return a(paramString, 2);
  }
  
  public void c(String paramString)
  {
    if (paramString != null) {
      aal.b(3, "HttpOperation", paramString);
    }
  }
  
  public void d(String paramString)
  {
    if (paramString != null) {
      aal.b(2, "HttpOperation", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     ihe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */