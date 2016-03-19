package android.support.design.widget;

import a;
import aal;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import fdr;
import j;
import ks;
import lc;
import md;
import q;
import t;
import u;

public final class Snackbar
{
  public static final Handler a = new Handler(Looper.getMainLooper(), new q());
  public final ViewGroup b;
  public final Snackbar.SnackbarLayout c;
  public final a d;
  private aal e;
  
  public boolean a()
  {
    return fdr.b().e(d);
  }
  
  public void b()
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      ks.b(c, c.getHeight());
      localObject = c;
      ks.a.k((View)localObject).c(0.0F).a(j.b).a(250L).a(new t(this)).c();
      return;
    }
    Object localObject = AnimationUtils.loadAnimation(c.getContext(), aal.h);
    ((Animation)localObject).setInterpolator(j.b);
    ((Animation)localObject).setDuration(250L);
    ((Animation)localObject).setAnimationListener(new u(this));
    c.startAnimation((Animation)localObject);
  }
  
  public void c()
  {
    fdr.b().a(d);
    ViewParent localViewParent = c.getParent();
    if ((localViewParent instanceof ViewGroup)) {
      ((ViewGroup)localViewParent).removeView(c);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */