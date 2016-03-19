package android.support.v7.widget;

import aal;
import aau;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import wd;
import ys;

public final class SearchView
  extends ys
  implements wd
{
  static final aau a;
  private static final boolean b;
  private final SearchView.SearchAutoComplete c;
  private final View d;
  private final View e;
  private final ImageView f;
  private final ImageView g;
  private final ImageView h;
  private final ImageView i;
  private final ImageView j;
  private View.OnClickListener k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private int p;
  private boolean q;
  private CharSequence r;
  private boolean s;
  private int t;
  private Runnable u;
  private final Runnable v;
  private Runnable w;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 8) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = new aau();
      return;
    }
  }
  
  static boolean a(Context paramContext)
  {
    return getResourcesgetConfigurationorientation == 2;
  }
  
  private void c(boolean paramBoolean)
  {
    int i5 = 1;
    int i4 = 8;
    m = paramBoolean;
    int i1;
    if (paramBoolean)
    {
      i2 = 0;
      if (TextUtils.isEmpty(c.getText())) {
        break label312;
      }
      i1 = 1;
      label33:
      f.setVisibility(i2);
      if ((!n) || (!e()) || (!hasFocus()) || ((i1 == 0) && (q))) {
        break label364;
      }
    }
    label96:
    label122:
    label145:
    label166:
    label180:
    label210:
    label225:
    label312:
    label322:
    label327:
    label332:
    label338:
    label345:
    label353:
    label358:
    label364:
    for (int i2 = 0;; i2 = 8)
    {
      g.setVisibility(i2);
      Object localObject = d;
      int i3;
      if (paramBoolean)
      {
        i2 = 8;
        ((View)localObject).setVisibility(i2);
        if ((j.getDrawable() != null) && (!l)) {
          break label322;
        }
        i2 = 8;
        j.setVisibility(i2);
        if (TextUtils.isEmpty(c.getText())) {
          break label327;
        }
        i2 = 1;
        if ((i2 == 0) && ((!l) || (s))) {
          break label332;
        }
        i3 = 1;
        localObject = h;
        if (i3 == 0) {
          break label338;
        }
        i3 = 0;
        ((ImageView)localObject).setVisibility(i3);
        Drawable localDrawable = h.getDrawable();
        if (localDrawable != null)
        {
          if (i2 == 0) {
            break label345;
          }
          localObject = ENABLED_STATE_SET;
          localDrawable.setState((int[])localObject);
        }
        if (i1 != 0) {
          break label353;
        }
        i1 = i5;
        if ((!q) || (m) || (i1 == 0)) {
          break label358;
        }
        g.setVisibility(8);
      }
      for (i1 = 0;; i1 = 8)
      {
        i.setVisibility(i1);
        i1 = i4;
        if (e()) {
          if (g.getVisibility() != 0)
          {
            i1 = i4;
            if (i.getVisibility() != 0) {}
          }
          else
          {
            i1 = 0;
          }
        }
        e.setVisibility(i1);
        return;
        i2 = 8;
        break;
        i1 = 0;
        break label33;
        i2 = 0;
        break label96;
        i2 = 0;
        break label122;
        i2 = 0;
        break label145;
        i3 = 0;
        break label166;
        i3 = 8;
        break label180;
        localObject = EMPTY_STATE_SET;
        break label210;
        i1 = 0;
        break label225;
      }
    }
  }
  
  private int d()
  {
    return getContext().getResources().getDimensionPixelSize(aal.F);
  }
  
  private boolean e()
  {
    return ((n) || (q)) && (!m);
  }
  
  private void f()
  {
    post(v);
  }
  
  public void a()
  {
    if (s) {}
    do
    {
      return;
      s = true;
      t = c.getImeOptions();
      c.setImeOptions(t | 0x2000000);
      c.setText("");
      c(false);
      c.requestFocus();
      a(true);
    } while (k == null);
    k.onClick(this);
  }
  
  void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      post(u);
    }
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(u);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    } while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  public void b()
  {
    c.setText("");
    c.setSelection(c.length());
    r = "";
    clearFocus();
    c(true);
    c.setImeOptions(t);
    s = false;
  }
  
  void c()
  {
    c(m);
    f();
    if (c.hasFocus())
    {
      a.a(c);
      a.b(c);
    }
  }
  
  public void clearFocus()
  {
    o = true;
    a(false);
    super.clearFocus();
    c.clearFocus();
    o = false;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(v);
    post(w);
    super.onDetachedFromWindow();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (m)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    switch (i2)
    {
    default: 
      paramInt1 = i1;
    }
    for (;;)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      return;
      if (p > 0)
      {
        paramInt1 = Math.min(p, i1);
      }
      else
      {
        paramInt1 = Math.min(d(), i1);
        continue;
        paramInt1 = i1;
        if (p > 0)
        {
          paramInt1 = Math.min(p, i1);
          continue;
          if (p > 0) {
            paramInt1 = p;
          } else {
            paramInt1 = d();
          }
        }
      }
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    f();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (o) {}
    while (!isFocusable()) {
      return false;
    }
    if (!m)
    {
      boolean bool = c.requestFocus(paramInt, paramRect);
      if (bool) {
        c(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SearchView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */