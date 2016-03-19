import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;

final class eoy
  implements View.OnClickListener
{
  eoy(eox parameox, View paramView, int paramInt) {}
  
  public void onClick(View paramView)
  {
    ezi.c("Babel_SmsPromoBanner", "Banner no clicked", new Object[0]);
    paramView = c;
    View localView = a;
    int i = b;
    localView.setVisibility(8);
    int j = paramView.a();
    b.getSharedPreferences("babel_sms_promo", 0).edit().putInt("messenger_banner_promo_number", j).apply();
    c.a(i).a(2808).d();
  }
}

/* Location:
 * Qualified Name:     eoy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */