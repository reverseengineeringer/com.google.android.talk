import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.AuthAccountRequest;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.signin.internal.AuthAccountResult;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public final class gqr
  extends flc<gqn>
  implements gra
{
  private final boolean e;
  private final fkq f;
  private final gqd g;
  private Integer h;
  private final ExecutorService i;
  
  public gqr(Context paramContext, Looper paramLooper, boolean paramBoolean, fkq paramfkq, fif paramfif, fih paramfih, ExecutorService paramExecutorService)
  {
    super(paramContext, paramLooper, 44, paramfkq, paramfif, paramfih);
    e = paramBoolean;
    f = paramfkq;
    g = paramfkq.i();
    h = paramfkq.j();
    i = paramExecutorService;
  }
  
  protected String a()
  {
    return "com.google.android.gms.signin.service.START";
  }
  
  public void a(fks paramfks, Set<Scope> paramSet, gqk paramgqk)
  {
    aal.b(paramgqk, "Expecting a valid ISignInCallbacks");
    try
    {
      ((gqn)m()).a(new AuthAccountRequest(paramfks, paramSet), paramgqk);
      return;
    }
    catch (RemoteException paramfks)
    {
      try
      {
        paramgqk.a(new ConnectionResult(8, null), new AuthAccountResult());
        return;
      }
      catch (RemoteException paramfks)
      {
        Log.wtf("SignInClientImpl", "ISignInCallbacks#onAuthAccount should be executed from the same process, unexpected RemoteException.");
      }
    }
  }
  
  public void a(fks paramfks, boolean paramBoolean)
  {
    try
    {
      ((gqn)m()).a(paramfks, h.intValue(), paramBoolean);
      return;
    }
    catch (RemoteException paramfks) {}
  }
  
  public void a(fmd paramfmd)
  {
    aal.b(paramfmd, "Expecting a valid IResolveAccountCallbacks");
    try
    {
      Account localAccount = f.c();
      ((gqn)m()).a(new ResolveAccountRequest(localAccount, h.intValue()), paramfmd);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      try
      {
        paramfmd.a(new ResolveAccountResponse());
        return;
      }
      catch (RemoteException paramfmd)
      {
        Log.wtf("SignInClientImpl", "IResolveAccountCallbacks#onAccountResolutionComplete should be executed from the same process, unexpected RemoteException.");
      }
    }
  }
  
  protected String b()
  {
    return "com.google.android.gms.signin.internal.ISignInService";
  }
  
  public boolean e()
  {
    return e;
  }
  
  protected Bundle j()
  {
    Object localObject = g;
    Integer localInteger = f.j();
    ExecutorService localExecutorService = i;
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", ((gqd)localObject).a());
    localBundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", ((gqd)localObject).b());
    localBundle.putString("com.google.android.gms.signin.internal.serverClientId", ((gqd)localObject).c());
    if (((gqd)localObject).d() != null) {
      localBundle.putParcelable("com.google.android.gms.signin.internal.signInCallbacks", new BinderWrapper(new gqs((gqd)localObject, localExecutorService).asBinder()));
    }
    if (localInteger != null) {
      localBundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", localInteger.intValue());
    }
    localObject = f.g();
    if (!a.getPackageName().equals(localObject)) {
      localBundle.putString("com.google.android.gms.signin.internal.realClientPackageName", f.g());
    }
    return localBundle;
  }
  
  public void o()
  {
    try
    {
      ((gqn)m()).a(h.intValue());
      return;
    }
    catch (RemoteException localRemoteException) {}
  }
  
  public void p()
  {
    a(new fli(this));
  }
}

/* Location:
 * Qualified Name:     gqr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */