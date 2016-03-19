import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class bf<E>
  extends be
{
  private final Activity a;
  final Context b;
  final int c;
  public final bh d = new bh();
  private final Handler e;
  private if<String, cj> f;
  private boolean g;
  private cl h;
  private boolean i;
  private boolean j;
  
  private bf(Activity paramActivity, Context paramContext, Handler paramHandler)
  {
    a = paramActivity;
    b = paramContext;
    e = paramHandler;
    c = 0;
  }
  
  bf(ba paramba)
  {
    this(paramba, paramba, a);
  }
  
  public View a(int paramInt)
  {
    return null;
  }
  
  cl a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (f == null) {
      f = new if();
    }
    cl localcl = (cl)f.get(paramString);
    if (localcl == null)
    {
      if (paramBoolean2)
      {
        localcl = new cl(paramString, this, paramBoolean1);
        f.put(paramString, localcl);
      }
      return localcl;
    }
    localcl.a(this);
    return localcl;
  }
  
  void a(av paramav) {}
  
  public void a(av paramav, Intent paramIntent, int paramInt)
  {
    if (paramInt != -1) {
      throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }
    b.startActivity(paramIntent);
  }
  
  public void a(av paramav, String[] paramArrayOfString, int paramInt) {}
  
  public void a(if<String, cj> paramif)
  {
    f = paramif;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(j);
    if (h != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(h)));
      paramPrintWriter.println(":");
      h.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
    if (h == null) {}
    while (!j) {
      return;
    }
    j = false;
    if (paramBoolean)
    {
      h.d();
      return;
    }
    h.c();
  }
  
  public boolean a()
  {
    return true;
  }
  
  public boolean a(String paramString)
  {
    return false;
  }
  
  void b(String paramString)
  {
    if (f != null)
    {
      cl localcl = (cl)f.get(paramString);
      if ((localcl != null) && (!f))
      {
        localcl.h();
        f.remove(paramString);
      }
    }
  }
  
  public boolean b()
  {
    return true;
  }
  
  public LayoutInflater c()
  {
    return (LayoutInflater)b.getSystemService("layout_inflater");
  }
  
  public void d() {}
  
  public boolean e()
  {
    return true;
  }
  
  public int f()
  {
    return c;
  }
  
  public abstract E g();
  
  Activity h()
  {
    return a;
  }
  
  Context i()
  {
    return b;
  }
  
  Handler j()
  {
    return e;
  }
  
  public bh k()
  {
    return d;
  }
  
  public cl l()
  {
    if (h != null) {
      return h;
    }
    i = true;
    h = a("(root)", j, true);
    return h;
  }
  
  boolean m()
  {
    return g;
  }
  
  public void n()
  {
    if (j) {
      return;
    }
    j = true;
    if (h != null) {
      h.b();
    }
    for (;;)
    {
      i = true;
      return;
      if (!i)
      {
        h = a("(root)", j, false);
        if ((h != null) && (!h.e)) {
          h.b();
        }
      }
    }
  }
  
  public void o()
  {
    if (h == null) {
      return;
    }
    h.h();
  }
  
  public void p()
  {
    if (f != null)
    {
      int m = f.size();
      cl[] arrayOfcl = new cl[m];
      int k = m - 1;
      while (k >= 0)
      {
        arrayOfcl[k] = ((cl)f.c(k));
        k -= 1;
      }
      k = 0;
      while (k < m)
      {
        cl localcl = arrayOfcl[k];
        localcl.e();
        localcl.g();
        k += 1;
      }
    }
  }
  
  public if<String, cj> q()
  {
    int m = 0;
    int n;
    if (f != null)
    {
      int i1 = f.size();
      cl[] arrayOfcl = new cl[i1];
      int k = i1 - 1;
      while (k >= 0)
      {
        arrayOfcl[k] = ((cl)f.c(k));
        k -= 1;
      }
      k = 0;
      n = k;
      if (m < i1)
      {
        cl localcl = arrayOfcl[m];
        if (f) {
          k = 1;
        }
        for (;;)
        {
          m += 1;
          break;
          localcl.h();
          f.remove(d);
        }
      }
    }
    else
    {
      n = 0;
    }
    if (n != 0) {
      return f;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */