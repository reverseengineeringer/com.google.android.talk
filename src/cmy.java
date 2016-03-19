import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.Toast;
import com.google.android.libraries.quantum.snackbar.Snackbar;
import java.util.PriorityQueue;

final class cmy
  implements cmu, iox, ioy, ioz
{
  private final Context a;
  private final PriorityQueue<cnb> b;
  private final Handler c;
  private final Runnable d;
  private final Runnable e;
  private cnc f = new cnc(this);
  private cnb g;
  private Snackbar h;
  private Toast i;
  private boolean j;
  private long k = -1L;
  
  cmy(Context paramContext, iog paramiog)
  {
    a = paramContext;
    b = new PriorityQueue();
    c = new Handler(Looper.getMainLooper());
    g = null;
    h = null;
    i = null;
    j = true;
    d = new cmz(this);
    e = new cna(this);
    paramiog.a(this);
  }
  
  public cmu a(ilh paramilh)
  {
    paramilh.a(cmu.class, this);
    return this;
  }
  
  public void a(cms paramcms)
  {
    paramcms = new cnb(paramcms);
    b.add(paramcms);
    if ((g == null) || (paramcms.a(g) < 0)) {
      a(b());
    }
  }
  
  public void a(Snackbar paramSnackbar)
  {
    h = paramSnackbar;
    h.b();
    a(false);
  }
  
  void a(boolean paramBoolean)
  {
    if ((j) || (h == null)) {}
    do
    {
      return;
      g = ((cnb)b.poll());
    } while (g == null);
    if (paramBoolean)
    {
      c.postDelayed(d, 500L);
      return;
    }
    c();
  }
  
  boolean b()
  {
    if (g == null) {}
    do
    {
      return false;
      g = null;
      c.removeCallbacks(d);
      c.removeCallbacks(e);
      if (i != null)
      {
        i.cancel();
        i = null;
        return true;
      }
    } while (h.getVisibility() != 0);
    h.b();
    return true;
  }
  
  void c()
  {
    cms localcms = g.b;
    if (b)
    {
      hbs.a("Expected null", i);
      i = Toast.makeText(a, c, 0);
      i.show();
      if (d != -1)
      {
        long l = SystemClock.elapsedRealtime();
        if ((k == -1L) || (k + 2000L < l))
        {
          ezc.a(d);
          k = l;
        }
      }
      c.postDelayed(e, 4000L);
      return;
    }
    Snackbar localSnackbar = h;
    if (f == null)
    {
      localColorStateList = a.getResources().getColorStateList(aal.dp);
      label144:
      localSnackbar.a(localColorStateList);
      localSnackbar = h;
      if (g != null) {
        break label225;
      }
    }
    label225:
    for (ColorStateList localColorStateList = a.getResources().getColorStateList(aal.dp);; localColorStateList = g)
    {
      localSnackbar.b(localColorStateList);
      h.a(c, e, h);
      h.a();
      break;
      localColorStateList = f;
      break label144;
    }
  }
  
  public void s_()
  {
    j = false;
    a(false);
  }
  
  public void t_()
  {
    j = true;
    b();
  }
}

/* Location:
 * Qualified Name:     cmy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */