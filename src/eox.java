import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewStub;
import android.widget.Button;

final class eox
  implements eou
{
  static final Uri a = Uri.parse("market://details?id=com.google.android.apps.messaging&referrer=utm_source%3Dhangouts_7_promo");
  Context b;
  hba c;
  private awp d;
  private hpu e;
  private bdp f;
  private eot g;
  private TelephonyManager h;
  
  int a()
  {
    return f.a("babel_messenger_promo_banner_attempt_number", 1);
  }
  
  public void a(int paramInt, View paramView)
  {
    ezi.c("Babel_SmsPromoBanner", "addToView", new Object[0]);
    paramView = (ViewStub)paramView.getRootView().findViewById(paramInt);
    paramView.setLayoutResource(aal.qb);
    paramView = paramView.inflate();
    paramInt = e.a();
    ((Button)paramView.findViewById(aal.pZ)).setOnClickListener(new eoy(this, paramView, paramInt));
    ((Button)paramView.findViewById(aal.qa)).setOnClickListener(new eoz(this, paramView, paramInt));
    c.a(paramInt).a(2807).d();
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    ezi.a("Babel_SmsPromoBanner", "onAttachBinder", new Object[0]);
    b = paramContext;
    d = ((awp)paramilh.b(awp.class));
    c = ((hba)paramilh.a(hba.class));
    e = ((hpu)paramilh.a(hpu.class));
    f = ((bdp)paramilh.a(bdp.class));
    g = ((eot)paramilh.a(eot.class));
    h = ((TelephonyManager)paramContext.getSystemService("phone"));
  }
  
  public boolean b()
  {
    ezi.c("Babel_SmsPromoBanner", "shouldShowPromo", new Object[0]);
    if (!g.g()) {
      ezi.a("Babel_SmsPromoBanner", "no sms", new Object[0]);
    }
    int i;
    int j;
    do
    {
      return false;
      if (!g.c(e.a()))
      {
        ezi.a("Babel_SmsPromoBanner", "not sms account", new Object[0]);
        return false;
      }
      if ((d != null) && (d.a()))
      {
        ezi.a("Babel_SmsPromoBanner", "is nova", new Object[0]);
        return false;
      }
      String str = h.getNetworkOperatorName();
      if ((str != null) && (str.contains("Fi Network")))
      {
        ezi.a("Babel_SmsPromoBanner", "is nova network", new Object[0]);
        return false;
      }
      if (!ezm.c())
      {
        ezi.a("Babel_SmsPromoBanner", "no sim", new Object[0]);
        return false;
      }
      if (!ezm.b())
      {
        ezi.a("Babel_SmsPromoBanner", "tablet", new Object[0]);
        return false;
      }
      i = b.getSharedPreferences("babel_sms_promo", 0).getInt("messenger_banner_promo_number", 0);
      j = a();
      ezi.a("Babel_SmsPromoBanner", "old: %d new: %d", new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
    } while (j <= i);
    return true;
  }
}

/* Location:
 * Qualified Name:     eox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */