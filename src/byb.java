import android.widget.Toast;
import com.google.android.apps.hangouts.fragments.BlockedContactsFragment;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class byb
  extends eap
{
  public byb(BlockedContactsFragment paramBlockedContactsFragment) {}
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    parambfd = parameau.c();
    if ((a.c == paramInt) && (drw.class.isInstance(parambfd)))
    {
      parambfd = a;
      c = -1;
      parambfd.b();
    }
    while (!drv.class.isInstance(parambfd)) {
      return;
    }
    parambfd = a;
    e.remove(Integer.valueOf(paramInt));
    if (e.size() == 0) {
      parambfd.b();
    }
    a.b.notifyDataSetChanged();
    a.a(a.getView());
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    int i;
    if ((a.c == paramInt) && (dno.class.isInstance(parameff)))
    {
      parambfd = a;
      c = -1;
      parambfd.b();
      if (byp.j())
      {
        i = StressMode.in;
        Toast.makeText(a.context, i, 0).show();
        a.a(a.getView());
      }
    }
    else
    {
      parambfd = (bye)a.e.get(Integer.valueOf(paramInt));
      if ((parambfd != null) && (dnn.class.isInstance(parameff)))
      {
        parameff = a;
        e.remove(Integer.valueOf(paramInt));
        if (e.size() == 0) {
          parameff.b();
        }
        a.b.notifyDataSetChanged();
        if (!byp.j()) {
          break label202;
        }
      }
    }
    label202:
    for (paramInt = StressMode.iK;; paramInt = StressMode.iL)
    {
      Toast.makeText(a.context, a.context.getString(paramInt, new Object[] { b }), 0).show();
      return;
      i = StressMode.io;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     byb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */