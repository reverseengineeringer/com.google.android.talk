import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.TextView;

final class cet
  implements ceq
{
  public int a;
  public Context b;
  public awp c;
  public hba d;
  public hpu e;
  public hpz f;
  
  protected void a()
  {
    f.b(a).b("gv_sms_promo_seen_status", true).d();
  }
  
  public void a(int paramInt, View paramView)
  {
    paramView = (ViewStub)paramView.getRootView().findViewById(paramInt);
    paramView.setLayoutResource(aal.lH);
    paramView = paramView.inflate();
    TextView localTextView = (TextView)paramView.findViewById(aal.lE);
    localTextView.setText(Html.fromHtml(b.getResources().getString(aal.lI, new Object[] { aal.e("https://www.google.com/support/hangouts/?hl=%locale%", "fi_sms_integration") })));
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    ((Button)paramView.findViewById(aal.lF)).setOnClickListener(new ceu(this, paramView));
    ((Button)paramView.findViewById(aal.lG)).setOnClickListener(new cev(this, paramView));
  }
  
  protected void a(Context paramContext)
  {
    bff.b(paramContext, dvd.e(a), true);
    SharedPreferences localSharedPreferences = ijs.b(paramContext);
    if (localSharedPreferences.contains("gv_sms")) {
      localSharedPreferences.edit().remove("gv_sms").commit();
    }
    new iin(paramContext, a, "gv_sms", Boolean.valueOf(false)).a(true);
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = paramContext;
    c = ((awp)paramilh.b(awp.class));
    d = ((hba)paramilh.a(hba.class));
    e = ((hpu)paramilh.a(hpu.class));
    f = ((hpz)paramilh.a(hpz.class));
  }
  
  public boolean b()
  {
    a = e.a();
    Object localObject = dvd.a(b, a);
    if ((c == null) || (!c.a((String)localObject))) {}
    do
    {
      int i;
      do
      {
        return false;
        i = a;
      } while ((!dvp.S.b(i)) || (dvd.e(a).x()));
      localObject = dvd.d;
    } while ((!dvi.a()) || (f.a(a).a("gv_sms_promo_seen_status", false)));
    return true;
  }
}

/* Location:
 * Qualified Name:     cet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */