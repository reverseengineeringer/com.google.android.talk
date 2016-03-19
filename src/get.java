import android.content.Context;
import android.content.Intent;

public final class get
{
  private final Intent a = new Intent("com.google.android.gms.location.places.ui.PICK_PLACE");
  
  public get()
  {
    a.setPackage("com.google.android.gms");
    a.putExtra("gmscore_client_jar_version", fho.a);
  }
  
  @Deprecated
  public Intent a(Context paramContext)
  {
    fho localfho = fho.b;
    fho.b(paramContext);
    return a;
  }
  
  public void a(String paramString)
  {
    a.putExtra("account_name", paramString);
  }
}

/* Location:
 * Qualified Name:     get
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */