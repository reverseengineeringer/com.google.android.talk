import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import java.util.List;

public final class das
  extends dci
{
  final bfd e;
  final axq f;
  boolean g;
  dbc h;
  String i;
  private final boolean j;
  private final Activity k;
  private final hba l;
  private bec m;
  private View.OnClickListener n;
  private View.OnClickListener o;
  private View.OnCreateContextMenuListener p;
  private final bis q;
  private final bis r;
  private final bis s;
  private final bis t;
  private final bis u;
  private final bis v;
  private final bis w;
  private final bis x;
  private final bis y;
  
  public das(Activity paramActivity, bfd parambfd, axq paramaxq, View.OnCreateContextMenuListener paramOnCreateContextMenuListener, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2, boolean paramBoolean)
  {
    super(paramActivity);
    a(new dbd(this, dbg.a, true, true));
    q = ((bis)a(new dbd(this, dbg.b, false, false, fcj.g)));
    r = ((bis)a(new dbd(this, dbg.e, false, true)));
    s = ((bis)a(new dat(this, dbg.b, fcj.b)));
    t = ((bis)a(new dau(this, dbg.b, fcj.c)));
    u = ((bis)a(new dav(this, dbg.b, fcj.d)));
    v = ((bis)a(new daw(this, dbg.c)));
    w = ((bis)a(new dbd(this, dbg.e, false, true)));
    x = ((bis)a(new dax(this, dbg.d, fcj.e)));
    y = ((bis)a(new day(this, dbg.c)));
    k = paramActivity;
    e = parambfd;
    f = paramaxq;
    p = paramOnCreateContextMenuListener;
    o = paramOnClickListener1;
    n = paramOnClickListener2;
    j = paramBoolean;
    a(false);
    l = ((hba)ilh.a(b(), hba.class));
  }
  
  private void a(bis parambis, bec parambec)
  {
    boolean bool = true;
    String str = String.valueOf(parambis);
    new StringBuilder(String.valueOf(str).length() + 23).append("updateCursor partition=").append(str);
    parambis.a(parambec);
    if ((b(true)) && (c(true))) {}
    for (;;)
    {
      v.a(bool);
      return;
      bool = false;
    }
  }
  
  private void f()
  {
    boolean bool2 = false;
    if (g)
    {
      boolean bool1 = bool2;
      if (m != null)
      {
        bool1 = bool2;
        if (m.getCount() == 0) {
          bool1 = true;
        }
      }
      y.a(bool1);
      x.a(m);
      return;
    }
    y.a(false);
    x.a(null);
  }
  
  public aao a(ViewGroup paramViewGroup, int paramInt)
  {
    paramInt = dbg.g[paramInt];
    switch (dba.a[(paramInt - 1)])
    {
    default: 
      return null;
    case 1: 
      return new dbe(this, k.getLayoutInflater().inflate(aal.gm, paramViewGroup, false));
    case 2: 
      return new dbe(this, k.getLayoutInflater().inflate(aal.ow, paramViewGroup, false));
    case 3: 
      return new dbf(this, k.getLayoutInflater().inflate(aal.ov, paramViewGroup, false));
    case 4: 
      paramViewGroup = k.getLayoutInflater().inflate(aal.ou, paramViewGroup, false);
      paramViewGroup.setOnClickListener(n);
      ezc.a(paramViewGroup, true);
      paramViewGroup.setFocusable(true);
      return new dbc(this, paramViewGroup);
    case 5: 
      return new dbb(this, k.getLayoutInflater().inflate(aal.ox, paramViewGroup, false));
    }
    paramViewGroup = new fce(k, e, f);
    paramViewGroup.setOnClickListener(o);
    paramViewGroup.setOnCreateContextMenuListener(p);
    paramViewGroup.setOnLongClickListener(new daz(this, paramViewGroup));
    ezc.a(paramViewGroup, true);
    paramViewGroup.setFocusable(true);
    return new dbb(this, paramViewGroup);
  }
  
  public void a(bec parambec)
  {
    a(s, parambec);
    int i1;
    if ((parambec != null) && (TextUtils.isEmpty(i)))
    {
      i1 = parambec.getCount();
      if (i1 == 0) {
        l.a(e.g()).a(2548).d();
      }
    }
    else
    {
      return;
    }
    l.a(e.g()).a(2547).a(Integer.valueOf(i1)).d();
  }
  
  public void a(String paramString)
  {
    i = paramString;
    boolean bool = d();
    w.a(bool);
    x.a(bool);
  }
  
  public void a(List<bdy> paramList)
  {
    boolean bool;
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      bool = true;
      if (!bool) {
        break label50;
      }
    }
    label50:
    for (paramList = new bed(paramList);; paramList = null)
    {
      q.a(paramList);
      r.a(bool);
      return;
      bool = false;
      break;
    }
  }
  
  public long b(int paramInt)
  {
    return -1L;
  }
  
  public void b(bec parambec)
  {
    a(t, parambec);
  }
  
  public boolean b(boolean paramBoolean)
  {
    if (j)
    {
      if (!s.d()) {}
      while ((paramBoolean) && (!u.d())) {
        return false;
      }
    }
    return t.d();
  }
  
  public void c(bec parambec)
  {
    a(u, parambec);
  }
  
  public boolean c(boolean paramBoolean)
  {
    if (j)
    {
      if (!s.b()) {}
      while ((paramBoolean) && (!u.b())) {
        return false;
      }
    }
    return t.b();
  }
  
  public void d(bec parambec)
  {
    m = parambec;
    f();
  }
  
  public void d(boolean paramBoolean)
  {
    if (g == paramBoolean) {}
    do
    {
      return;
      if (paramBoolean) {
        l.a(e.g()).a(2553).d();
      }
      g = paramBoolean;
      f();
    } while (h == null);
    h.u();
  }
  
  public boolean d()
  {
    return (j) && (!TextUtils.isEmpty(i));
  }
  
  public boolean e()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     das
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */