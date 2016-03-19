import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import java.lang.ref.WeakReference;

public final class fdr
{
  public static fdr a;
  public final Object b = new Object();
  public final Handler c = new Handler(Looper.getMainLooper(), new x(this));
  public eal d;
  public eal e;
  private final String f;
  private final int g;
  private final int h;
  private final Object i;
  private final int j;
  
  public static fdr b()
  {
    if (a == null) {
      a = new fdr();
    }
    return a;
  }
  
  private static boolean b(eal parameal)
  {
    return (a)a.get() != null;
  }
  
  private void c()
  {
    if (e != null)
    {
      d = e;
      e = null;
      if ((a)d.a.get() == null) {
        d = null;
      }
    }
  }
  
  private void c(eal parameal)
  {
    if (b == -2) {
      return;
    }
    int k = 2750;
    if (b > 0) {
      k = b;
    }
    for (;;)
    {
      c.removeCallbacksAndMessages(parameal);
      c.sendMessageDelayed(Message.obtain(c, 0, parameal), k);
      return;
      if (b == -1) {
        k = 1500;
      }
    }
  }
  
  private boolean f(a parama)
  {
    return (d != null) && (d.a(parama));
  }
  
  private boolean g(a parama)
  {
    return (e != null) && (e.a(parama));
  }
  
  public void a(a parama)
  {
    synchronized (b)
    {
      if (f(parama))
      {
        d = null;
        if (e != null) {
          c();
        }
      }
      return;
    }
  }
  
  public void a(a parama, int paramInt)
  {
    synchronized (b)
    {
      if (f(parama)) {
        b(d);
      }
      while (!g(parama)) {
        return;
      }
      b(e);
    }
  }
  
  public void a(eal parameal)
  {
    synchronized (b)
    {
      if ((d == parameal) || (e == parameal)) {
        b(parameal);
      }
      return;
    }
  }
  
  public boolean a()
  {
    return i instanceof ClickableSpan;
  }
  
  public boolean a(SpannableString paramSpannableString)
  {
    return (TextUtils.equals(f, paramSpannableString)) && (paramSpannableString.getSpans(g, h, i.getClass()).length == 0);
  }
  
  public void b(a parama)
  {
    synchronized (b)
    {
      if (f(parama)) {
        c(d);
      }
      return;
    }
  }
  
  public void b(SpannableString paramSpannableString)
  {
    paramSpannableString.setSpan(i, g, h, j);
  }
  
  public void c(a parama)
  {
    synchronized (b)
    {
      if (f(parama)) {
        c.removeCallbacksAndMessages(d);
      }
      return;
    }
  }
  
  public void d(a parama)
  {
    synchronized (b)
    {
      if (f(parama)) {
        c(d);
      }
      return;
    }
  }
  
  public boolean e(a parama)
  {
    for (;;)
    {
      synchronized (b)
      {
        if (!f(parama))
        {
          if (!g(parama)) {
            break label40;
          }
          break label35;
          return bool;
        }
      }
      label35:
      boolean bool = true;
      continue;
      label40:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     fdr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */