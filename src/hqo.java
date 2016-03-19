import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class hqo
  implements hpu, hqg, ilu, ioo, ioq, iov, iow, iox, ioz
{
  private final Activity a;
  private int b = -1;
  private List<hpw> c = new ArrayList();
  private boolean d = true;
  private hpz e;
  private boolean f;
  
  public hqo(Activity paramActivity, iog paramiog)
  {
    a = paramActivity;
    paramiog.a(this);
  }
  
  public hqo(Activity paramActivity, iog paramiog, hpz paramhpz, hpy paramhpy)
  {
    aen.a(paramhpy);
    a = paramActivity;
    e = paramhpz;
    paramiog.a(this);
  }
  
  private void g()
  {
    boolean bool;
    if (b == -1) {
      if (!d) {
        bool = true;
      }
    }
    for (;;)
    {
      if (!bool)
      {
        if (Log.isLoggable("IntentAccountHandler", 3))
        {
          int i = b;
          String str = String.valueOf(a.getClass().getName());
          new StringBuilder(String.valueOf(str).length() + 62).append("Invalid account state with accountId ").append(i).append(" for activity ").append(str);
        }
        b = -1;
        a.finish();
      }
      return;
      bool = false;
      continue;
      bool = e.c(b);
    }
  }
  
  public void X_()
  {
    f = true;
    g();
  }
  
  public void Y_()
  {
    if (f) {
      g();
    }
  }
  
  public int a()
  {
    aal.w();
    return b;
  }
  
  public hpu a(hpw paramhpw)
  {
    c.add(paramhpw);
    return this;
  }
  
  public hqo a(ilh paramilh)
  {
    paramilh.a(hpu.class, this);
    return this;
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    if (e == null) {
      e = ((hpz)paramilh.a(hpz.class));
    }
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      b = a.getIntent().getIntExtra("account_id", -1);
      g();
      Iterator localIterator = c.iterator();
      if (localIterator.hasNext())
      {
        hpw localhpw = (hpw)localIterator.next();
        hpv localhpv = hpv.a;
        if (b != -1) {}
        for (paramBundle = hpv.c;; paramBundle = hpv.b)
        {
          localhpw.a(true, localhpv, paramBundle, -1, b);
          break;
        }
      }
    }
    else
    {
      b = paramBundle.getInt("state_account_id");
    }
    f = true;
    e.a(this);
  }
  
  public void b(Bundle paramBundle)
  {
    f = false;
    paramBundle.putInt("state_account_id", b);
  }
  
  public boolean b()
  {
    aal.w();
    return b != -1;
  }
  
  public hqb c()
  {
    aal.w();
    return e.a(b);
  }
  
  public hqo e()
  {
    d = false;
    return this;
  }
  
  public void h_()
  {
    e.b(this);
  }
  
  public void s_()
  {
    f = true;
    g();
  }
}

/* Location:
 * Qualified Name:     hqo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */