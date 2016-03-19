import android.animation.LayoutTransition;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.hangout.HangoutFragment;
import com.google.android.apps.hangouts.hangout.HangoutSelfMenu;
import com.google.android.apps.hangouts.hangout.ParticipantTrayView;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class chu
  implements cgm, cjc, cje
{
  static final long a = TimeUnit.SECONDS.toMillis(1L);
  private static final long i = TimeUnit.SECONDS.toMillis(5L);
  private static final ksm<hke, hkd> r = ksm.a(hke.a, hkd.a, hke.d, hkd.c, hke.b, hkd.b, hke.c, hkd.d);
  private static final ksm<hkd, Integer> s = ksm.a(hkd.a, Integer.valueOf(2063), hkd.c, Integer.valueOf(2062), hkd.b, Integer.valueOf(2064), hkd.d, Integer.valueOf(2065));
  final cfc b = cfc.a();
  final Runnable c = new chw(this);
  final HangoutSelfMenu d;
  final HangoutSelfMenu e;
  cgn f;
  boolean g;
  cic h = cic.a;
  private final cib j = new cib(this);
  private final HangoutActivity k;
  private final View l;
  private final Runnable m = new chv(this);
  private final ParticipantTrayView n;
  private final int o;
  private boolean p;
  private boolean q = false;
  private final View.OnClickListener t = new chx(this);
  
  public chu(HangoutFragment paramHangoutFragment, ViewGroup paramViewGroup)
  {
    l = paramViewGroup;
    k = ((HangoutActivity)paramHangoutFragment.getActivity());
    o = k.getResources().getDimensionPixelSize(aal.ed);
    n = ((ParticipantTrayView)paramViewGroup.findViewById(aen.cX));
    d = ((HangoutSelfMenu)paramViewGroup.findViewById(aen.cY));
    e = ((HangoutSelfMenu)paramViewGroup.findViewById(aen.cH));
    n.setVisibility(4);
    g = false;
    ((Button)paramViewGroup.findViewById(aen.dJ)).setOnClickListener(t);
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      d.startAnimation(a(-q(), o + exa.a(l, k), d, true));
      return;
    }
    d.startAnimation(a(o + exa.b(k), -q(), d, false));
  }
  
  private boolean p()
  {
    Object localObject2 = null;
    Object localObject1 = b.r();
    if (localObject1 == null)
    {
      localObject1 = null;
      if (localObject1 != null) {
        break label46;
      }
    }
    label46:
    for (localObject1 = localObject2;; localObject1 = ((hcs)localObject1).l())
    {
      if ((localObject1 == null) || (((Collection)localObject1).size() != 1)) {
        break label54;
      }
      return true;
      localObject1 = ((cgw)localObject1).q();
      break;
    }
    label54:
    return false;
  }
  
  private int q()
  {
    ViewGroup.LayoutParams localLayoutParams = d.getLayoutParams();
    if ((localLayoutParams != null) && (height >= 0)) {
      return height;
    }
    return k.getResources().getDimensionPixelSize(aal.ec);
  }
  
  private void r()
  {
    Animation localAnimation = d.getAnimation();
    if (localAnimation != null) {
      localAnimation.cancel();
    }
    localAnimation = n.getAnimation();
    if (localAnimation != null) {
      localAnimation.cancel();
    }
  }
  
  private void s()
  {
    k.g().f();
    exa.a(l);
  }
  
  private void t()
  {
    k.g().e();
    exa.a(l, true);
  }
  
  public Animation a(int paramInt1, int paramInt2, LinearLayout paramLinearLayout, boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams = paramLinearLayout.getLayoutParams();
    int i1 = paramInt2 - paramInt1;
    String str1;
    if (paramLinearLayout == d)
    {
      str1 = "menu";
      if (!paramBoolean) {
        break label172;
      }
    }
    label172:
    for (String str2 = "up";; str2 = "down")
    {
      ezi.a("Babel_calls", String.valueOf(str1).length() + 68 + String.valueOf(str2).length() + "createAnimation for " + str1 + " " + paramInt2 + " -> " + paramInt1 + " (" + str2 + ") delta=" + i1, new Object[0]);
      paramLinearLayout = new chy(this, localLayoutParams, paramInt1, i1, paramLinearLayout, paramBoolean);
      paramLinearLayout.setDuration(k.getResources().getInteger(aal.eL));
      return paramLinearLayout;
      str1 = "filmstrip";
      break;
    }
  }
  
  public String a(Context paramContext)
  {
    String str = "";
    if (h == cic.b) {
      str = paramContext.getString(StressMode.dP);
    }
    while (h != cic.c) {
      return str;
    }
    return paramContext.getString(StressMode.et);
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 2) {
      c();
    }
  }
  
  public void a(cgn paramcgn)
  {
    f = paramcgn;
    if (paramcgn.c() == 1)
    {
      paramcgn.a(0);
      a(e);
      p = ewz.b();
      if ((!i()) || (p)) {
        break label123;
      }
      h = cic.c;
      n.setVisibility(0);
      s();
    }
    for (;;)
    {
      b.a(j);
      d();
      m();
      ((cla)ilh.a(paramcgn.b(), cla.class)).a(new cia(this));
      return;
      a(d);
      break;
      label123:
      h = cic.b;
      c();
    }
  }
  
  void a(HangoutSelfMenu paramHangoutSelfMenu)
  {
    if (!paramHangoutSelfMenu.a()) {
      paramHangoutSelfMenu.a(f, new hkx().f(), b.r());
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      k();
      return;
    }
    j();
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!paramBoolean2)
    {
      if (!paramBoolean1) {
        break label13;
      }
      s();
    }
    label13:
    while (h == cic.a) {
      return;
    }
    t();
    m();
  }
  
  public boolean a()
  {
    return o();
  }
  
  String b(Context paramContext)
  {
    String str = "";
    if (h == cic.b) {
      str = paramContext.getString(StressMode.cv);
    }
    while (h != cic.c) {
      return str;
    }
    return paramContext.getString(StressMode.cw);
  }
  
  public void b()
  {
    k.g().a(new qg(this));
  }
  
  void c()
  {
    d();
    m();
    f.j();
    t();
    r();
    if (f.c() == 2)
    {
      String str = String.valueOf(h);
      ezi.a("Babel_calls", String.valueOf(str).length() + 18 + "animateControlsUp " + str, new Object[0]);
      if (h != cic.b) {
        b(true);
      }
      if (h == cic.c) {
        n.a(false);
      }
      n.setVisibility(4);
    }
    j();
    h = cic.b;
  }
  
  void d()
  {
    Object localObject2 = null;
    int i7 = 1;
    int i6 = 0;
    Object localObject1 = b.r();
    label35:
    boolean bool;
    int i1;
    label51:
    label60:
    int i3;
    label68:
    int i4;
    if (localObject1 == null)
    {
      localObject1 = null;
      if (localObject1 != null) {
        break label215;
      }
      localObject1 = localObject2;
      bool = b.t();
      if (localObject1 != null) {
        break label225;
      }
      i1 = 1;
      if (f != null) {
        break label245;
      }
      i2 = 0;
      if ((i2 & 0x1) == 0) {
        break label256;
      }
      i3 = 1;
      if ((i2 & 0x2) == 0) {
        break label261;
      }
      i4 = 1;
      label77:
      localObject1 = b.k();
      if ((localObject1 == null) || (!((hjk)localObject1).a())) {
        break label283;
      }
    }
    label142:
    label178:
    label215:
    label225:
    label245:
    label256:
    label261:
    label272:
    label277:
    label283:
    for (int i2 = 1;; i2 = 0)
    {
      int i5 = i2;
      if (localObject1 != null)
      {
        i5 = i2;
        if (((hjk)localObject1).b()) {
          i5 = i2 + 1;
        }
      }
      if ((i3 != 0) && ((p()) || (i1 != 0)))
      {
        i1 = 1;
        if ((i1 != 0) || (i4 == 0) || (bool) || (i5 <= 1) || (localObject1 == null) || (!((hjk)localObject1).g())) {
          break label272;
        }
        i1 = i7;
        if (f != null)
        {
          localObject1 = f;
          if (i1 == 0) {
            break label277;
          }
        }
      }
      for (i1 = i6;; i1 = 8)
      {
        ((cgn)localObject1).b(i1);
        return;
        localObject1 = ((cgw)localObject1).q();
        break;
        localObject1 = ((hcs)localObject1).l();
        break label35;
        if (((Collection)localObject1).size() == 0)
        {
          i1 = 1;
          break label51;
        }
        i1 = 0;
        break label51;
        i2 = f.g();
        break label60;
        i3 = 0;
        break label68;
        i4 = 0;
        break label77;
        i1 = 0;
        break label142;
        i1 = 0;
        break label178;
      }
    }
  }
  
  public void e()
  {
    Object localObject1 = b.r();
    int i1;
    if ((localObject1 != null) && (((cgw)localObject1).j()))
    {
      i1 = 1;
      if (!((cgw)localObject1).K()) {
        break label141;
      }
    }
    bfd localbfd;
    ArrayList localArrayList;
    label141:
    for (localObject1 = bkw.c;; localObject1 = bkw.d)
    {
      localbfd = f.a();
      localArrayList = new ArrayList();
      localObject2 = b.p().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        hkx localhkx = (hkx)((Iterator)localObject2).next();
        if ((!localhkx.g()) && (localhkx.m())) {
          localArrayList.add(aal.a(aal.a(localhkx.h(), null, null), localhkx.b(), null, null, localhkx.c(), null));
        }
      }
      i1 = 0;
      break;
    }
    if (i1 != 0) {}
    for (Object localObject2 = dhm.e;; localObject2 = dhm.f)
    {
      localObject1 = aal.a(localbfd, null, localArrayList, (dhm)localObject2, (bkw)localObject1);
      k.startActivity((Intent)localObject1);
      return;
    }
  }
  
  public void f()
  {
    aal.c(1533);
    hjk localhjk = b.k();
    if (localhjk.h() == 1)
    {
      localhjk.a(2);
      ezi.a("Babel_calls", "Switching to rear camera", new Object[0]);
    }
    for (;;)
    {
      j();
      f.j();
      if (ewz.b()) {
        hbs.b("Switch camera button view is null after being tapped.", l.findViewById(aen.cP));
      }
      return;
      localhjk.a(1);
      ezi.a("Babel_calls", "Switching to front camera", new Object[0]);
    }
  }
  
  public void g()
  {
    hkd localhkd = null;
    aal.c(1531);
    Object localObject1 = b.j();
    if (localObject1 == null) {
      localObject1 = localhkd;
    }
    label188:
    for (;;)
    {
      if (localObject1 == null)
      {
        return;
        Object localObject2 = ((hjz)localObject1).c();
        Set localSet = ((hjz)localObject1).d();
        localObject1 = localhkd;
        if (localObject2 != hke.e)
        {
          localObject1 = localhkd;
          if (localObject2 != hke.f)
          {
            localhkd = (hkd)r.get(localObject2);
            localObject2 = (hkd[])localSet.toArray(new hkd[localSet.size()]);
            localObject1 = localObject2[0];
            int i1 = 0;
            for (;;)
            {
              if (i1 >= localObject2.length) {
                break label188;
              }
              if (localObject2[i1].equals(localhkd))
              {
                localObject1 = localObject2[((i1 + 1) % localObject2.length)];
                break;
              }
              i1 += 1;
            }
          }
        }
      }
      else
      {
        hbs.a("Expected condition to be true", s.containsKey(localObject1));
        b.j().a((hkd)localObject1);
        f.k();
        aal.c(aal.a((Integer)s.get(localObject1), 0));
        return;
      }
    }
  }
  
  void h()
  {
    ezi.a("Babel_calls", "MenuController.dismissAllMenus", new Object[0]);
    if (!i())
    {
      c();
      return;
    }
    s();
    r();
    int i1 = f.c();
    ezi.a("Babel_calls", 54 + "MenuController.animateControlsDown uiState=" + i1, new Object[0]);
    if (f.c() == 2)
    {
      localObject = String.valueOf(h);
      ezi.a("Babel_calls", String.valueOf(localObject).length() + 47 + "MenuController.animateControlsDown visibleMenu=" + (String)localObject, new Object[0]);
      if (h == cic.b) {
        b(false);
      }
      if (h != cic.c) {
        n.a(true);
      }
      n.setVisibility(0);
      if (!q)
      {
        n.b();
        q = true;
      }
    }
    h = cic.c;
    Object localObject = m;
    aal.y().removeCallbacks((Runnable)localObject);
  }
  
  boolean i()
  {
    if (b.t()) {}
    cgw localcgw;
    do
    {
      return false;
      localcgw = b.r();
    } while (((localcgw != null) && ((localcgw.J() & 0x2) == 0) && (p())) || (f.i()) || (!b.s()));
    return true;
  }
  
  void j()
  {
    if ((!p) && (i()))
    {
      Runnable localRunnable = m;
      aal.y().removeCallbacks(localRunnable);
      aal.a(m, i);
    }
  }
  
  void k()
  {
    Runnable localRunnable = m;
    aal.y().removeCallbacks(localRunnable);
  }
  
  void l()
  {
    j();
  }
  
  void m()
  {
    int i3 = 1;
    float f2 = 1.0F;
    r();
    int i1;
    Object localObject;
    int i2;
    if (h == cic.b)
    {
      i1 = 1;
      localObject = (FrameLayout.LayoutParams)d.getLayoutParams();
      if (i1 == 0) {
        break label176;
      }
      i2 = o + exa.a(l, k);
      label55:
      bottomMargin = i2;
      d.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = d;
      if (i1 == 0) {
        break label186;
      }
      f1 = 1.0F;
      label83:
      ((HangoutSelfMenu)localObject).setAlpha(f1);
      if (h != cic.c) {
        break label191;
      }
      i1 = i3;
      label102:
      localObject = (FrameLayout.LayoutParams)n.getLayoutParams();
      if (i1 == 0) {
        break label196;
      }
      i2 = o + exa.a(l, k);
      bottomMargin = i2;
      n.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = n;
      if (i1 == 0) {
        break label251;
      }
    }
    label176:
    label186:
    label191:
    label196:
    label251:
    for (float f1 = f2;; f1 = 0.0F)
    {
      ((ParticipantTrayView)localObject).setAlpha(f1);
      return;
      i1 = 0;
      break;
      i2 = -q();
      break label55;
      f1 = 0.0F;
      break label83;
      i1 = 0;
      break label102;
      ViewGroup.LayoutParams localLayoutParams = n.getLayoutParams();
      if ((localLayoutParams != null) && (height >= 0)) {}
      for (i2 = height;; i2 = k.getResources().getDimensionPixelSize(aal.ef))
      {
        i2 = -i2;
        break;
      }
    }
  }
  
  void n()
  {
    if (h == cic.c)
    {
      if (n.i())
      {
        n.a(true);
        return;
      }
      c();
      return;
    }
    h();
  }
  
  public boolean o()
  {
    hjz localhjz = b.j();
    return (localhjz != null) && (localhjz.c() == hke.b);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    paramConfiguration = d;
    chz localchz = new chz(this);
    LayoutTransition localLayoutTransition = paramConfiguration.getLayoutTransition();
    paramConfiguration.setLayoutTransition(null);
    localchz.run();
    paramConfiguration.setLayoutTransition(localLayoutTransition);
    m();
  }
  
  public void r_()
  {
    b.b(j);
    d.b();
    e.b();
    Runnable localRunnable = m;
    aal.y().removeCallbacks(localRunnable);
    localRunnable = c;
    aal.y().removeCallbacks(localRunnable);
    f = null;
  }
}

/* Location:
 * Qualified Name:     chu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */