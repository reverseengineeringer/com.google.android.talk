import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class evl
  extends Binder
  implements evk
{
  public final Context a;
  
  public evl()
  {
    attachInterface(this, "com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
  }
  
  public evl(Context paramContext)
  {
    this();
    a = paramContext;
  }
  
  public int a()
  {
    aal.t(a);
    return 4;
  }
  
  public void a(long paramLong)
  {
    aal.t(a);
    String str = String.valueOf("TeleWifiCallingSettingsService.setLastEmergencyDialedTimeMillisFromDarkNumber, dialedTimeMillis: ");
    ezi.c("Babel_telephony", String.valueOf(str).length() + 20 + str + paramLong, new Object[0]);
    eut.a(a).a(paramLong);
  }
  
  public void a(Account paramAccount)
  {
    aal.t(a);
    if (paramAccount == null)
    {
      paramAccount = null;
      str = String.valueOf(ezi.b(paramAccount));
      if (str.length() == 0) {
        break label65;
      }
    }
    label65:
    for (String str = "TeleWifiCallingSettingsService.setTychoAccount, account name: ".concat(str);; str = new String("TeleWifiCallingSettingsService.setTychoAccount, account name: "))
    {
      ezi.c("Babel_telephony", str, new Object[0]);
      eut.a(a).a(paramAccount);
      return;
      paramAccount = name;
      break;
    }
  }
  
  public void a(String paramString)
  {
    aal.t(a);
    ezi.c("Babel_telephony", String.valueOf(paramString).length() + 68 + "TeleWifiCallingSettingsService.setWifiCallingState, state: " + paramString + ", ignored", new Object[0]);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public String b()
  {
    aal.t(a);
    ezi.c("Babel_telephony", "TeleWifiCallingSettingsService.getWifiCallingState, API not used", new Object[0]);
    return null;
  }
  
  public Account c()
  {
    aal.t(a);
    ezi.c("Babel_telephony", "TeleWifiCallingSettingsService.getWifiCallingAccount, API not used", new Object[0]);
    return null;
  }
  
  public void d()
  {
    aal.t(a);
    ezi.c("Babel_telephony", "TeleWifiCallingSettingsService.setWifiCallingAccount, ignored", new Object[0]);
  }
  
  public Account e()
  {
    aal.t(a);
    ezi.c("Babel_telephony", "TeleWifiCallingSettingsService.getTychoAccount, API not used", new Object[0]);
    return null;
  }
  
  public boolean f()
  {
    aal.t(a);
    ezi.c("Babel_telephony", "TeleWifiCallingSettingsService.getWifiCallingEnabledPreference", new Object[0]);
    return eut.a(a).d();
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Account localAccount = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      a();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(4);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      b();
      paramParcel2.writeNoException();
      paramParcel2.writeString(null);
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      a(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      c();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(0);
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      if (paramParcel1.readInt() != 0) {
        Account.CREATOR.createFromParcel(paramParcel1);
      }
      d();
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      e();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(0);
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      if (paramParcel1.readInt() != 0) {
        localAccount = (Account)Account.CREATOR.createFromParcel(paramParcel1);
      }
      a(localAccount);
      paramParcel2.writeNoException();
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
      a(paramParcel1.readLong());
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.apps.hangouts.telephony.ui.ITeleWifiCallingSettingsService");
    boolean bool = f();
    paramParcel2.writeNoException();
    if (bool) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      paramParcel2.writeInt(paramInt1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     evl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */