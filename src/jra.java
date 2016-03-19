import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class jra
  implements atn, hpu, hqg, ioo, ioq, iov, iow, iox
{
  private final Activity a;
  private int b = -1;
  private List<hpw> c = new ArrayList();
  private final hpz d;
  private boolean e = false;
  private final String f;
  private boolean g = false;
  private int h = -1;
  private boolean i = false;
  
  jra(Activity paramActivity, hpz paramhpz, String paramString)
  {
    a = paramActivity;
    d = paramhpz;
    f = paramString;
    if ((paramActivity instanceof iof)) {
      ((iof)paramActivity).getLifecycle().a(this);
    }
  }
  
  private static hpv a(int paramInt)
  {
    if (paramInt == -1) {
      return hpv.b;
    }
    return hpv.c;
  }
  
  private void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((hpw)localIterator.next()).a(paramBoolean, paramhpv1, paramhpv2, paramInt1, paramInt2);
    }
  }
  
  private void g()
  {
    int j;
    int k;
    if ((e) && (g))
    {
      j = b;
      b = h;
      if (b != j)
      {
        k = b;
        if (b == j) {
          break label95;
        }
      }
    }
    label95:
    for (boolean bool = true;; bool = false)
    {
      a(bool, a(j), a(k), j, k);
      if (i) {
        d.a(f, b);
      }
      g = false;
      return;
    }
  }
  
  private void h()
  {
    if (b == -1) {}
    for (boolean bool = true;; bool = d.c(b))
    {
      if (!bool)
      {
        b = -1;
        a.finish();
      }
      return;
    }
  }
  
  public void X_()
  {
    e = true;
    g();
    h();
  }
  
  public void Y_()
  {
    if (e) {
      h();
    }
  }
  
  public int a()
  {
    aal.w();
    return b;
  }
  
  public hpu a(hpw paramhpw)
  {
    c.add(paramhpw);
    return this;
  }
  
  public void a(Bundle paramBundle)
  {
    d.a(this);
    if (paramBundle != null) {
      b = paramBundle.getInt("state_account_id");
    }
    for (;;)
    {
      if (b != -1) {
        h();
      }
      int j = b;
      a(true, hpv.a, a(j), -1, j);
      e = true;
      return;
      if (a.getIntent().hasExtra("account_id")) {
        b = a.getIntent().getIntExtra("account_id", -1);
      } else {
        b = d.d(f);
      }
    }
  }
  
  public void b(Bundle paramBundle)
  {
    e = false;
    paramBundle.putInt("state_account_id", b);
  }
  
  public boolean b()
  {
    aal.w();
    return b != -1;
  }
  
  public hqb c()
  {
    aal.w();
    return d.a(b);
  }
  
  public void h_()
  {
    d.b(this);
  }
  
  public void s_()
  {
    e = true;
    g();
    h();
  }
}

/* Location:
 * Qualified Name:     jra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */