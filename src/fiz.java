import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;

public final class fiz
  extends fjo
{
  public fiz(fme paramfme, fjs paramfjs, fiv paramfiv, ResolveAccountResponse paramResolveAccountResponse)
  {
    super(paramfjs);
  }
  
  public void a()
  {
    fiv localfiv = a;
    ResolveAccountResponse localResolveAccountResponse = b;
    ConnectionResult localConnectionResult;
    if (localfiv.b(0))
    {
      localConnectionResult = localResolveAccountResponse.b();
      if (localConnectionResult.b())
      {
        g = localResolveAccountResponse.a();
        f = true;
        h = localResolveAccountResponse.c();
        i = localResolveAccountResponse.d();
        localfiv.f();
      }
    }
    else
    {
      return;
    }
    if (localfiv.a(localConnectionResult))
    {
      localfiv.i();
      localfiv.f();
      return;
    }
    localfiv.b(localConnectionResult);
  }
}

/* Location:
 * Qualified Name:     fiz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */