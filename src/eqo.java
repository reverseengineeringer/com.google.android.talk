import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public final class eqo
  extends Binder
  implements eqn
{
  public final int a;
  public final Context b;
  
  public eqo()
  {
    attachInterface(this, "com.google.android.apps.hangouts.telephony.ITeleHangoutsService");
  }
  
  public eqo(Context paramContext, int paramInt)
  {
    this();
    b = paramContext;
    a = paramInt;
  }
  
  private dqx b(String paramString)
  {
    hbs.b();
    Semaphore localSemaphore = new Semaphore(0);
    dqx[] arrayOfdqx = new dqx[1];
    paramString = new evb(this, RealTimeChatService.c(a, paramString), arrayOfdqx, localSemaphore);
    try
    {
      RealTimeChatService.a(paramString);
      if (localSemaphore.tryAcquire(aal.a(b, "babel_telephony_call_rate_lookup_timeout_ms", 10000L), TimeUnit.MILLISECONDS))
      {
        localSemaphore = arrayOfdqx[0];
        return localSemaphore;
      }
      ezi.e("Babel_telephony", "TeleHangoutsService.getCallRateResponseBlocking, timeout reached", new Object[0]);
      throw new eva();
    }
    finally
    {
      RealTimeChatService.b(paramString);
    }
  }
  
  public int a()
  {
    aal.t(b);
    return 1;
  }
  
  public Bundle a(String paramString)
  {
    aal.t(b);
    Bundle localBundle = new Bundle();
    String str = ezm.g(paramString);
    if (str == null)
    {
      ezi.e("Babel_telephony", "TeleHangoutsService.getCallRate, invalid number", new Object[0]);
      localBundle.putBoolean("invalid_number", true);
    }
    for (;;)
    {
      return localBundle;
      try
      {
        paramString = b(str);
        if (paramString == null)
        {
          ezi.e("Babel_telephony", "TeleHangoutsService.getCallRate, no call rate response", new Object[0]);
          localBundle.putBoolean("no_response", true);
          return localBundle;
        }
      }
      catch (eva paramString)
      {
        ezi.d("Babel_telephony", "TeleHangoutsService.getCallRate, timed out while making request", paramString);
        localBundle.putBoolean("request_timeout", true);
        return localBundle;
        localBundle.putBoolean("is_free", paramString.l());
        localBundle.putBoolean("does_rate_expire", paramString.n());
        localBundle.putInt("rate_ttl_ms", paramString.m());
        localBundle.putString("country_display", ezm.q(str));
        str = paramString.k();
        if ((!paramString.l()) && (!TextUtils.isEmpty(str)))
        {
          localBundle.putString("rate_display", b.getString(aal.rc, new Object[] { str }));
          localBundle.putString("rate_display_description", b.getString(aal.rd, new Object[] { str }));
          return localBundle;
        }
      }
      catch (InterruptedException paramString)
      {
        ezi.d("Babel_telephony", "TeleHangoutsService.getCallRate, interrupted while making request", paramString);
        localBundle.putBoolean("request_timeout", true);
      }
    }
    return localBundle;
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.apps.hangouts.telephony.ITeleHangoutsService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ITeleHangoutsService");
      a();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(1);
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ITeleHangoutsService");
    paramParcel1 = a(paramParcel1.readString());
    paramParcel2.writeNoException();
    paramParcel2.writeInt(1);
    paramParcel1.writeToParcel(paramParcel2, 1);
    return true;
  }
}

/* Location:
 * Qualified Name:     eqo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */