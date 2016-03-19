import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.List;

final class bnc
{
  bnc(bng parambng) {}
  
  public void a()
  {
    a.M();
  }
  
  public void a(int paramInt)
  {
    a.a(new bok(this, paramInt));
  }
  
  public void a(String paramString)
  {
    if (a.K())
    {
      bng localbng = a;
      bjb localbjb = i.a();
      boolean bool3 = localbng.K();
      boolean bool1;
      if (localbjb == null)
      {
        bool1 = true;
        if (bu != null) {
          break label93;
        }
      }
      label93:
      for (boolean bool2 = true;; bool2 = false)
      {
        if (bool3) {
          break label98;
        }
        throw new IllegalStateException(aen.a("variant null: %s. reachability null: %s.", new Object[] { Boolean.valueOf(bool1), Boolean.valueOf(bool2) }));
        bool1 = false;
        break;
      }
      label98:
      if (!bu.a) {
        bu.a(context, false);
      }
      do
      {
        return;
        if (localbng.I()) {
          break;
        }
      } while (localbng.getActivity() == null);
      Toast.makeText(context, StressMode.jg, 0).show();
      return;
      localbng.a(localbjb, paramString, null);
      return;
    }
    a.aL.add(new boj(this, paramString));
    a.L();
    Toast.makeText(a.context, StressMode.jf, 0).show();
  }
  
  public void b()
  {
    int i;
    if (!a.I())
    {
      if (!a.bl) {
        break label93;
      }
      bjb localbjb = a.i.a();
      ill localill = a.context;
      if ((localbjb == null) || (!g)) {
        break label86;
      }
      i = StressMode.sl;
      Toast.makeText(localill, i, 0).show();
    }
    for (;;)
    {
      a.aO.b();
      a.a(false);
      return;
      label86:
      i = StressMode.sk;
      break;
      label93:
      if ((a.bu != null) && (!a.bu.a)) {
        a.bu.a(a.getContext(), false);
      }
    }
  }
  
  public boolean c()
  {
    if (a.bm != null) {
      a.a(true);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     bnc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */