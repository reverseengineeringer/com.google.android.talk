import android.util.Log;

public final class gls
{
  private fij<fim> a(fic paramfic, glt paramglt, String paramString1, String paramString2, int paramInt)
  {
    return paramfic.a(new gdg(this, paramfic, paramfic, paramglt, paramString1, null, 8));
  }
  
  public fij<fim> a(fic paramfic, glt paramglt)
  {
    if (Log.isLoggable("PeopleClientCall", 3)) {
      aal.a("unregisterOnDataChangedListener", new Object[0]);
    }
    return paramfic.a(new gdh(this, paramfic, paramfic, paramglt));
  }
  
  public fij<fim> a(int paramInt)
  {
    String str;
    if (Log.isLoggable("PeopleClientCall", 3)) {
      aal.a("registerOnDataChangedListenerForOwner", new Object[] { str, null, Integer.valueOf(8) });
    }
    glt localglt;
    return a(paramInt, localglt, str, null, 8);
  }
}

/* Location:
 * Qualified Name:     gls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */