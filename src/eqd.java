import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.text.Spannable;
import android.text.TextUtils;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.statusmessage.impl.StatusMessageSettingsActivity;

public final class eqd
  extends cve
{
  private static final int f = cl;
  private final eot g;
  private final dll h;
  private String i;
  private Spannable j;
  private final dli k = new eqe(this);
  
  eqd(Context paramContext)
  {
    g = ((eot)ilh.a(paramContext, eot.class));
    h = ((dll)ilh.a(paramContext, dll.class));
  }
  
  public int a()
  {
    return StressMode.fz;
  }
  
  public void a(Activity paramActivity)
  {
    aal.a(a, 1921);
    int m = a.g();
    String str = i;
    Intent localIntent = new Intent(paramActivity, StatusMessageSettingsActivity.class);
    localIntent.putExtra("account_id", m);
    localIntent.putExtra("status_message", str);
    paramActivity.startActivity(localIntent);
  }
  
  public void a(bfd parambfd)
  {
    if ((a == null) || (!a.equals(parambfd))) {
      a(null);
    }
    super.a(parambfd);
  }
  
  void a(String paramString)
  {
    i = paramString;
    if (i != null) {}
    for (paramString = ezc.a(Html.fromHtml(paramString));; paramString = null)
    {
      j = paramString;
      if (c != null)
      {
        c.setText(j);
        if (!TextUtils.isEmpty(j)) {
          break;
        }
        c.setVisibility(8);
      }
      return;
    }
    fbt.a(c.getContext()).a(j, c);
    c.setVisibility(0);
  }
  
  public void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (a != null) && (!g.a(a.g())))
    {
      String str = a.b().a;
      h.a(a.g(), str, k, f);
      return;
    }
    h.a(k);
  }
  
  public int b()
  {
    return R.drawable.ci;
  }
  
  public int c()
  {
    return 3;
  }
  
  public int d()
  {
    return 1;
  }
  
  public int e()
  {
    return 3;
  }
  
  public CharSequence f()
  {
    return j;
  }
  
  public boolean h()
  {
    return (a != null) && (!g.a(a.g()));
  }
}

/* Location:
 * Qualified Name:     eqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */