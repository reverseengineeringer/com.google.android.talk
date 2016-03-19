import android.content.res.Resources;
import android.graphics.drawable.TransitionDrawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.FixedParticipantsView;
import java.util.Iterator;
import java.util.List;

public final class cfn
  implements ios, iov, ioz
{
  private static final boolean k;
  final cfc a = cfc.a();
  private final cfq b = new cfq(this);
  private final ba c;
  private final Resources d;
  private final Handler e = new Handler(Looper.getMainLooper());
  private int f = 0;
  private cfr g = cfr.a;
  private boolean h;
  private boolean i;
  private boolean j;
  private final Runnable l = new cfo(this);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      return;
    }
  }
  
  public cfn(ba paramba, iog paramiog)
  {
    c = paramba;
    d = paramba.getResources();
    paramiog.a(this);
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (i == paramBoolean1) {
      return;
    }
    i = paramBoolean1;
    Object localObject = c.findViewById(aen.cG);
    int m = d.getInteger(aal.eL);
    ViewPropertyAnimator localViewPropertyAnimator = ((View)localObject).animate();
    long l1;
    float f1;
    if (paramBoolean2)
    {
      l1 = m;
      localObject = localViewPropertyAnimator.setDuration(l1).setListener(new axa((View)localObject));
      if (!paramBoolean1) {
        break label130;
      }
      f1 = 1.0F;
      label81:
      ((ViewPropertyAnimator)localObject).alpha(f1);
      localObject = (TransitionDrawable)c.findViewById(aen.di).getBackground();
      ((TransitionDrawable)localObject).setCrossFadeEnabled(true);
      if (!paramBoolean2) {
        break label135;
      }
    }
    for (;;)
    {
      ((TransitionDrawable)localObject).reverseTransition(m);
      return;
      l1 = 0L;
      break;
      label130:
      f1 = 0.0F;
      break label81;
      label135:
      m = 0;
    }
  }
  
  public void X_()
  {
    a.a(b);
    h = true;
    c();
  }
  
  public void a()
  {
    a.b(b);
    h = false;
    c();
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
    c();
  }
  
  void a(cgw paramcgw)
  {
    int n = 0;
    int i1 = 1;
    TextView localTextView = (TextView)c.findViewById(aen.cu).findViewById(aen.aT);
    if (k) {}
    for (int m = 1;; m = 0)
    {
      ks.e(localTextView, m);
      if ((paramcgw != null) && (paramcgw.F().size() == 1) && (paramcgw.J() == 1)) {
        break;
      }
      localTextView.setVisibility(8);
      return;
    }
    paramcgw = paramcgw.T();
    if (paramcgw.size() == 1)
    {
      paramcgw = ((chb)paramcgw.get(0)).b();
      if (!TextUtils.isEmpty(paramcgw))
      {
        localTextView.setText(d.getString(StressMode.bv, new Object[] { paramcgw }));
        localTextView.setContentDescription(d.getString(StressMode.bw, new Object[] { paramcgw }));
        m = i1;
        if (!j)
        {
          j = true;
          aal.c(1631);
        }
      }
    }
    for (m = i1;; m = 0)
    {
      if (m != 0) {}
      for (;;)
      {
        localTextView.setVisibility(n);
        if ((m == 0) || (k)) {
          break;
        }
        ezc.a(localTextView, null, localTextView.getContentDescription());
        return;
        n = 8;
      }
    }
  }
  
  void a(boolean paramBoolean)
  {
    Object localObject = c.findViewById(aen.cA);
    int m = d.getInteger(aal.eL);
    localObject = ((View)localObject).animate();
    if (paramBoolean) {}
    for (long l1 = m;; l1 = 0L)
    {
      ((ViewPropertyAnimator)localObject).setDuration(l1).translationY(0.0F);
      a(true, paramBoolean);
      return;
    }
  }
  
  void c()
  {
    Object localObject2 = a.r();
    label42:
    boolean bool1;
    label63:
    int m;
    if ((!h) || (f != 2) || (localObject2 == null) || (((cgw)localObject2).N()))
    {
      localObject1 = cfr.a;
      if (localObject1 != g)
      {
        if (g != cfr.d) {
          break label370;
        }
        bool1 = true;
        localObject3 = c.findViewById(aen.cu);
        ((FixedParticipantsView)((View)localObject3).findViewById(aen.cr)).a();
        ((View)localObject3).setVisibility(8);
        localObject3 = c.findViewById(aen.cA);
        ((FixedParticipantsView)c.findViewById(aen.cr)).a();
        m = d.getInteger(aal.eL);
        localObject3 = ((View)localObject3).animate();
        if (!bool1) {
          break label375;
        }
      }
    }
    label337:
    label345:
    label370:
    label375:
    for (long l1 = m;; l1 = 0L)
    {
      ((ViewPropertyAnimator)localObject3).setDuration(l1).translationY(d.getDimension(aal.eb));
      e.removeCallbacks(l);
      a(false, bool1);
      g = ((cfr)localObject1);
      switch (cfp.a[g.ordinal()])
      {
      default: 
        localObject1 = String.valueOf(g);
        hbs.a(String.valueOf(localObject1).length() + 26 + "Unsupported overlay type: " + (String)localObject1);
      case 4: 
        return;
        bool1 = ((cgw)localObject2).C();
        if (((cgw)localObject2).H() == 0) {}
        boolean bool3;
        for (m = 1;; m = 0)
        {
          boolean bool2 = ((cgw)localObject2).K();
          bool3 = a.l();
          if ((!bool1) || (m == 0)) {
            break label345;
          }
          if (!bool2) {
            break label337;
          }
          localObject1 = cfr.b;
          break;
        }
        localObject1 = cfr.c;
        break label42;
        if ((!bool1) && (!bool3))
        {
          localObject1 = cfr.d;
          break label42;
        }
        localObject1 = cfr.a;
        break label42;
        bool1 = false;
        break label63;
      }
    }
    Object localObject3 = c.findViewById(aen.cu);
    Object localObject4 = (TextView)((View)localObject3).findViewById(aen.eK);
    Object localObject1 = (FixedParticipantsView)((View)localObject3).findViewById(aen.cr);
    Object localObject5 = ((cgw)localObject2).F();
    label483:
    cyx localcyx;
    if (((List)localObject5).size() == 1)
    {
      m = R.drawable.ax;
      ((FixedParticipantsView)localObject1).setBackgroundResource(m);
      ((FixedParticipantsView)localObject1).a(((cgw)localObject2).l(), (List)localObject5);
      if (((cgw)localObject2).K())
      {
        localObject1 = ((cgw)localObject2).l();
        localObject5 = ((List)localObject5).iterator();
        if (!((Iterator)localObject5).hasNext()) {
          break label641;
        }
        localcyx = (cyx)((Iterator)localObject5).next();
        if (localcyx.e() == null) {
          break label574;
        }
        localObject1 = d.getString(StressMode.dL, new Object[] { ezm.a(localcyx.e(), ezp.b) });
      }
    }
    for (;;)
    {
      ((TextView)localObject4).setText((CharSequence)localObject1);
      ((TextView)localObject4).setVisibility(0);
      ((View)localObject3).setVisibility(0);
      a((cgw)localObject2);
      return;
      m = 0;
      break;
      label574:
      if ((!localcyx.h()) || (!((bfd)localObject1).t())) {
        break label483;
      }
      localObject5 = d;
      if (!((bfd)localObject1).R()) {}
      for (m = StressMode.dM;; m = StressMode.dN)
      {
        localObject1 = ((Resources)localObject5).getString(m, new Object[] { ezm.p(((bfd)localObject1).v()) });
        break;
      }
      label641:
      localObject1 = d.getString(StressMode.dG);
    }
    localObject1 = ((cgw)localObject2).F();
    localObject3 = (TextView)c.findViewById(aen.cA).findViewById(aen.eK);
    localObject4 = (FixedParticipantsView)c.findViewById(aen.cr);
    ((FixedParticipantsView)localObject4).a(((cgw)localObject2).l(), (List)localObject1);
    ((FixedParticipantsView)localObject4).setVisibility(0);
    switch (((List)localObject1).size())
    {
    default: 
      localObject1 = String.format(d.getString(StressMode.dO), new Object[] { aal.a((cyx)((List)localObject1).get(0), true), aal.a((cyx)((List)localObject1).get(1), true), aal.a((cyx)((List)localObject1).get(2), true), Integer.valueOf(((List)localObject1).size() - 3) });
    }
    for (;;)
    {
      ((TextView)localObject3).setText((CharSequence)localObject1);
      a(false);
      return;
      localObject1 = d.getString(StressMode.dG);
      continue;
      localObject1 = String.format(d.getString(StressMode.dH), new Object[] { aal.a((cyx)((List)localObject1).get(0), true) });
      continue;
      localObject1 = String.format(d.getString(StressMode.dI), new Object[] { aal.a((cyx)((List)localObject1).get(0), true), aal.a((cyx)((List)localObject1).get(1), true) });
      continue;
      localObject1 = String.format(d.getString(StressMode.dJ), new Object[] { aal.a((cyx)((List)localObject1).get(0), true), aal.a((cyx)((List)localObject1).get(1), true), aal.a((cyx)((List)localObject1).get(2), true) });
      continue;
      localObject1 = String.format(d.getString(StressMode.dK), new Object[] { aal.a((cyx)((List)localObject1).get(0), true), aal.a((cyx)((List)localObject1).get(1), true), aal.a((cyx)((List)localObject1).get(2), true), aal.a((cyx)((List)localObject1).get(3), true) });
    }
    localObject1 = c.findViewById(aen.cA);
    localObject2 = (TextView)((View)localObject1).findViewById(aen.eK);
    localObject3 = (FixedParticipantsView)c.findViewById(aen.cr);
    localObject4 = d.getString(StressMode.dC);
    ((TextView)localObject2).setText((CharSequence)localObject4);
    ((FixedParticipantsView)localObject3).a();
    ((FixedParticipantsView)localObject3).setVisibility(8);
    e.postDelayed(l, 4000L);
    ezc.a((View)localObject1, null, (CharSequence)localObject4);
  }
}

/* Location:
 * Qualified Name:     cfn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */