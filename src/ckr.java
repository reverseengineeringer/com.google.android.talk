import android.content.Context;
import android.content.res.Resources;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class ckr
  extends cew
{
  cgn a;
  final cfc b = cfc.a();
  private List<cgp> c = new ArrayList();
  
  public int a()
  {
    return 0;
  }
  
  public List<cgp> a(Context paramContext, cgn paramcgn, hkx paramhkx, cgw paramcgw)
  {
    c.clear();
    a = paramcgn;
    Object localObject;
    boolean bool2;
    int i;
    int j;
    int k;
    int m;
    int n;
    String str1;
    String str2;
    if (paramhkx.g())
    {
      if (!((cla)ilh.a(paramContext, cla.class)).a()) {
        break label382;
      }
      localObject = new cgp(paramContext, paramhkx, aen.ao, StressMode.tw, aal.cX, true, true, paramContext.getString(StressMode.fT), new cks(this, paramContext));
      c.add(localObject);
      localObject = new cjn(paramContext, paramhkx, aal.dn, aal.dn, aen.ao, StressMode.tu, StressMode.tu, paramContext.getString(StressMode.sN), paramContext.getString(StressMode.sN), true, true, new ckv(this, paramcgn));
      c.add(localObject);
      bool2 = a(paramcgw);
      localObject = b.k();
      i = aal.dH;
      j = aal.dD;
      k = aen.ao;
      m = StressMode.tz;
      n = StressMode.ty;
      str1 = paramContext.getString(StressMode.eb);
      str2 = paramContext.getString(StressMode.ec);
      if ((localObject == null) || (!((hjk)localObject).g())) {
        break label518;
      }
    }
    label382:
    label518:
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject = new cjn(paramContext, paramhkx, i, j, k, m, n, str1, str2, bool2, bool1, null);
      ((cgp)localObject).setOnClickListener(new ckw(this, paramcgn, (cgp)localObject));
      ((cgp)localObject).a(new ckx(this, (cgp)localObject));
      c.add(localObject);
      bool1 = b(paramcgw);
      paramContext = new cgp(paramContext, paramhkx, aen.ao, StressMode.tv, aal.dH, bool1, false, paramContext.getResources().getString(StressMode.dX), null);
      if (bool1) {
        a(paramContext, paramcgw);
      }
      paramContext.a(new cky(this, paramContext));
      c.add(paramContext);
      return c;
      i = aal.dH;
      j = aal.dD;
      k = aen.ao;
      m = StressMode.tx;
      n = StressMode.tw;
      localObject = paramContext.getString(StressMode.dV);
      str1 = paramContext.getString(StressMode.dW);
      if (!b.h()) {}
      for (bool1 = true;; bool1 = false)
      {
        localObject = new cjn(paramContext, paramhkx, i, j, k, m, n, (String)localObject, str1, true, bool1, null);
        ((cgp)localObject).setOnClickListener(new ckt(this, (cgp)localObject));
        ((cgp)localObject).a(new cku(this, (cgp)localObject));
        c.add(localObject);
        break;
      }
    }
  }
  
  void a(cgp paramcgp, cgw paramcgw)
  {
    Object localObject2 = null;
    Object localObject1;
    if (paramcgw == null)
    {
      paramcgw = null;
      if (paramcgw != null) {
        break label102;
      }
      localObject1 = null;
      label16:
      paramcgw = (cgw)localObject2;
      if (localObject1 != null)
      {
        paramcgw = (cgw)localObject2;
        if (((Collection)localObject1).size() == 1)
        {
          localObject1 = (hil)localObject1.toArray()[0];
          paramcgw = (cgw)localObject2;
          if ((localObject1 instanceof hir)) {
            paramcgw = (cgw)localObject1;
          }
        }
      }
      if (paramcgw == null) {
        break label111;
      }
    }
    label102:
    label111:
    for (boolean bool = true;; bool = false)
    {
      paramcgp.a(bool);
      if (paramcgw != null) {
        paramcgp.setOnClickListener(new ckz(this));
      }
      return;
      paramcgw = paramcgw.q();
      break;
      localObject1 = paramcgw.l();
      break label16;
    }
  }
  
  boolean a(cgw paramcgw)
  {
    if ((a.g() & 0x2) != 0) {}
    for (int i = 1; (!b(paramcgw)) && (i != 0); i = 0) {
      return true;
    }
    return false;
  }
  
  boolean b(cgw paramcgw)
  {
    Object localObject = null;
    label16:
    int i;
    label32:
    int j;
    if (paramcgw == null)
    {
      paramcgw = null;
      if (paramcgw != null) {
        break label85;
      }
      paramcgw = (cgw)localObject;
      if ((paramcgw == null) || (paramcgw.size() != 1)) {
        break label93;
      }
      i = 1;
      if ((paramcgw != null) && (!paramcgw.isEmpty())) {
        break label98;
      }
      j = 1;
      label47:
      if ((a.g() & 0x1) == 0) {
        break label103;
      }
    }
    label85:
    label93:
    label98:
    label103:
    for (int k = 1;; k = 0)
    {
      if ((k == 0) || ((i == 0) && (j == 0))) {
        break label109;
      }
      return true;
      paramcgw = paramcgw.q();
      break;
      paramcgw = paramcgw.l();
      break label16;
      i = 0;
      break label32;
      j = 0;
      break label47;
    }
    label109:
    return false;
  }
}

/* Location:
 * Qualified Name:     ckr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */