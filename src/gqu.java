import android.os.RemoteException;
import android.util.Log;

final class gqu
  implements Runnable
{
  gqu(gqs paramgqs, String paramString1, String paramString2, gqn paramgqn) {}
  
  public void run()
  {
    try
    {
      boolean bool = d.a.d().l();
      c.a(bool);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("SignInClientImpl", "RemoteException thrown when processing uploadServerAuthCode callback", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     gqu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */