import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.util.TypedValue;
import android.view.Display;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.FocusedParticipantView;
import com.google.android.apps.hangouts.hangout.ParticipantOverlays;
import com.google.android.apps.hangouts.hangout.ParticipantTrayView;
import com.google.android.apps.hangouts.hangout.RemoteParticipantPopupMenu;
import com.google.android.apps.hangouts.hangout.StressMode;

public abstract class ciu
  extends LinearLayout
  implements bhv, cgm, hkn
{
  private it A;
  private ceh B;
  private cei C;
  public hkx a;
  public final cfc b = cfc.a();
  public cgn c;
  public final chu d;
  public final ParticipantTrayView e;
  public final FocusedParticipantView f;
  public int g = 0;
  final ImageView h;
  public final ImageButton i;
  final RemoteParticipantPopupMenu j;
  boolean k;
  boolean l;
  public Bitmap m;
  Bitmap n;
  boolean o = true;
  private final ViewGroup p;
  private final TextView q;
  private final ParticipantOverlays r;
  private final cju s;
  private final auw<Bitmap> t = new civ(this);
  private boolean u;
  private boolean v;
  private String w;
  private String x;
  private bhs y;
  private boolean z;
  
  ciu(chu paramchu, hkx paramhkx, ParticipantTrayView paramParticipantTrayView, FocusedParticipantView paramFocusedParticipantView)
  {
    super(paramParticipantTrayView.getContext(), null);
    hbs.b("Expected non-null", paramhkx);
    d = paramchu;
    a = paramhkx;
    e = paramParticipantTrayView;
    f = paramFocusedParticipantView;
    inflate(getContext(), aal.fQ, this);
    p = ((ViewGroup)findViewById(aen.cS));
    h = ((ImageView)findViewById(aen.cU));
    i = ((ImageButton)findViewById(aen.cR));
    i.setOnClickListener(new ciw(this));
    i.setOnLongClickListener(new cix(this));
    j = ((RemoteParticipantPopupMenu)findViewById(aen.eX));
    q = ((TextView)findViewById(aen.cV));
    s = new cju(getContext(), p);
    r = ((ParticipantOverlays)findViewById(aen.eM));
    A = new it(getContext(), new ciz(this));
    B = ((ceh)ilh.a(getContext(), ceh.class));
    C = ((cei)ilh.a(getContext(), cei.class));
  }
  
  private void o()
  {
    if (c.n() != null) {
      c.n().a(l(), findViewById(aen.cW), new cja(this));
    }
  }
  
  private void p()
  {
    a(l);
    if (x != null) {}
    for (String str1 = x;; str1 = w)
    {
      TextView localTextView = q;
      String str2 = str1;
      if (a.l()) {
        str2 = ezm.p(str1);
      }
      localTextView.setText(str2);
      return;
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 2) {
      o();
    }
  }
  
  public void a(cgn paramcgn)
  {
    c = paramcgn;
    o();
    if ((l) && (paramcgn.n() != null)) {
      paramcgn.n().b(l());
    }
    i();
    f();
    r.a(a);
    r.setVisibility(0);
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", paramexs);
    if (paramBoolean1)
    {
      m = parameys.d();
      n = eye.a(m);
      h.setImageBitmap(m);
      f.a(a.a());
    }
  }
  
  void a(String paramString)
  {
    w = paramString;
    p();
  }
  
  protected void a(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean) {
      if (a.d()) {
        i1 = StressMode.so;
      }
    }
    for (;;)
    {
      i.setContentDescription(getResources().getString(i1, new Object[] { g() }));
      return;
      i1 = StressMode.sn;
      continue;
      if (a.d()) {
        i1 = StressMode.hv;
      } else {
        i1 = StressMode.hu;
      }
    }
  }
  
  public void b()
  {
    if (c.n() != null) {
      c.n().a(l());
    }
    if (y != null)
    {
      y.b();
      y = null;
    }
    if (j.a()) {
      j.b();
    }
  }
  
  void b(int paramInt)
  {
    s.a(paramInt);
  }
  
  void b(String paramString)
  {
    x = paramString;
    p();
  }
  
  protected int c(int paramInt)
  {
    return paramInt;
  }
  
  public hkx c()
  {
    return a;
  }
  
  protected void c(String paramString)
  {
    hbs.b("Expected non-null", paramString);
    bfd localbfd = c.a();
    if (B.a()) {
      B.a(paramString, t, C.c(bfq.d()), (hav)C.b().a());
    }
    eit localeit;
    do
    {
      return;
      localeit = (eit)ilh.a(getContext(), eit.class);
      if (y != null) {
        localeit.b(y);
      }
      y = new bhs(new eyd(paramString, localbfd.a()).a(bfq.d()).d(true), this, true, null);
    } while (!localeit.a(y));
    y = null;
  }
  
  protected void d()
  {
    Object localObject2 = null;
    boolean bool = l;
    Object localObject3;
    Object localObject1;
    if (c.n() != null)
    {
      localObject3 = c.n();
      if (bool)
      {
        localObject1 = null;
        ((hjq)localObject3).b((String)localObject1);
      }
    }
    else
    {
      localObject3 = b;
      if (!bool) {
        break label87;
      }
      localObject1 = localObject2;
      label50:
      ((cfc)localObject3).b((String)localObject1);
      d.l();
      if (bool) {
        break label98;
      }
    }
    label87:
    label98:
    for (bool = true;; bool = false)
    {
      l = bool;
      i();
      return;
      localObject1 = l();
      break;
      localObject1 = a.a();
      break label50;
    }
  }
  
  protected void d(int paramInt)
  {
    hbs.a(paramInt, 1, 3);
    if (g != paramInt)
    {
      String str = String.valueOf(a.a());
      int i1 = g;
      new StringBuilder(String.valueOf(str).length() + 56).append("ParticipantView: switch ").append(str).append(" from ").append(i1).append(" to ").append(paramInt);
      g = paramInt;
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    super.dispatchTouchEvent(paramMotionEvent);
    return A.a(paramMotionEvent);
  }
  
  public void e()
  {
    if (j.a())
    {
      j.b();
      j.setVisibility(8);
    }
  }
  
  void f()
  {
    ViewGroup.LayoutParams localLayoutParams = p.getLayoutParams();
    Resources localResources = i.getResources();
    Object localObject = (WindowManager)getContext().getSystemService("window");
    Point localPoint = new Point();
    ((WindowManager)localObject).getDefaultDisplay().getSize(localPoint);
    localObject = new TypedValue();
    localResources.getValue(aal.ee, (TypedValue)localObject, true);
    float f1 = ((TypedValue)localObject).getFloat();
    int i1 = localResources.getDimensionPixelSize(aal.ed);
    int i2 = localResources.getDimensionPixelSize(aal.ef);
    int i3 = localResources.getInteger(aal.eK);
    height = Math.min(Math.min((int)(f1 * (y - (i1 << 1))), (x - (i1 << 1)) / i3), i2);
    width = c(height);
    p.setLayoutParams(localLayoutParams);
  }
  
  String g()
  {
    return w;
  }
  
  boolean h()
  {
    return u;
  }
  
  public void i()
  {
    int i1 = 4;
    Object localObject;
    if (z)
    {
      d(3);
      v = a.n();
      h.setImageBitmap(j());
      if ((!k) && (!v)) {
        break label133;
      }
      q.setVisibility(0);
      i.setBackgroundResource(R.drawable.ay);
      localObject = h;
      label73:
      ((ImageView)localObject).setVisibility(i1);
      if (k)
      {
        if (!z) {
          break label172;
        }
        f.d();
      }
      label99:
      if (!v) {
        break label182;
      }
      i.setImageResource(R.drawable.bi);
    }
    for (;;)
    {
      a(l);
      return;
      d(1);
      break;
      label133:
      q.setVisibility(4);
      i.setBackgroundResource(R.drawable.aA);
      ImageView localImageView = h;
      localObject = localImageView;
      if (z) {
        break label73;
      }
      i1 = 0;
      localObject = localImageView;
      break label73;
      label172:
      f.e();
      break label99;
      label182:
      if (l) {
        i.setImageResource(R.drawable.az);
      } else {
        i.setImageResource(0);
      }
    }
  }
  
  public boolean isFocused()
  {
    return k;
  }
  
  Bitmap j()
  {
    if (m != null) {
      return m;
    }
    if (a.l()) {
      return bfq.f();
    }
    return bfq.f();
  }
  
  public Bitmap k()
  {
    if (n != null) {
      return n;
    }
    if (a.l()) {
      return bfq.e();
    }
    return bfq.e();
  }
  
  abstract String l();
  
  public void m()
  {
    ezi.a("Babel_calls", "onVideoFramesStarted for %s", new Object[] { l() });
    z = true;
    i();
  }
  
  public void n()
  {
    ezi.a("Babel_calls", "onVideoFramesStopped for %s", new Object[] { l() });
    z = false;
    i();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    f();
  }
  
  public void onWindowVisibilityChanged(int paramInt)
  {
    if (paramInt != 0) {
      e();
    }
  }
  
  public void r_()
  {
    r.a();
    b();
  }
}

/* Location:
 * Qualified Name:     ciu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */