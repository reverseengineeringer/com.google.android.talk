import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.telecom.PhoneAccount.Builder;
import android.telecom.TelecomManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public final class esk
  implements ddl, dhn
{
  private esc a;
  private final bwl b = new bwm().a("telephony").b("Provide WiFi calling capability to Android system.").a(true).a();
  private final erm c = new erm();
  
  public static void e(Context paramContext)
  {
    boolean bool1 = true;
    boolean bool2 = aal.n(paramContext);
    Object localObject = aal.a(paramContext, "babel_user_to_allow_wifi_calling_for", "tycho_users");
    if ("hangouts_testing_users".equals(localObject))
    {
      localObject = String.valueOf("TeleModule.updateConnectionManagerRegistration, registration preference changed from ");
      ezi.c("Babel_telephony", String.valueOf(localObject).length() + 14 + (String)localObject + bool2 + " to " + bool1, new Object[0]);
      if ((!bool2) || (bool1)) {
        break label135;
      }
      h(paramContext).clearAccounts();
      aal.u(paramContext);
    }
    label135:
    while ((bool2) || (!bool1))
    {
      return;
      if ("tycho_users".equals(localObject))
      {
        if (!TextUtils.isEmpty(eut.a(paramContext).i())) {
          break;
        }
        bool1 = false;
        break;
      }
      bool1 = false;
      break;
    }
    for (;;)
    {
      try
      {
        localObject = h(paramContext);
        PhoneAccount.Builder localBuilder = new PhoneAccount.Builder(aal.m(paramContext), paramContext.getString(aal.qC));
        ArrayList localArrayList = new ArrayList();
        localArrayList.add("tel");
        if (TextUtils.isEmpty(eut.a(paramContext).i()))
        {
          i = 2;
          ((TelecomManager)localObject).registerPhoneAccount(localBuilder.setCapabilities(i).setShortDescription(paramContext.getString(aal.qB)).setSupportedUriSchemes(localArrayList).build());
          aal.u(paramContext);
          return;
        }
      }
      catch (Exception paramContext)
      {
        paramContext = String.valueOf(paramContext);
        ezi.c("Babel_telephony", String.valueOf(paramContext).length() + 69 + "TeleModule.updateConnectionManagerRegistration, registration failed, " + paramContext, new Object[0]);
        return;
      }
      int i = 17;
    }
  }
  
  public static void f(Context paramContext)
  {
    eut localeut = eut.a(paramContext);
    bfd localbfd2 = dvd.e(localeut.h());
    bfd localbfd1 = dvd.e(eut.a(paramContext).b());
    if (localbfd1 == null)
    {
      localbfd1 = null;
      String str1 = String.valueOf("TeleModule.updateIncomingCallRegistration, preferred account for incoming calls changed from: ");
      String str2 = String.valueOf(aal.b(localbfd2));
      String str3 = String.valueOf(aal.b(localbfd1));
      ezi.c("Babel_telephony", String.valueOf(str1).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + str2 + " to " + str3, new Object[0]);
      if ((localbfd2 != null) && (!localbfd2.equals(localbfd1))) {
        dvd.c(localbfd2);
      }
      if ((localbfd1 != null) && (!((dty)ilh.a(paramContext, dty.class)).c(paramContext, localbfd1)))
      {
        ezi.c("Babel_telephony", "TeleModule.updateIncomingCallRegistration, registering new account", new Object[0]);
        dvd.c(localbfd1);
      }
      if (!Objects.equals(localbfd2, localbfd1)) {
        if (localbfd1 != null) {
          break label275;
        }
      }
    }
    label275:
    for (int i = -1;; i = localbfd1.g())
    {
      localeut.b(i);
      return;
      i = esc.b(paramContext, localbfd1);
      switch (i)
      {
      case 3: 
      default: 
        hbs.a(39 + "Unknown registration state: " + i);
        localbfd1 = null;
        break;
      case 1: 
        localbfd1 = null;
        break;
      case 2: 
        localbfd1 = null;
        break;
      }
    }
  }
  
  private void g(Context paramContext)
  {
    if (a == null)
    {
      paramContext = h(paramContext);
      if (paramContext != null) {
        a = new esc(paramContext);
      }
    }
  }
  
  private static TelecomManager h(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 22) {
      return null;
    }
    if (!paramContext.getPackageManager().hasSystemFeature("android.software.connectionservice")) {
      return null;
    }
    paramContext = paramContext.getSystemService("telecom");
    if (paramContext == null) {
      return null;
    }
    return (TelecomManager)paramContext;
  }
  
  public void a(Context paramContext, axx paramaxx)
  {
    ezi.c("Babel_telephony", "TeleModule.onApplicationCreate", new Object[0]);
    paramaxx.a(new esl(this, paramContext));
  }
  
  public bwl[] a()
  {
    return new bwl[] { b };
  }
  
  public ddl[] a(Context paramContext)
  {
    if (h(paramContext) != null) {
      return (ddl[])b.a(paramContext, ddl.class, this);
    }
    return new ddl[0];
  }
  
  public erm b()
  {
    return c;
  }
  
  public chj[] b(Context paramContext)
  {
    g(paramContext);
    if (a != null) {
      return (chj[])b.a(paramContext, chj.class, a);
    }
    return new chj[0];
  }
  
  public dhn[] c(Context paramContext)
  {
    return (dhn[])b.a(paramContext, dhn.class, this);
  }
  
  public ebb[] c()
  {
    return new ebb[] { c };
  }
  
  public esc d(Context paramContext)
  {
    g(paramContext);
    return a;
  }
}

/* Location:
 * Qualified Name:     esk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */