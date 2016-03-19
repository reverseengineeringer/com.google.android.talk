import android.view.ViewGroup;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.hangout.HangoutFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Collections;

public final class cgn
{
  public cgn(HangoutFragment paramHangoutFragment) {}
  
  bfd a()
  {
    return a.ak;
  }
  
  void a(int paramInt)
  {
    a.aj.setVisibility(paramInt);
    if ((paramInt == 0) && (a.g != null)) {
      ezc.a(a.i, a.g, b().getString(StressMode.f));
    }
  }
  
  public void a(String paramString)
  {
    HangoutFragment localHangoutFragment = a;
    if (!a.h) {}
    for (boolean bool = true;; bool = false)
    {
      localHangoutFragment.a(paramString, bool);
      return;
    }
  }
  
  ba b()
  {
    return a.d;
  }
  
  public void b(int paramInt)
  {
    a.ar = paramInt;
    ezi.a("Babel_calls", 53 + "Switch camera menu item visibility is now " + paramInt, new Object[0]);
    a.c();
  }
  
  public int c()
  {
    return a.al;
  }
  
  void d()
  {
    a.f.u();
    if ((a.al == 0) || (a.al == 1)) {
      a.a(2);
    }
  }
  
  public bg e()
  {
    return a.getFragmentManager();
  }
  
  cj f()
  {
    return a.getLoaderManager();
  }
  
  public int g()
  {
    return a.u();
  }
  
  public int h()
  {
    int j = 1;
    cgw localcgw = a.f.r();
    int i;
    if (a.ak.k()) {
      i = 0;
    }
    do
    {
      do
      {
        return i;
        i = j;
      } while (localcgw == null);
      i = j;
    } while (!localcgw.A());
    return 2;
  }
  
  boolean i()
  {
    return a.h;
  }
  
  public void j()
  {
    a.c();
  }
  
  void k()
  {
    a.d();
  }
  
  public void l()
  {
    int i = a.al;
    ezi.c("Babel_calls", 46 + "HangoutFragment onExit with state: " + i, new Object[0]);
    cgw localcgw = a.f.r();
    if (localcgw != null)
    {
      localcgw.b(1004);
      return;
    }
    a.d.n();
  }
  
  public void m()
  {
    if (a.c.a("android.permission.CAMERA"))
    {
      a.a();
      return;
    }
    a.b.a(new dco(HangoutFragment.a, 2657), Collections.singletonList("android.permission.CAMERA"));
  }
  
  public hjq n()
  {
    return a.am;
  }
}

/* Location:
 * Qualified Name:     cgn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */