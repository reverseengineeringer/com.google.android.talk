import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import java.util.List;

public final class inz
  extends iog
{
  private iol c;
  private iol d;
  private iol e;
  private iol f;
  private iol g;
  
  static void a(ioz paramioz, boolean paramBoolean)
  {
    if ((paramioz instanceof inx)) {
      ((inx)paramioz).a(paramBoolean);
    }
  }
  
  public void a()
  {
    b(e);
    int i = 0;
    while (i < a.size())
    {
      ioz localioz = (ioz)a.get(i);
      if ((localioz instanceof inv)) {
        ((inv)localioz).a();
      }
      i += 1;
    }
  }
  
  public void a(Activity paramActivity)
  {
    c = a(new ioa(this, paramActivity));
  }
  
  public void a(Bundle paramBundle)
  {
    d = a(new iob(this, paramBundle));
  }
  
  public void a(View paramView, Bundle paramBundle)
  {
    e = a(new ioe(this, paramBundle, paramView));
  }
  
  public void a(boolean paramBoolean)
  {
    if (g != null) {
      b(g);
    }
    if (!paramBoolean) {
      g = a(new ioc(this, paramBoolean));
    }
    for (;;)
    {
      return;
      int i = 0;
      while (i < a.size())
      {
        a((ioz)a.get(i), paramBoolean);
        i += 1;
      }
    }
  }
  
  public void b(Bundle paramBundle)
  {
    f = a(new iod(this, paramBundle));
  }
  
  public void c()
  {
    super.c();
    b(d);
    b(f);
  }
  
  public void d()
  {
    b(c);
  }
}

/* Location:
 * Qualified Name:     inz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */