import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.view.View;
import android.view.View.OnClickListener;

final class eoz
  implements View.OnClickListener
{
  eoz(eox parameox, View paramView, int paramInt) {}
  
  public void onClick(View paramView)
  {
    ezi.c("Babel_SmsPromoBanner", "Banner yes clicked", new Object[0]);
    paramView = c;
    View localView = a;
    int i = b;
    localView.setVisibility(8);
    int j = paramView.a();
    b.getSharedPreferences("babel_sms_promo", 0).edit().putInt("messenger_banner_promo_number", j).apply();
    c.a(i).a(2809).d();
    paramView = c.b.getPackageManager().getLaunchIntentForPackage("com.google.android.apps.messaging");
    if (paramView != null)
    {
      c.b.startActivity(paramView);
      return;
    }
    c.b.startActivity(new Intent("android.intent.action.VIEW", eox.a));
  }
}

/* Location:
 * Qualified Name:     eoz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */