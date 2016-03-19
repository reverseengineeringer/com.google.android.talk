import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

final class baj
  implements Runnable
{
  baj(bai parambai, azo paramazo) {}
  
  public void run()
  {
    bah localbah = b.b;
    azo localazo = a;
    if (localazo == null)
    {
      e.b(b.getString(aal.iC));
      e.a(new bak(localbah));
      return;
    }
    e.a_(true);
    e.b(b.getString(aal.iD, new Object[] { ezm.o(localazo.c()) }));
    Object localObject = b;
    bba localbba = i;
    String str = localazo.c();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    int i = Math.round(10.0F * (getResourcesgetDisplayMetricsdensityDpi / 160.0F));
    int j = Math.round(25.0F * (getResourcesgetDisplayMetricsdensityDpi / 160.0F));
    localLayoutParams.setMargins(j, i, j, 0);
    LinearLayout localLinearLayout = new LinearLayout((Context)localObject);
    TextView localTextView = new TextView((Context)localObject);
    aal.a(localTextView, (Context)localObject, ((Context)localObject).getResources().getString(aal.iw, new Object[] { aal.e("https://www.google.com/support/hangouts/?hl=%locale%", "android_caller_id").toString() }));
    localLinearLayout.addView(localTextView, localLayoutParams);
    localObject = new AlertDialog.Builder((Context)localObject).setTitle(aal.ix).setView(localLinearLayout).setNegativeButton(aal.iu, new azy(localbba)).setPositiveButton(aal.iv, new azx(localbah, str)).create();
    e.a(new bam(localbah, localazo, (AlertDialog)localObject));
  }
}

/* Location:
 * Qualified Name:     baj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */