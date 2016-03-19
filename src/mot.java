import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import java.io.IOException;
import org.chromium.base.ContextUtils;
import org.chromium.net.HttpNegotiateAuthenticator;

public final class mot
  implements AccountManagerCallback<Bundle>
{
  final mov a;
  
  public mot(HttpNegotiateAuthenticator paramHttpNegotiateAuthenticator, mov parammov)
  {
    a = parammov;
  }
  
  public void run(AccountManagerFuture<Bundle> paramAccountManagerFuture)
  {
    int i = 0;
    try
    {
      paramAccountManagerFuture = (Bundle)paramAccountManagerFuture.getResult();
      if (paramAccountManagerFuture.containsKey("intent"))
      {
        paramAccountManagerFuture = ContextUtils.a;
        paramAccountManagerFuture.registerReceiver(new mou(this, paramAccountManagerFuture), new IntentFilter("android.accounts.LOGIN_ACCOUNTS_CHANGED"));
        return;
      }
    }
    catch (AuthenticatorException paramAccountManagerFuture)
    {
      aal.a("net_auth", "ERR_UNEXPECTED: Error while attempting to obtain a token.", new Object[] { paramAccountManagerFuture });
      b.nativeSetResult(a.a, -9, null);
      return;
      HttpNegotiateAuthenticator localHttpNegotiateAuthenticator = b;
      mov localmov = a;
      a = paramAccountManagerFuture.getBundle("spnegoContext");
      switch (paramAccountManagerFuture.getInt("spnegoResult", 1))
      {
      default: 
        i = -9;
      }
      for (;;)
      {
        localHttpNegotiateAuthenticator.nativeSetResult(a, i, paramAccountManagerFuture.getString("authtoken"));
        return;
        i = -9;
        continue;
        i = -3;
        continue;
        i = 65194;
        continue;
        i = 65216;
        continue;
        i = 65198;
        continue;
        i = 65197;
        continue;
        i = 65195;
        continue;
        i = 65192;
        continue;
        i = 65207;
      }
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
 * Qualified Name:     mot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */