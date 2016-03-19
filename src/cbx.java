import android.util.SparseArray;
import android.widget.Toast;
import com.google.android.apps.hangouts.fragments.HiddenContactsFragment;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cbx
  extends eap
{
  public cbx(HiddenContactsFragment paramHiddenContactsFragment) {}
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    parambfd = parameau.c();
    if ((a.c == paramInt) && ((parambfd instanceof drm)))
    {
      parambfd = a;
      c = -1;
      parambfd.b();
      a.a(a.getView());
    }
    while ((!(parambfd instanceof dsy)) || ((String)a.e.get(paramInt) == null)) {
      return;
    }
    parambfd = a;
    d.remove(paramInt);
    e.remove(paramInt);
    if (aal.a(e)) {
      parambfd.b();
    }
    a.b.notifyDataSetChanged();
    a.a(a.getView());
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if ((a.c == paramInt) && ((parameff instanceof dpe)))
    {
      parambfd = a;
      c = -1;
      parambfd.b();
      if (byp.j())
      {
        paramInt = StressMode.ip;
        Toast.makeText(a.context, paramInt, 0).show();
        a.a(a.getView());
      }
    }
    while ((!aal.a(a.e, paramInt)) || (!(parameff instanceof dqa))) {
      for (;;)
      {
        return;
        paramInt = StressMode.iq;
      }
    }
    parambfd = (String)a.d.get(paramInt);
    parameff = a;
    d.remove(paramInt);
    e.remove(paramInt);
    if (aal.a(e)) {
      parameff.b();
    }
    a.b.notifyDataSetChanged();
    if (byp.j()) {}
    for (paramInt = StressMode.iN;; paramInt = StressMode.iO)
    {
      Toast.makeText(a.context, a.context.getString(paramInt, new Object[] { parambfd }), 0).show();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cbx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */