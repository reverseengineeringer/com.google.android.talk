import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.floatingactionbutton.impl.FloatingActionButton;
import com.google.android.apps.hangouts.floatingactionbutton.impl.QuickButtonContainer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bwy
  implements bwp
{
  static final int a = aen.hU;
  static final int b = aen.hV;
  static final int c = aen.hY;
  static final int d = aen.hW;
  static final int e = aen.hX;
  volatile boolean A = false;
  private final bxh B = new bxh(this);
  private int C;
  private LinearLayout D;
  private Space E;
  private float F;
  private Menu G;
  private SubMenu H;
  private int I = 0;
  private bwq J;
  private hpu K;
  private final awo L;
  private final eot M;
  private int N;
  private int O = 0;
  Context f;
  FloatingActionButton g;
  View h;
  FrameLayout i;
  int j;
  int k;
  Dialog l;
  QuickButtonContainer m;
  bwo n;
  czm o;
  czp p;
  czn q;
  czo r;
  a s;
  MenuItem t;
  MenuItem u;
  MenuItem v;
  MenuItem w;
  MenuItem x;
  List<View.OnClickListener> y = new ArrayList();
  View.OnClickListener z;
  
  bwy(Context paramContext)
  {
    f = paramContext;
    K = ((hpu)ilh.a(paramContext, hpu.class));
    K.a(new bxg(this));
    L = ((awo)ilh.a(paramContext, awo.class));
    M = ((eot)ilh.a(paramContext, eot.class));
  }
  
  private void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, List<bwo> paramList)
  {
    D = ((LinearLayout)m.findViewById(aal.lu));
    O = 0;
    paramList = paramList.iterator();
    int i1 = 0;
    for (;;)
    {
      bwo localbwo;
      View localView;
      if (paramList.hasNext())
      {
        localbwo = (bwo)paramList.next();
        if (localbwo == null) {
          break label286;
        }
        if (i1 != 0) {
          break label235;
        }
        localView = paramViewGroup.findViewById(aal.ls);
        n = localbwo;
        a(localView, localbwo, new bxb(this));
        i1 = 1;
      }
      label235:
      label286:
      while (O == N)
      {
        if (n == null)
        {
          i1 = K.a();
          paramLayoutInflater = String.valueOf("primaryAction == null; account_id: ");
          int i2 = l().g();
          boolean bool1 = M.a(i1);
          boolean bool2 = L.d(i1);
          ezi.e("Babel_FAB", String.valueOf(paramLayoutInflater).length() + 46 + paramLayoutInflater + i2 + " carrier_sms_only: " + bool1 + " sms: " + bool2, new Object[0]);
        }
        hbs.b("Primary action must be set at this point", n);
        return;
        localView = paramLayoutInflater.inflate(aen.ib, m, false);
        D.addView(localView, 0);
        O += 1;
        a(localView, localbwo, new bxd(this, localbwo));
      }
    }
  }
  
  private static void a(View paramView, bwo parambwo, View.OnClickListener paramOnClickListener)
  {
    TextView localTextView = (TextView)paramView.findViewById(aal.lv);
    localTextView.setText(parambwo.z());
    ImageView localImageView = (ImageView)paramView.findViewById(aal.lt);
    if (localImageView != null) {
      localImageView.setImageResource(parambwo.A());
    }
    localTextView.setOnClickListener(paramOnClickListener);
    paramView.setOnClickListener(paramOnClickListener);
  }
  
  static int b(int paramInt)
  {
    if ((paramInt == a) || (paramInt == b) || (paramInt == c)) {
      return aal.lC;
    }
    if (paramInt == d) {
      return aal.lB;
    }
    if (paramInt == e) {
      return aal.lD;
    }
    hbs.a(61 + "Content description is not ready for drawable ID: " + paramInt);
    return 0;
  }
  
  static boolean j()
  {
    return Build.VERSION.SDK_INT >= 19;
  }
  
  public void a()
  {
    b(false);
    if (i != null)
    {
      i.removeAllViews();
      i = null;
    }
    if (m != null)
    {
      m.removeAllViews();
      m = null;
    }
    l = null;
    g = null;
    E = null;
    if (H != null)
    {
      H.clear();
      G.removeItem(H.getItem().getItemId());
    }
    G = null;
    H = null;
    t = null;
    u = null;
    v = null;
    w = null;
  }
  
  void a(float paramFloat)
  {
    ((ViewGroup)g.getParent()).setTranslationX(-paramFloat);
  }
  
  public void a(float paramFloat, boolean paramBoolean)
  {
    F = paramFloat;
    if (i != null)
    {
      if (!paramBoolean) {
        break label74;
      }
      i.animate().translationY(-1.0F * paramFloat);
    }
    for (;;)
    {
      if (E != null)
      {
        if ((!paramBoolean) || (!l.isShowing())) {
          break;
        }
        E.startAnimation(new bxi(E, (int)paramFloat));
      }
      return;
      label74:
      i.setY(-1.0F * paramFloat);
    }
    ViewGroup.LayoutParams localLayoutParams = E.getLayoutParams();
    height = ((int)paramFloat);
    E.setLayoutParams(localLayoutParams);
  }
  
  public void a(int paramInt)
  {
    I = paramInt;
    if (g == null) {
      return;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      if (paramInt == 1) {}
      for (f1 = k;; f1 = j)
      {
        b(f1);
        if (paramInt != 1) {
          break;
        }
        h.setVisibility(0);
        paramInt = i();
        g.a(paramInt, b(paramInt));
        return;
      }
    }
    if (paramInt == 1) {}
    for (float f1 = k;; f1 = j)
    {
      a(f1);
      break;
    }
    if (ezc.a(f))
    {
      h.setVisibility(4);
      return;
    }
    g.a(a, b(a));
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if (i != null)
    {
      int i1 = f.getResources().getInteger(aal.lw);
      ObjectAnimator localObjectAnimator = ObjectAnimator.ofPropertyValuesHolder(i.getBackground(), new PropertyValuesHolder[] { PropertyValuesHolder.ofInt("alpha", new int[] { paramInt1, paramInt2 }) });
      localObjectAnimator.setDuration(i1);
      localObjectAnimator.setInterpolator(new nu());
      localObjectAnimator.start();
    }
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    y.add(paramOnClickListener);
  }
  
  public void a(ba paramba, ViewGroup paramViewGroup, Menu paramMenu)
  {
    int i1 = f.getResources().getDisplayMetrics().heightPixels;
    int i2 = exa.a(f);
    int i3 = f.getResources().getDimensionPixelSize(aal.ll);
    int i4 = f.getResources().getDimensionPixelSize(aal.ll);
    int i5 = f.getResources().getDimensionPixelSize(aal.ln);
    int i6 = f.getResources().getDimensionPixelSize(aal.lo);
    N = ((i1 - i2 - i3 - i4 - i6) / (i5 + i6));
    if (l() == null) {
      ezi.a("Babel_FAB", "Not decorating since account is not yet available", new Object[0]);
    }
    do
    {
      do
      {
        return;
        if ((M.a(K.a())) && (!L.d(K.a())))
        {
          ezi.a("Babel_FAB", "Not decorating since account is carrier sms on account but hangouts is not the sms app", new Object[0]);
          return;
        }
        i = ((FrameLayout)paramViewGroup.findViewById(aen.cj));
        paramba = paramba.getLayoutInflater();
        paramba.inflate(aen.ia, i, true);
        l = new Dialog(f, 16973833);
        paramViewGroup = l.getWindow();
        paramViewGroup.setBackgroundDrawable(new ColorDrawable(0));
        l.setCancelable(false);
        l.setOnKeyListener(new bwz(this));
        m = ((QuickButtonContainer)paramba.inflate(aen.ic, null));
        m.setOnClickListener(new bxa(this));
        paramViewGroup.setContentView(m);
        E = ((Space)m.findViewById(aal.lp));
        paramViewGroup = new ArrayList();
        h();
        paramViewGroup.add(o);
        paramViewGroup.add(q);
        paramViewGroup.add(r);
        paramViewGroup.add(p);
        paramViewGroup.add(s);
        a(paramba, m, paramViewGroup);
        h = i.findViewById(aal.lr);
        g = ((FloatingActionButton)h.findViewById(aal.lq));
        g.a(new bww(this));
        C = g.getResources().getDimensionPixelSize(aal.ll);
        j = 0;
        paramba = ((WindowManager)g.getContext().getSystemService("window")).getDefaultDisplay();
        paramViewGroup = new Point();
        paramba.getSize(paramViewGroup);
        i1 = x;
        i2 = g.getResources().getDimensionPixelSize(aal.lk);
        k = ((i1 - C) / 2 - i2);
        a(F, false);
        g.a(m.a());
        g.a(m.b());
      } while ((paramMenu == null) || (!ezc.a(f)));
      G = paramMenu;
      H = G.addSubMenu(0, aen.fy, 0, aal.lC);
      H.setIcon(R.drawable.bB);
      jr.a(H.getItem(), 2);
      h();
      if (o != null)
      {
        t = H.add(o.z());
        t.setOnMenuItemClickListener(B);
      }
      if (p != null)
      {
        v = H.add(p.z());
        v.setOnMenuItemClickListener(B);
      }
      if (q != null)
      {
        u = H.add(q.z());
        u.setOnMenuItemClickListener(B);
      }
      if (r != null)
      {
        w = H.add(r.z());
        w.setOnMenuItemClickListener(B);
      }
    } while (s == null);
    x = H.add(s.z());
    x.setOnMenuItemClickListener(B);
  }
  
  public void a(bwq parambwq)
  {
    J = parambwq;
  }
  
  void a(bws parambws)
  {
    if (D != null)
    {
      int i1 = O;
      int i3 = f.getResources().getInteger(aal.lz);
      int i2 = 0;
      while (i2 < O)
      {
        Object localObject = D.getChildAt(i2);
        TextView localTextView = (TextView)((View)localObject).findViewById(aal.lv);
        localObject = (ImageView)((View)localObject).findViewById(aal.lt);
        long l1 = i1 * i3;
        localTextView.startAnimation(parambws.a(f, l1));
        if (localObject != null) {
          ((ImageView)localObject).startAnimation(parambws.a(f, l1));
        }
        i2 += 1;
        i1 -= 1;
      }
      ((TextView)D.findViewById(aal.ls).findViewById(aal.lv)).startAnimation(parambws.a(f, 0L));
    }
  }
  
  public void a(boolean paramBoolean)
  {
    FrameLayout localFrameLayout;
    if (i != null)
    {
      localFrameLayout = i;
      if (!paramBoolean) {
        break label24;
      }
    }
    label24:
    for (int i1 = 0;; i1 = 4)
    {
      localFrameLayout.setVisibility(i1);
      return;
    }
  }
  
  public lt b()
  {
    return new bxe(this);
  }
  
  void b(float paramFloat)
  {
    if (ezc.c())
    {
      ((ViewGroup)g.getParent()).setTranslationX(paramFloat);
      return;
    }
    ((ViewGroup)g.getParent()).setTranslationX(-paramFloat);
  }
  
  public void b(View.OnClickListener paramOnClickListener)
  {
    y.remove(paramOnClickListener);
  }
  
  void b(boolean paramBoolean)
  {
    if (g != null) {
      g.a(a, b(a), bwx.b);
    }
    if ((paramBoolean) && (j()))
    {
      a(new bxp());
      a(255, 0);
      Handler localHandler = new Handler();
      A = true;
      localHandler.postDelayed(new bxf(this), f.getResources().getInteger(aal.lA));
      return;
    }
    k();
  }
  
  public void c()
  {
    if (I == 1) {
      g.a(e, b(e), bwx.a);
    }
  }
  
  public void c(View.OnClickListener paramOnClickListener)
  {
    z = paramOnClickListener;
  }
  
  public void d()
  {
    if (I == 1) {
      g.a(e, b(e));
    }
  }
  
  public void e()
  {
    if (I == 1) {
      g.a(d, b(d), bwx.b);
    }
  }
  
  public void f()
  {
    g.callOnClick();
  }
  
  public boolean g()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (m != null)
    {
      bool1 = bool2;
      if (l != null)
      {
        bool1 = bool2;
        if (l.isShowing())
        {
          b(false);
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  void h()
  {
    if (M.a(K.a()))
    {
      o = null;
      p = null;
      q = null;
      s = null;
      if (L.d(K.a())) {
        r = ((czo)ilh.b(f, czo.class));
      }
    }
    else
    {
      o = ((czm)ilh.b(f, czm.class));
      p = ((czp)ilh.b(f, czp.class));
      if (aal.a(l(), bhh.g)) {}
      for (q = ((czn)ilh.b(f, czn.class));; q = null)
      {
        ayy localayy = (ayy)ilh.b(f, ayy.class);
        if (localayy == null) {
          break;
        }
        K.a();
        s = localayy.b();
        break;
      }
    }
    r = null;
  }
  
  public int i()
  {
    if ((J != null) && (J.a() == 1)) {
      return e;
    }
    return d;
  }
  
  void k()
  {
    if ((l != null) && (l.isShowing())) {
      l.dismiss();
    }
    if (i != null) {
      i.setBackgroundResource(0);
    }
  }
  
  bfd l()
  {
    return dvd.e(K.a());
  }
}

/* Location:
 * Qualified Name:     bwy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */