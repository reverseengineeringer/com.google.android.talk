import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View.OnClickListener;

final class cmp
  implements ilu, iop, ior, iot, iox, ioy, ioz
{
  final rf a;
  clp b;
  cmu c;
  private cln d;
  private final cmr e;
  private chc f;
  
  cmp(rf paramrf, iog paramiog)
  {
    a = paramrf;
    e = new cmr(this);
    paramiog.a(this);
  }
  
  private boolean c()
  {
    clq localclq = b.a();
    return (b.b()) && ((localclq == clq.b) || (localclq == clq.c) || (localclq == clq.d)) && (d.b());
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = ((clp)paramilh.a(clp.class));
    d = ((cln)paramilh.a(cln.class));
    c = ((cmu)paramilh.a(cmu.class));
  }
  
  boolean a(int paramInt)
  {
    if (c()) {
      aal.c(paramInt);
    }
    switch (cmq.a[b.a().ordinal()])
    {
    default: 
      return false;
    case 1: 
      new clr().a(a.C_(), null);
      return true;
    }
    new cmi().a(a.C_(), null);
    return true;
  }
  
  public boolean a(Menu paramMenu)
  {
    new MenuInflater(a).inflate(aal.md, paramMenu);
    return b(paramMenu);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == aal.mb) {
      return a(2243);
    }
    return false;
  }
  
  void b()
  {
    Object localObject2 = null;
    a.y_();
    if (f == null) {
      return;
    }
    boolean bool = c();
    Object localObject1;
    if (bool) {
      localObject1 = a.getResources();
    }
    switch (cmq.a[b.a().ordinal()])
    {
    default: 
      localObject1 = null;
    }
    for (;;)
    {
      f.a((Drawable)localObject1);
      chc localchc = f;
      localObject1 = localObject2;
      if (bool) {
        localObject1 = e;
      }
      localchc.setOnClickListener((View.OnClickListener)localObject1);
      f.setClickable(bool);
      return;
      localObject1 = ((Resources)localObject1).getDrawable(aal.lQ);
      continue;
      localObject1 = ((Resources)localObject1).getDrawable(aal.lT);
      continue;
      localObject1 = ((Resources)localObject1).getDrawable(aal.lW);
    }
  }
  
  public boolean b(Menu paramMenu)
  {
    paramMenu = paramMenu.findItem(aal.mb);
    boolean bool = c();
    paramMenu.setVisible(bool);
    return bool;
  }
  
  public void s_()
  {
    b.a(e);
    d.a(e);
    f = ((chc)a.g().c());
    b();
  }
  
  public void t_()
  {
    b.b(e);
    d.b(e);
  }
}

/* Location:
 * Qualified Name:     cmp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */