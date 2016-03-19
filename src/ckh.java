import android.content.Context;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.List;

public final class ckh
  extends cew
{
  final cfc a = cfc.a();
  private List<cgp> b = new ArrayList();
  
  public int a()
  {
    return 1000;
  }
  
  public List<cgp> a(Context paramContext, cgn paramcgn, hkx paramhkx, cgw paramcgw)
  {
    b.clear();
    boolean bool2;
    int i;
    label57:
    int j;
    label65:
    int k;
    label83:
    label96:
    int m;
    if (!paramhkx.g())
    {
      bool2 = a.d().p();
      boolean bool3 = paramhkx.l();
      if (paramhkx.l()) {
        break label479;
      }
      bool1 = true;
      if (a.q() == null) {
        break label485;
      }
      i = 1;
      if (bool3) {
        break label491;
      }
      j = 1;
      if ((bool3) || (bool2) || (i != 0)) {
        break label497;
      }
      k = 1;
      if ((bool3) || (!bool2)) {
        break label503;
      }
      i = 1;
      if (k != 0)
      {
        k = aen.ao;
        m = R.drawable.bR;
        int n = aal.dH;
        if (paramhkx.n()) {
          break label509;
        }
        bool2 = true;
        label126:
        paramcgw = new cgp(paramContext, paramhkx, k, m, n, true, bool2, paramContext.getString(StressMode.cA, new Object[] { paramhkx.b() }), new cki(this, paramcgn, paramhkx));
        paramcgw.a(new ckj(this, bool1, paramcgw));
        b.add(paramcgw);
      }
      if (j != 0)
      {
        j = aen.ao;
        k = aal.lM;
        m = aal.dH;
        if (paramhkx.d()) {
          break label515;
        }
        bool1 = true;
        label233:
        paramcgw = new cgp(paramContext, paramhkx, j, k, m, true, bool1, paramContext.getString(StressMode.cC, new Object[] { paramhkx.b() }), new ckk(this, paramhkx));
        paramcgw.a(new ckl(this, paramcgw));
        b.add(paramcgw);
      }
      if (bool3)
      {
        paramcgw = b;
        j = aen.ao;
        k = aal.lK;
        m = aal.dH;
        if (paramhkx.d()) {
          break label521;
        }
      }
    }
    label479:
    label485:
    label491:
    label497:
    label503:
    label509:
    label515:
    label521:
    for (boolean bool1 = true;; bool1 = false)
    {
      paramcgw.add(new cgp(paramContext, paramhkx, j, k, m, true, bool1, paramContext.getString(StressMode.cz, new Object[] { paramhkx.b() }), new ckm(this, paramcgn, paramhkx)));
      if (i != 0)
      {
        paramContext = new cgp(paramContext, paramhkx, aen.ao, aal.lL, aal.dH, true, true, paramContext.getString(StressMode.cB, new Object[] { paramhkx.b() }), new ckn(this, paramcgn, paramhkx));
        paramContext.a(new cko(this));
        b.add(paramContext);
      }
      return b;
      bool1 = false;
      break;
      i = 0;
      break label57;
      j = 0;
      break label65;
      k = 0;
      break label83;
      i = 0;
      break label96;
      bool2 = false;
      break label126;
      bool1 = false;
      break label233;
    }
  }
}

/* Location:
 * Qualified Name:     ckh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */