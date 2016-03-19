import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.widget.TextView;
import com.google.android.libraries.quantum.snackbar.Snackbar;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

public class epc
  implements iox, ioz
{
  epa a;
  public Activity b;
  public Snackbar c;
  private final Queue<epa> d = new ArrayDeque();
  private final List<epi> e = new ArrayList();
  private Runnable f;
  private boolean g;
  private final av h;
  
  public epc(Activity paramActivity, iog paramiog)
  {
    h = null;
    b = paramActivity;
    paramiog.a(this);
  }
  
  public epc(av paramav, iog paramiog)
  {
    h = paramav;
    paramiog.a(this);
  }
  
  void a()
  {
    if (a == null)
    {
      epa localepa = (epa)d.poll();
      if (localepa != null)
      {
        if (c == null)
        {
          ViewStub localViewStub = (ViewStub)b.findViewById(aen.gn);
          if (localViewStub != null) {
            localViewStub.inflate();
          }
          a((Snackbar)b.findViewById(aen.gm));
        }
        a(localepa, false);
        g = true;
        c.a();
      }
    }
  }
  
  public void a(Snackbar paramSnackbar)
  {
    c = paramSnackbar;
    paramSnackbar.setOnClickListener(new epd(this));
  }
  
  public void a(epa paramepa)
  {
    if (paramepa.equals(a))
    {
      Runnable localRunnable = f;
      aal.y().removeCallbacks(localRunnable);
      if (!paramepa.f()) {
        aal.a(f, paramepa.e());
      }
      return;
    }
    if (!d.contains(paramepa)) {
      d.add(paramepa);
    }
    a();
  }
  
  public void a(epa paramepa1, epa paramepa2)
  {
    if (paramepa1.equals(paramepa2)) {
      return;
    }
    if (d.contains(paramepa1))
    {
      d.remove(paramepa1);
      d.add(paramepa2);
      return;
    }
    if ((a != null) && (a.equals(paramepa1)))
    {
      Runnable localRunnable = f;
      aal.y().removeCallbacks(localRunnable);
      a(paramepa2, paramepa1.a().equals(paramepa2.b()));
      return;
    }
    a(paramepa2);
  }
  
  public void a(epa paramepa, boolean paramBoolean)
  {
    Object localObject = paramepa.d();
    if (localObject != null) {}
    for (localObject = new epf(this, paramepa, (eph)localObject);; localObject = null)
    {
      if (paramBoolean) {
        aal.a(new epj(c, a, paramepa));
      }
      for (;;)
      {
        a = paramepa;
        f = new epg(this, paramepa);
        if (!paramepa.f()) {
          aal.a(f, paramepa.e());
        }
        c.measure(-2, -2);
        paramepa = e.iterator();
        while (paramepa.hasNext()) {
          ((epi)paramepa.next()).a(c);
        }
        if (!TextUtils.isEmpty(paramepa.b()))
        {
          Snackbar localSnackbar = c;
          TextView localTextView = (TextView)c.findViewById(aen.eg);
          localSnackbar.a(aal.a(paramepa.a(), paramepa.b(), localTextView), paramepa.c(), (View.OnClickListener)localObject);
        }
        else
        {
          c.a(paramepa.a(), paramepa.c(), (View.OnClickListener)localObject);
        }
      }
      return;
    }
  }
  
  public void a(epi paramepi)
  {
    if (!e.contains(paramepi))
    {
      if (!g) {
        break label40;
      }
      paramepi.a(c);
    }
    for (;;)
    {
      e.add(paramepi);
      return;
      label40:
      paramepi.a();
    }
  }
  
  public epc b(ilh paramilh)
  {
    paramilh.a(epc.class, this);
    return this;
  }
  
  public void b(epa paramepa)
  {
    if ((a != null) && (a.equals(paramepa)))
    {
      c.b();
      if (paramepa.d() != null) {
        paramepa.d().a();
      }
      a = null;
      aal.a(new epe(this), 350L);
      if (d.isEmpty())
      {
        paramepa = e.iterator();
        while (paramepa.hasNext()) {
          ((epi)paramepa.next()).a();
        }
        g = false;
      }
      return;
    }
    d.remove(paramepa);
  }
  
  public void b(epi paramepi)
  {
    e.remove(paramepi);
  }
  
  public void s_()
  {
    if (b == null) {
      b = h.getActivity();
    }
    a();
  }
}

/* Location:
 * Qualified Name:     epc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */