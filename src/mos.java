import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.os.Handler;
import java.io.IOException;
import org.chromium.base.ContextUtils;
import org.chromium.base.ThreadUtils;
import org.chromium.net.HttpNegotiateAuthenticator;

public final class mos
  implements AccountManagerCallback<Account[]>
{
  private final mov b;
  
  public mos(HttpNegotiateAuthenticator paramHttpNegotiateAuthenticator, mov parammov)
  {
    b = parammov;
  }
  
  public void run(AccountManagerFuture<Account[]> paramAccountManagerFuture)
  {
    try
    {
      paramAccountManagerFuture = (Account[])paramAccountManagerFuture.getResult();
      if (paramAccountManagerFuture.length == 0)
      {
        aal.a("net_auth", "ERR_MISSING_AUTH_CREDENTIALS: No account provided for the kerberos authentication. Please verify the configuration policies and that the CONTACTS runtime permission is granted. ", new Object[0]);
        a.nativeSetResult(b.a, 65195, null);
        return;
      }
    }
    catch (AuthenticatorException paramAccountManagerFuture)
    {
      aal.a("net_auth", "ERR_UNEXPECTED: Error while attempting to retrieve accounts.", new Object[] { paramAccountManagerFuture });
      a.nativeSetResult(b.a, -9, null);
      return;
      if (paramAccountManagerFuture.length > 1)
      {
        aal.a("net_auth", "ERR_MISSING_AUTH_CREDENTIALS: Found %d accounts eligible for the kerberos authentication. Please fix the configuration by providing a single account.", new Object[] { Integer.valueOf(paramAccountManagerFuture.length) });
        a.nativeSetResult(b.a, 65195, null);
        return;
      }
      if (a.a(ContextUtils.a, "android.permission.USE_CREDENTIALS", true))
      {
        aal.b("net_auth", "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: USE_CREDENTIALS permission not granted. Aborting authentication.", new Object[0]);
        a.nativeSetResult(b.a, 65193, null);
        return;
      }
      b.e = paramAccountManagerFuture[0];
      b.b.getAuthToken(b.e, b.d, b.c, true, new mot(a, b), new Handler(ThreadUtils.a().getLooper()));
      return;
    }
    catch (OperationCanceledException paramAccountManagerFuture)
    {
      for (;;) {}
    }
    catch (IOException paramAccountManagerFuture)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     mos
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */