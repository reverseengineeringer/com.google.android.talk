import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.signin.internal.CheckServerAuthResult;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

final class gqt
  implements Runnable
{
  gqt(gqs paramgqs, List paramList, String paramString, gqn paramgqn) {}
  
  public void run()
  {
    try
    {
      Object localObject = d.a.d();
      Collections.unmodifiableSet(new HashSet(a));
      localObject = ((a)localObject).k();
      localObject = new CheckServerAuthResult(((fii)localObject).a(), ((fii)localObject).b());
      c.a((CheckServerAuthResult)localObject);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("SignInClientImpl", "RemoteException thrown when processing checkServerAuthorization callback", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     gqt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */