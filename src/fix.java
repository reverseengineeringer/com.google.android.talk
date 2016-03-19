import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.signin.internal.AuthAccountResult;
import java.lang.ref.WeakReference;

final class fix
  extends gqg
{
  private final WeakReference<fiv> a;
  
  fix(fiv paramfiv)
  {
    a = new WeakReference(paramfiv);
  }
  
  public void a(ConnectionResult paramConnectionResult, AuthAccountResult paramAuthAccountResult)
  {
    paramAuthAccountResult = (fiv)a.get();
    if (paramAuthAccountResult == null) {
      return;
    }
    a.a(new fiy(this, paramAuthAccountResult, paramAuthAccountResult, paramConnectionResult));
  }
}

/* Location:
 * Qualified Name:     fix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */