import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Process;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnSystemUiVisibilityChangeListener;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import com.android.ex.photo.PhotoViewCallbacks;
import com.android.ex.photo.PhotoViewPager;
import com.android.ex.photo.PhotoViewPager.OnInterceptTouchListener;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class abn
  implements PhotoViewCallbacks, PhotoViewPager.OnInterceptTouchListener, ck, ViewPager.OnPageChangeListener
{
  public static int a;
  public static int b;
  boolean A;
  public boolean B;
  public int C;
  public int D;
  public int E;
  public int F;
  public boolean G;
  public boolean H;
  public boolean I;
  final AccessibilityManager J;
  public acd K;
  public final Handler L = new Handler();
  long M;
  final Runnable N = new abv(this);
  final acc c;
  int d;
  final View.OnSystemUiVisibilityChangeListener e;
  String f;
  String g;
  int h;
  String i;
  String[] j;
  public int k = -1;
  public boolean l;
  public View m;
  public View n;
  public PhotoViewPager o;
  public ImageView p;
  public acj q;
  public boolean r;
  final Map<Integer, abt> s = new HashMap();
  final Set<abs> t = new HashSet();
  boolean u;
  boolean v;
  public boolean w = true;
  public float x;
  public String y;
  public String z;
  
  public abn(acc paramacc)
  {
    c = paramacc;
    if (Build.VERSION.SDK_INT < 11) {}
    for (e = null;; e = new abu(this))
    {
      J = ((AccessibilityManager)paramacc.i().getSystemService("accessibility"));
      return;
    }
  }
  
  static int a(int paramInt1, int paramInt2, int paramInt3, float paramFloat)
  {
    return paramInt1 - Math.round((paramInt3 - paramInt3 * paramFloat) / 2.0F) - Math.round((paramInt3 * paramFloat - paramInt2) / 2.0F);
  }
  
  static String a(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    return str;
  }
  
  public int a(float paramFloat1, float paramFloat2)
  {
    Iterator localIterator = s.values().iterator();
    boolean bool1 = false;
    boolean bool3 = false;
    boolean bool2;
    if (localIterator.hasNext())
    {
      abt localabt = (abt)localIterator.next();
      bool2 = bool3;
      if (!bool3) {
        bool2 = localabt.d();
      }
      if (bool1) {
        break label109;
      }
      bool1 = localabt.e();
    }
    label109:
    for (;;)
    {
      bool3 = bool2;
      break;
      if (bool3)
      {
        if (bool1) {
          return ace.d;
        }
        return ace.b;
      }
      if (bool1) {
        return ace.c;
      }
      return ace.a;
    }
  }
  
  public acc a()
  {
    return c;
  }
  
  public acj a(Context paramContext, bg parambg, float paramFloat)
  {
    return new acj(paramContext, parambg, null, paramFloat, I);
  }
  
  public fe<aco> a(String paramString)
  {
    switch (paramString)
    {
    default: 
      return null;
    }
    String str;
    return new acm(c.i(), str);
  }
  
  public void a(int paramInt)
  {
    h = paramInt;
    e(paramInt);
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (paramFloat < 1.0E-4D)
    {
      abt localabt = (abt)s.get(Integer.valueOf(paramInt1 - 1));
      if (localabt != null) {
        localabt.c();
      }
      localabt = (abt)s.get(Integer.valueOf(paramInt1 + 1));
      if (localabt != null) {
        localabt.c();
      }
    }
  }
  
  public void a(int paramInt, abt paramabt)
  {
    s.put(Integer.valueOf(paramInt), paramabt);
  }
  
  public void a(abm paramabm)
  {
    if (paramabm == null) {
      return;
    }
    paramabm.a(a(y));
    paramabm.b(a(z));
  }
  
  public void a(abs paramabs)
  {
    try
    {
      t.add(paramabs);
      return;
    }
    finally
    {
      paramabs = finally;
      throw paramabs;
    }
  }
  
  public void a(ack paramack, boolean paramBoolean)
  {
    if ((p.getVisibility() != 8) && (TextUtils.equals(paramack.q(), i)))
    {
      p.setVisibility(8);
      o.setVisibility(0);
      c.f().a(2);
    }
  }
  
  void a(Cursor paramCursor)
  {
    try
    {
      Iterator localIterator = t.iterator();
      while (localIterator.hasNext()) {
        ((abs)localIterator.next()).a_(paramCursor);
      }
    }
    finally {}
  }
  
  public void a(Bundle paramBundle)
  {
    boolean bool2 = true;
    Object localObject;
    int i1;
    if (b == 0)
    {
      localObject = new DisplayMetrics();
      WindowManager localWindowManager = (WindowManager)c.i().getSystemService("window");
      i1 = acr.b;
      localWindowManager.getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
    }
    boolean bool1;
    switch (acb.a[(i1 - 1)])
    {
    default: 
      b = Math.min(heightPixels, widthPixels);
      a = ((ActivityManager)c.getApplicationContext().getSystemService("activity")).getMemoryClass();
      localObject = c.getIntent();
      if (((Intent)localObject).hasExtra("photos_uri")) {
        f = ((Intent)localObject).getStringExtra("photos_uri");
      }
      G = ((Intent)localObject).getBooleanExtra("enable_timer_lights_out", true);
      if (((Intent)localObject).getBooleanExtra("scale_up_animation", false))
      {
        B = true;
        C = ((Intent)localObject).getIntExtra("start_x_extra", 0);
        D = ((Intent)localObject).getIntExtra("start_y_extra", 0);
        E = ((Intent)localObject).getIntExtra("start_width_extra", 0);
        F = ((Intent)localObject).getIntExtra("start_height_extra", 0);
      }
      if ((((Intent)localObject).getBooleanExtra("action_bar_hidden_initially", false)) && (!aen.a(J)))
      {
        bool1 = true;
        label260:
        H = bool1;
        I = ((Intent)localObject).getBooleanExtra("display_thumbs_fullscreen", false);
        if (!((Intent)localObject).hasExtra("projection")) {
          break label789;
        }
        j = ((Intent)localObject).getStringArrayExtra("projection");
        label301:
        x = ((Intent)localObject).getFloatExtra("max_scale", 1.0F);
        i = null;
        h = -1;
        if (((Intent)localObject).hasExtra("photo_index")) {
          h = ((Intent)localObject).getIntExtra("photo_index", -1);
        }
        if (((Intent)localObject).hasExtra("initial_photo_uri"))
        {
          g = ((Intent)localObject).getStringExtra("initial_photo_uri");
          i = g;
        }
        l = true;
        if (paramBundle == null) {
          break label802;
        }
        g = paramBundle.getString("com.android.ex.PhotoViewFragment.INITIAL_URI");
        i = paramBundle.getString("com.android.ex.PhotoViewFragment.CURRENT_URI");
        h = paramBundle.getInt("com.android.ex.PhotoViewFragment.CURRENT_INDEX");
        if ((!paramBundle.getBoolean("com.android.ex.PhotoViewFragment.FULLSCREEN", false)) || (aen.a(J))) {
          break label797;
        }
        bool1 = bool2;
        label445:
        r = bool1;
        y = paramBundle.getString("com.android.ex.PhotoViewFragment.ACTIONBARTITLE");
        z = paramBundle.getString("com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE");
        A = paramBundle.getBoolean("com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED", false);
        label484:
        c.setContentView(aal.bV);
        q = a(c.i(), c.C_(), x);
        paramBundle = c.getResources();
        m = c(aal.bN);
        if (Build.VERSION.SDK_INT >= 11) {
          m.setOnSystemUiVisibilityChangeListener(t());
        }
        n = c(aal.bM);
        p = ((ImageView)c(aal.bO));
        o = ((PhotoViewPager)c(aal.bS));
        o.a(q);
        o.a(this);
        o.a(this);
        o.d(paramBundle.getDimensionPixelSize(aal.bH));
        K = new acd(this);
        if ((B) && (!A)) {
          break label813;
        }
        c.f().a(100, null, this);
        n.setVisibility(0);
      }
      break;
    }
    for (;;)
    {
      M = paramBundle.getInteger(aal.bU);
      paramBundle = c.j();
      if (paramBundle != null)
      {
        paramBundle.a();
        paramBundle.a(this);
        paramBundle.b();
        a(paramBundle);
      }
      if (B) {
        break label866;
      }
      b(r);
      return;
      b = Math.min(heightPixels, widthPixels) * 800 / 1000;
      break;
      bool1 = false;
      break label260;
      label789:
      j = null;
      break label301;
      label797:
      bool1 = false;
      break label445;
      label802:
      r = H;
      break label484;
      label813:
      o.setVisibility(8);
      localObject = new Bundle();
      ((Bundle)localObject).putString("image_uri", g);
      c.f().a(2, (Bundle)localObject, K);
    }
    label866:
    b(false);
  }
  
  public void a(fe<Cursor> paramfe, Cursor paramCursor)
  {
    if (paramfe.o() == 100)
    {
      if ((paramCursor != null) && (paramCursor.getCount() != 0)) {
        break label37;
      }
      l = true;
      q.a(null);
    }
    label37:
    label183:
    label204:
    label224:
    label231:
    boolean bool;
    do
    {
      return;
      k = paramCursor.getCount();
      int i2;
      int i1;
      if (i != null)
      {
        i2 = paramCursor.getColumnIndex("uri");
        if (Build.VERSION.SDK_INT < 11) {
          break label183;
        }
        paramfe = Uri.parse(i).buildUpon().clearQuery().build();
        paramCursor.moveToPosition(-1);
        i1 = 0;
      }
      for (;;)
      {
        if (paramCursor.moveToNext())
        {
          localObject = paramCursor.getString(i2);
          if (Build.VERSION.SDK_INT < 11) {
            break label204;
          }
        }
        for (Object localObject = Uri.parse((String)localObject).buildUpon().clearQuery().build();; localObject = Uri.parse((String)localObject).buildUpon().query(null).build())
        {
          if ((paramfe == null) || (!paramfe.equals(localObject))) {
            break label224;
          }
          h = i1;
          if (!w) {
            break label231;
          }
          u = true;
          q.a(null);
          return;
          paramfe = Uri.parse(i).buildUpon().query(null).build();
          break;
        }
        i1 += 1;
      }
      bool = l;
      l = false;
      q.a(paramCursor);
      if (o.b() == null) {
        o.a(q);
      }
      a(paramCursor);
      if (h < 0) {
        h = 0;
      }
      o.a(h, false);
    } while (!bool);
    e(h);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      h();
      return;
    }
    g();
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (aen.a(J))
    {
      paramBoolean2 = false;
      paramBoolean1 = false;
    }
    int i1;
    if (paramBoolean1 != r)
    {
      i1 = 1;
      r = paramBoolean1;
      if (!r) {
        break label98;
      }
      b(true);
      h();
    }
    for (;;)
    {
      if (i1 == 0) {
        return;
      }
      Iterator localIterator = s.values().iterator();
      while (localIterator.hasNext()) {
        ((abt)localIterator.next()).a();
      }
      i1 = 0;
      break;
      label98:
      b(false);
      if (paramBoolean2) {
        g();
      }
    }
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    c.finish();
    return true;
  }
  
  public boolean a(av paramav)
  {
    if ((o == null) || (q == null) || (q.b() == 0)) {
      return r;
    }
    return (r) || (o.c() != q.c(paramav));
  }
  
  public void b()
  {
    a(r, false);
    w = false;
    if (u)
    {
      u = false;
      c.f().a(100, null, this);
    }
  }
  
  public void b(int paramInt) {}
  
  public void b(abs paramabs)
  {
    try
    {
      t.remove(paramabs);
      return;
    }
    finally
    {
      paramabs = finally;
      throw paramabs;
    }
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putString("com.android.ex.PhotoViewFragment.INITIAL_URI", g);
    paramBundle.putString("com.android.ex.PhotoViewFragment.CURRENT_URI", i);
    paramBundle.putInt("com.android.ex.PhotoViewFragment.CURRENT_INDEX", h);
    paramBundle.putBoolean("com.android.ex.PhotoViewFragment.FULLSCREEN", r);
    paramBundle.putString("com.android.ex.PhotoViewFragment.ACTIONBARTITLE", y);
    paramBundle.putString("com.android.ex.PhotoViewFragment.ACTIONBARSUBTITLE", z);
    paramBundle.putBoolean("com.android.ex.PhotoViewFragment.SCALEANIMATIONFINISHED", A);
  }
  
  protected void b(boolean paramBoolean)
  {
    c(paramBoolean);
  }
  
  public boolean b(av paramav)
  {
    if ((o == null) || (q == null)) {}
    while (o.c() != q.c(paramav)) {
      return false;
    }
    return true;
  }
  
  protected View c(int paramInt)
  {
    return c.findViewById(paramInt);
  }
  
  public void c()
  {
    w = true;
  }
  
  public void c(boolean paramBoolean)
  {
    int i4 = 0;
    int i3 = 0;
    int i5 = Build.VERSION.SDK_INT;
    int i2;
    if (i5 < 16) {
      i2 = 1;
    }
    int i1;
    while ((paramBoolean) && ((!q()) || (r())))
    {
      if (i5 <= 19)
      {
        if (i5 != 19) {
          break label137;
        }
        if (Build.VERSION.SDK_INT != 19)
        {
          throw new IllegalStateException("kitkatIsSecondary user is only callable on KitKat");
          i2 = 0;
          continue;
        }
        if (Process.myUid() > 100000)
        {
          i1 = 1;
          if (i1 != 0) {
            break label137;
          }
        }
      }
      else
      {
        i1 = 3846;
      }
      for (;;)
      {
        i3 = i1;
        if (i2 != 0)
        {
          p();
          i3 = i1;
        }
        if (i5 >= 11)
        {
          d = i3;
          s().setSystemUiVisibility(i3);
        }
        return;
        i1 = 0;
        break;
        label137:
        if (i5 >= 16)
        {
          i1 = 1285;
        }
        else if (i5 >= 14)
        {
          i1 = 1;
        }
        else
        {
          i1 = i3;
          if (i5 >= 11) {
            i1 = 1;
          }
        }
      }
    }
    if (i5 >= 19) {
      i1 = 1792;
    }
    for (;;)
    {
      i3 = i1;
      if (i2 == 0) {
        break;
      }
      o();
      i3 = i1;
      break;
      if (i5 >= 16)
      {
        i1 = 1280;
      }
      else
      {
        i1 = i4;
        if (i5 < 14)
        {
          i1 = i4;
          if (i5 >= 11) {
            i1 = i4;
          }
        }
      }
    }
  }
  
  public void d()
  {
    v = true;
  }
  
  public void d(int paramInt)
  {
    s.remove(Integer.valueOf(paramInt));
  }
  
  public void e(int paramInt)
  {
    Object localObject1 = (abt)s.get(Integer.valueOf(paramInt));
    if (localObject1 != null) {
      ((abt)localObject1).b();
    }
    localObject1 = k();
    h = paramInt;
    i = ((Cursor)localObject1).getString(((Cursor)localObject1).getColumnIndex("uri"));
    i();
    String str;
    View localView;
    Object localObject2;
    if (J.isEnabled())
    {
      str = j();
      if (str != null)
      {
        localView = m;
        localObject2 = J;
        if (Build.VERSION.SDK_INT < 16) {
          break label116;
        }
        localView.announceForAccessibility(str);
      }
    }
    for (;;)
    {
      h();
      g();
      return;
      label116:
      Context localContext = localView.getContext().getApplicationContext();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = (AccessibilityManager)localContext.getSystemService("accessibility");
      }
      if (((AccessibilityManager)localObject1).isEnabled())
      {
        localObject2 = AccessibilityEvent.obtain(8);
        ((AccessibilityEvent)localObject2).getText().add(str);
        ((AccessibilityEvent)localObject2).setEnabled(localView.isEnabled());
        ((AccessibilityEvent)localObject2).setClassName(localView.getClass().getName());
        ((AccessibilityEvent)localObject2).setPackageName(localContext.getPackageName());
        ms.a((AccessibilityEvent)localObject2).a(localView);
        if (Build.VERSION.SDK_INT >= 14) {
          localView.getParent().requestSendAccessibilityEvent(localView, (AccessibilityEvent)localObject2);
        } else {
          ((AccessibilityManager)localObject1).sendAccessibilityEvent((AccessibilityEvent)localObject2);
        }
      }
    }
  }
  
  public boolean e()
  {
    boolean bool = false;
    if ((r) && (!H)) {
      f();
    }
    for (;;)
    {
      bool = true;
      do
      {
        return bool;
      } while (!B);
      c.getIntent();
      int i1 = m.getMeasuredWidth();
      int i2 = m.getMeasuredHeight();
      float f1 = Math.max(E / i1, F / i2);
      i1 = a(C, E, i1, f1);
      i2 = a(D, F, i2, f1);
      int i3 = Build.VERSION.SDK_INT;
      if (i3 >= 14)
      {
        n.animate().alpha(0.0F).setDuration(250L).start();
        n.setVisibility(0);
        aby localaby = new aby(this);
        if (p.getVisibility() == 0)
        {
          localObject = p.animate().scaleX(f1).scaleY(f1).translationX(i1).translationY(i2).setDuration(250L);
          label201:
          if (!g.equals(i)) {
            ((ViewPropertyAnimator)localObject).alpha(0.0F);
          }
          if (i3 < 16) {
            break label281;
          }
          ((ViewPropertyAnimator)localObject).withEndAction(localaby);
        }
        for (;;)
        {
          ((ViewPropertyAnimator)localObject).start();
          break;
          localObject = o.animate().scaleX(f1).scaleY(f1).translationX(i1).translationY(i2).setDuration(250L);
          break label201;
          label281:
          L.postDelayed(localaby, 250L);
        }
      }
      Object localObject = new AlphaAnimation(1.0F, 0.0F);
      ((Animation)localObject).setDuration(250L);
      n.startAnimation((Animation)localObject);
      n.setVisibility(0);
      localObject = new ScaleAnimation(1.0F, 1.0F, f1, f1);
      ((Animation)localObject).setDuration(250L);
      ((Animation)localObject).setAnimationListener(new abz(this));
      if (p.getVisibility() == 0) {
        p.startAnimation((Animation)localObject);
      } else {
        o.startAnimation((Animation)localObject);
      }
    }
  }
  
  public void f()
  {
    if (!r) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool, true);
      return;
    }
  }
  
  void g()
  {
    if (G) {
      L.postDelayed(N, M);
    }
  }
  
  void h()
  {
    L.removeCallbacks(N);
  }
  
  public void i()
  {
    int i2 = o.c() + 1;
    int i1;
    if (k >= 0)
    {
      i1 = 1;
      Cursor localCursor = k();
      if (localCursor == null) {
        break label86;
      }
      y = localCursor.getString(localCursor.getColumnIndex("_display_name"));
      label47:
      if ((!l) && (i1 != 0) && (i2 > 0)) {
        break label94;
      }
    }
    label86:
    label94:
    for (z = null;; z = c.getResources().getString(aal.bY, new Object[] { Integer.valueOf(i2), Integer.valueOf(k) }))
    {
      a(c.j());
      return;
      i1 = 0;
      break;
      y = null;
      break label47;
    }
  }
  
  protected String j()
  {
    String str = y;
    if (z != null) {
      str = c.i().getResources().getString(aal.bZ, new Object[] { y, z });
    }
    return str;
  }
  
  public Cursor k()
  {
    if (o == null) {}
    int i1;
    Cursor localCursor;
    do
    {
      return null;
      i1 = o.c();
      localCursor = q.e();
    } while (localCursor == null);
    localCursor.moveToPosition(i1);
    return localCursor;
  }
  
  public acj l()
  {
    return q;
  }
  
  public void m()
  {
    A = true;
    o.setVisibility(0);
    b(r);
  }
  
  void n()
  {
    int i1 = m.getMeasuredWidth();
    int i2 = m.getMeasuredHeight();
    p.setVisibility(0);
    float f1 = Math.max(E / i1, F / i2);
    i1 = a(C, E, i1, f1);
    i2 = a(D, F, i2, f1);
    int i3 = Build.VERSION.SDK_INT;
    if (i3 >= 14)
    {
      n.setAlpha(0.0F);
      n.animate().alpha(1.0F).setDuration(250L).start();
      n.setVisibility(0);
      p.setScaleX(f1);
      p.setScaleY(f1);
      p.setTranslationX(i1);
      p.setTranslationY(i2);
      localObject1 = new abw(this);
      localObject2 = p.animate().scaleX(1.0F).scaleY(1.0F).translationX(0.0F).translationY(0.0F).setDuration(250L);
      if (i3 >= 16) {
        ((ViewPropertyAnimator)localObject2).withEndAction((Runnable)localObject1);
      }
      for (;;)
      {
        ((ViewPropertyAnimator)localObject2).start();
        return;
        L.postDelayed((Runnable)localObject1, 250L);
      }
    }
    Object localObject1 = new AlphaAnimation(0.0F, 1.0F);
    ((Animation)localObject1).setDuration(250L);
    n.startAnimation((Animation)localObject1);
    n.setVisibility(0);
    localObject1 = new TranslateAnimation(i1, i2, 0.0F, 0.0F);
    ((Animation)localObject1).setDuration(250L);
    Object localObject2 = new ScaleAnimation(f1, f1, 0.0F, 0.0F);
    ((Animation)localObject2).setDuration(250L);
    AnimationSet localAnimationSet = new AnimationSet(true);
    localAnimationSet.addAnimation((Animation)localObject1);
    localAnimationSet.addAnimation((Animation)localObject2);
    localAnimationSet.setAnimationListener(new abx(this));
    p.startAnimation(localAnimationSet);
  }
  
  public void o()
  {
    c.j().c();
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 100) {
      return new acp(c.i(), Uri.parse(f), j);
    }
    return null;
  }
  
  public void onLoaderReset(fe<Cursor> paramfe)
  {
    if (!v) {
      q.a(null);
    }
  }
  
  public void p()
  {
    c.j().d();
  }
  
  public boolean q()
  {
    return B;
  }
  
  public boolean r()
  {
    return A;
  }
  
  public View s()
  {
    return m;
  }
  
  public View.OnSystemUiVisibilityChangeListener t()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     abn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */