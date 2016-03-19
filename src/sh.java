import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.Toolbar;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window.Callback;
import java.util.ArrayList;

public final class sh
  extends qe
{
  vf a;
  boolean b;
  public Window.Callback c;
  tj d;
  private boolean e;
  private boolean f;
  private ArrayList<qg> g = new ArrayList();
  private final Runnable h = new si(this);
  private final abd i = new abd(this);
  
  public sh(Toolbar paramToolbar, CharSequence paramCharSequence, Window.Callback paramCallback)
  {
    a = new vf(paramToolbar, false);
    c = new sm(this, paramCallback);
    a.a(c);
    paramToolbar.a(i);
    a.a(paramCharSequence);
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    int j = a.l();
    a.a(j & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  private Menu m()
  {
    if (!e)
    {
      a.a(new sj(this), new sk(this));
      e = true;
    }
    return a.o();
  }
  
  public void a()
  {
    a(0, 8);
  }
  
  public void a(float paramFloat)
  {
    ks.f(a.a(), paramFloat);
  }
  
  public void a(int paramInt)
  {
    vf localvf = a;
    if (paramInt != 0) {}
    for (CharSequence localCharSequence = a.b().getText(paramInt);; localCharSequence = null)
    {
      localvf.b(localCharSequence);
      return;
    }
  }
  
  public void a(Configuration paramConfiguration)
  {
    super.a(paramConfiguration);
  }
  
  public void a(Drawable paramDrawable)
  {
    a.a(paramDrawable);
  }
  
  public void a(View paramView)
  {
    qf localqf = new qf(-2, -2);
    if (paramView != null) {
      paramView.setLayoutParams(localqf);
    }
    a.a(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.b(paramCharSequence);
  }
  
  public void a(qg paramqg)
  {
    g.add(paramqg);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int j = 4;; j = 0)
    {
      a(j, 4);
      return;
    }
  }
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    Menu localMenu = m();
    int j;
    if (localMenu != null)
    {
      if (paramKeyEvent == null) {
        break label56;
      }
      j = paramKeyEvent.getDeviceId();
      if (KeyCharacterMap.load(j).getKeyboardType() == 1) {
        break label61;
      }
    }
    label56:
    label61:
    for (boolean bool = true;; bool = false)
    {
      localMenu.setQwertyMode(bool);
      localMenu.performShortcut(paramInt, paramKeyEvent, 0);
      return true;
      j = -1;
      break;
    }
  }
  
  public void b()
  {
    a(16, 16);
  }
  
  public void b(int paramInt)
  {
    a.b(paramInt);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.c(paramCharSequence);
  }
  
  public void b(boolean paramBoolean) {}
  
  public View c()
  {
    return a.n();
  }
  
  public void c(int paramInt)
  {
    a.c(paramInt);
  }
  
  public void c(CharSequence paramCharSequence)
  {
    a.a(paramCharSequence);
  }
  
  public void c(boolean paramBoolean) {}
  
  public int d()
  {
    return a.l();
  }
  
  public void d(boolean paramBoolean)
  {
    if (paramBoolean == f) {}
    for (;;)
    {
      return;
      f = paramBoolean;
      int k = g.size();
      int j = 0;
      while (j < k)
      {
        ((qg)g.get(j)).a(paramBoolean);
        j += 1;
      }
    }
  }
  
  public void e()
  {
    a.d(0);
  }
  
  public void f()
  {
    a.d(8);
  }
  
  public Context g()
  {
    return a.b();
  }
  
  public boolean i()
  {
    a.a().removeCallbacks(h);
    ks.a(a.a(), h);
    return true;
  }
  
  public boolean j()
  {
    if (a.c())
    {
      a.d();
      return true;
    }
    return false;
  }
  
  public Window.Callback k()
  {
    return c;
  }
  
  void l()
  {
    Menu localMenu = m();
    if ((localMenu instanceof tl)) {}
    for (localtl = (tl)localMenu;; localtl = null)
    {
      if (localtl != null) {
        localtl.g();
      }
      try
      {
        localMenu.clear();
        if ((!c.onCreatePanelMenu(0, localMenu)) || (!c.onPreparePanel(0, null, localMenu))) {
          localMenu.clear();
        }
        return;
      }
      finally
      {
        if (localtl == null) {
          break;
        }
        localtl.h();
      }
    }
  }
}

/* Location:
 * Qualified Name:     sh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */