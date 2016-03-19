import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.settings.RichStatusSettingsActivity;
import com.google.android.libraries.social.settings.PreferenceCategory;

public final class eju
  extends img
  implements ija
{
  bfd a;
  ejr b;
  private hpu c;
  private elm d;
  
  public eju()
  {
    new iiz(this, lifecycle);
  }
  
  public void a()
  {
    iji localiji = new iji(context);
    PreferenceCategory localPreferenceCategory = localiji.a(StressMode.ch);
    if (aal.a(a, bhh.e))
    {
      b = new ejr(context);
      b.g(StressMode.aa);
      b.a(new ejx(this));
      b.a(a.q(), a);
      localPreferenceCategory.c(b);
      b.C().a(new ejz(this));
    }
    Object localObject = (eot)binder.a(eot.class);
    int i = c.a();
    Intent localIntent;
    String str;
    if ((aal.a(context, "babel_richstatus", true)) && (!((eot)localObject).a(i)))
    {
      localIntent = new Intent(context, RichStatusSettingsActivity.class);
      localIntent.putExtra("account_id", c.a());
      str = getString(StressMode.jb);
      if ((!d.b(i)) && (!d.c(i))) {
        break label363;
      }
    }
    label363:
    for (localObject = getString(StressMode.kg);; localObject = getString(StressMode.kf))
    {
      localPreferenceCategory.c(localiji.a(str, (CharSequence)localObject, localIntent));
      if ((a.z()) && (a.y()))
      {
        localObject = new iip(context, i, "is_business_features_enabled");
        ((ike)localObject).g(StressMode.L);
        ((ike)localObject).b(Boolean.valueOf(c.c().a("is_business_features_enabled", false)));
        ((ike)localObject).a(new ejy(this));
        localPreferenceCategory.c((ijc)localObject);
        localPreferenceCategory.c(localiji.a(getString(StressMode.K), null, aal.a(getActivity())));
      }
      return;
    }
  }
  
  AlertDialog b()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    int i = Math.round(10.0F * (context.getResources().getDisplayMetrics().densityDpi / 160.0F));
    int j = Math.round(25.0F * (context.getResources().getDisplayMetrics().densityDpi / 160.0F));
    localLayoutParams.setMargins(j, i, j, 0);
    LinearLayout localLinearLayout = new LinearLayout(context);
    TextView localTextView = new TextView(context);
    Uri localUri = aal.e("https://support.google.com/hangouts/?p=profile_photo", "profile_photo");
    aal.a(localTextView, context, context.getString(StressMode.Y, new Object[] { localUri.toString() }));
    localLinearLayout.addView(localTextView, localLayoutParams);
    return new AlertDialog.Builder(context).setTitle(StressMode.aa).setView(localLinearLayout).setNegativeButton(StressMode.X, new ejw(this)).setPositiveButton(StressMode.Z, new ejv(this)).create();
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    c = ((hpu)binder.a(hpu.class));
    d = ((elm)binder.a(elm.class));
    lifecycle.a(new ejz(this));
    a = dvd.e(c.a());
  }
}

/* Location:
 * Qualified Name:     eju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */