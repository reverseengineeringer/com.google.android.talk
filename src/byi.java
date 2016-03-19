import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import java.util.ArrayList;
import java.util.List;

public final class byi
  implements DialogInterface.OnCancelListener
{
  public static final boolean a = false;
  private boolean b;
  private boolean c;
  private volatile boolean d = false;
  private bym e;
  private volatile byn f;
  private final List<byn> g = new ArrayList();
  private final byo h = new byo(this);
  
  static
  {
    imx localimx = ezi.f;
  }
  
  private byi(bym parambym)
  {
    e = parambym;
    b = false;
    c = true;
    if (e != null) {
      e.a(this);
    }
  }
  
  public static byi a(byn parambyn, bym parambym)
  {
    parambym = new byi(parambym);
    if (parambyn == null)
    {
      ezi.e("Babel", "BlockingChainedExecutor: adding empty request", new Object[0]);
      return parambym;
    }
    parambyn.a(h);
    g.add(parambyn);
    return parambym;
  }
  
  private void a(byn parambyn, boolean paramBoolean)
  {
    if ((a) && (!paramBoolean))
    {
      String str = String.valueOf(parambyn);
      new StringBuilder(String.valueOf(str).length() + 41).append("BlockingChainedExecutor: request ").append(str).append(" failed.");
    }
    int i = g.indexOf(parambyn);
    if (i < 0)
    {
      if (e != null) {
        e.a();
      }
      ezi.e("Babel", "BlockingChainedExecutor: can't find the request!", new Object[0]);
    }
    do
    {
      do
      {
        return;
        if (i == g.size() - 1)
        {
          if (e != null) {
            e.a();
          }
          if (paramBoolean)
          {
            parambyn.d();
            return;
          }
          parambyn.c();
          return;
        }
      } while ((d) || (((!paramBoolean) || (!b)) && ((paramBoolean) || (!c))));
      f = ((byn)g.get(i + 1));
      f.g();
      if (e != null) {
        e.b(f.a());
      }
    } while (!a);
    parambyn = String.valueOf(f);
    new StringBuilder(String.valueOf(parambyn).length() + 40).append("BlockingChainedExecutor: handle request ").append(parambyn);
  }
  
  public void a()
  {
    if (g.size() <= 0) {
      ezi.e("Babel", "BlockingChainedExecutor: make sure you have requests to run!", new Object[0]);
    }
    do
    {
      return;
      f = ((byn)g.get(0));
      if (e != null) {
        e.a(f.a());
      }
      f.g();
    } while (!a);
    String str = String.valueOf(f);
    new StringBuilder(String.valueOf(str).length() + 40).append("BlockingChainedExecutor: handle request ").append(str);
  }
  
  protected void a(byn parambyn)
  {
    a(parambyn, true);
  }
  
  protected void b(byn parambyn)
  {
    a(parambyn, false);
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    d = true;
    f.h();
  }
}

/* Location:
 * Qualified Name:     byi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */