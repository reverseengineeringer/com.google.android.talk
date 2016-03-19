package org.chromium.net;

import aal;
import android.accounts.AccountManager;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import mos;
import mot;
import mov;
import org.chromium.base.ApplicationStatus;
import org.chromium.base.ContextUtils;
import org.chromium.base.ThreadUtils;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;

@JNINamespace
public class HttpNegotiateAuthenticator
{
  public Bundle a = null;
  private final String b;
  
  private HttpNegotiateAuthenticator(String paramString)
  {
    b = paramString;
  }
  
  @CalledByNative
  static HttpNegotiateAuthenticator create(String paramString)
  {
    return new HttpNegotiateAuthenticator(paramString);
  }
  
  public boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if ((paramBoolean) && (Build.VERSION.SDK_INT >= 23)) {}
    while (paramContext.checkPermission(paramString, Process.myPid(), Process.myUid()) == 0) {
      return false;
    }
    return true;
  }
  
  @CalledByNative
  void getNextAuthToken(long paramLong, String paramString1, String paramString2, boolean paramBoolean)
  {
    Context localContext = ContextUtils.a;
    mov localmov = new mov();
    d = ("SPNEGO:HOSTBASED:" + paramString1);
    b = AccountManager.get(localContext);
    a = paramLong;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = "SPNEGO";
    c = new Bundle();
    if (paramString2 != null) {
      c.putString("incomingAuthToken", paramString2);
    }
    if (a != null) {
      c.putBundle("spnegoContext", a);
    }
    c.putBoolean("canDelegate", paramBoolean);
    paramString2 = ApplicationStatus.a;
    if (paramString2 == null)
    {
      if (a(localContext, "android.permission.GET_ACCOUNTS", true))
      {
        aal.b("net_auth", "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: GET_ACCOUNTS permission not granted. Aborting authentication.", new Object[0]);
        nativeSetResult(a, 65193, null);
        return;
      }
      b.getAccountsByTypeAndFeatures(b, arrayOfString, new mos(this, localmov), new Handler(ThreadUtils.a().getLooper()));
      return;
    }
    if (Build.VERSION.SDK_INT < 23)
    {
      paramBoolean = true;
      if (!paramBoolean) {
        break label277;
      }
    }
    label277:
    for (paramString1 = "android.permission.MANAGE_ACCOUNTS";; paramString1 = "android.permission.GET_ACCOUNTS")
    {
      if (!a(localContext, paramString1, paramBoolean)) {
        break label283;
      }
      aal.b("net_auth", "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: %s permission not granted. Aborting authentication", new Object[] { paramString1 });
      nativeSetResult(a, 65193, null);
      return;
      paramBoolean = false;
      break;
    }
    label283:
    b.getAuthTokenByFeatures(b, d, arrayOfString, paramString2, null, c, new mot(this, localmov), new Handler(ThreadUtils.a().getLooper()));
  }
  
  public native void nativeSetResult(long paramLong, int paramInt, String paramString);
}

/* Location:
 * Qualified Name:     org.chromium.net.HttpNegotiateAuthenticator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */