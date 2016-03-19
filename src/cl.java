import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public final class cl
  extends cj
{
  public static boolean a = false;
  final ig<cm> b = new ig();
  final ig<cm> c = new ig();
  final String d;
  boolean e;
  boolean f;
  boolean g;
  bf h;
  
  cl(String paramString, bf parambf, boolean paramBoolean)
  {
    d = paramString;
    h = parambf;
    e = paramBoolean;
  }
  
  private cm c(int paramInt, Bundle paramBundle, ck<Object> paramck)
  {
    cm localcm = new cm(this, paramInt, paramBundle, paramck);
    d = paramck.onCreateLoader(paramInt, paramBundle);
    return localcm;
  }
  
  private cm d(int paramInt, Bundle paramBundle, ck<Object> paramck)
  {
    try
    {
      g = true;
      paramBundle = c(paramInt, paramBundle, paramck);
      a(paramBundle);
      return paramBundle;
    }
    finally
    {
      g = false;
    }
  }
  
  public <D> fe<D> a(int paramInt, Bundle paramBundle, ck<D> paramck)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    cm localcm = (cm)b.a(paramInt);
    if (a) {
      new StringBuilder("initLoader in ").append(this).append(": args=").append(paramBundle);
    }
    if (localcm == null)
    {
      paramck = d(paramInt, paramBundle, paramck);
      paramBundle = paramck;
      if (a) {
        new StringBuilder("  Created new loader ").append(paramck);
      }
    }
    for (paramBundle = paramck;; paramBundle = localcm)
    {
      if ((e) && (e)) {
        paramBundle.b(d, g);
      }
      return d;
      if (a) {
        new StringBuilder("  Re-using existing loader ").append(localcm);
      }
      c = paramck;
    }
  }
  
  public void a(int paramInt)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    if (a) {
      new StringBuilder("destroyLoader in ").append(this).append(" of ").append(paramInt);
    }
    int i = b.f(paramInt);
    cm localcm;
    if (i >= 0)
    {
      localcm = (cm)b.e(i);
      b.c(i);
      localcm.g();
    }
    paramInt = c.f(paramInt);
    if (paramInt >= 0)
    {
      localcm = (cm)c.e(paramInt);
      c.c(paramInt);
      localcm.g();
    }
    if ((h != null) && (!a())) {
      h.d.f();
    }
  }
  
  void a(bf parambf)
  {
    h = parambf;
  }
  
  void a(cm paramcm)
  {
    b.a(a, paramcm);
    if (e) {
      paramcm.a();
    }
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str;
    int i;
    cm localcm;
    if (b.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < b.a())
      {
        localcm = (cm)b.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(b.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localcm.toString());
        localcm.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (c.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = j;
      while (i < c.a())
      {
        localcm = (cm)c.e(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(c.d(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localcm.toString());
        localcm.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }
  
  public boolean a()
  {
    int j = b.a();
    int i = 0;
    boolean bool2 = false;
    if (i < j)
    {
      cm localcm = (cm)b.e(i);
      if ((h) && (!f)) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        bool2 |= bool1;
        i += 1;
        break;
      }
    }
    return bool2;
  }
  
  public <D> fe<D> b(int paramInt)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    cm localcm = (cm)b.a(paramInt);
    if (localcm != null)
    {
      if (n != null) {
        return n.d;
      }
      return d;
    }
    return null;
  }
  
  public <D> fe<D> b(int paramInt, Bundle paramBundle, ck<D> paramck)
  {
    if (g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    cm localcm1 = (cm)b.a(paramInt);
    if (a) {
      new StringBuilder("restartLoader in ").append(this).append(": args=").append(paramBundle);
    }
    if (localcm1 != null)
    {
      cm localcm2 = (cm)c.a(paramInt);
      if (localcm2 == null) {
        break label248;
      }
      if (!e) {
        break label151;
      }
      if (a) {
        new StringBuilder("  Removing last inactive loader: ").append(localcm1);
      }
      f = false;
      localcm2.g();
    }
    for (;;)
    {
      d.w();
      c.a(paramInt, localcm1);
      for (;;)
      {
        return dd;
        label151:
        if (h) {
          break;
        }
        b.a(paramInt, null);
        localcm1.g();
      }
      localcm1.f();
      if (n != null)
      {
        if (a) {
          new StringBuilder("  Removing pending loader: ").append(n);
        }
        n.g();
        n = null;
      }
      n = c(paramInt, paramBundle, paramck);
      return n.d;
      label248:
      if (a) {
        new StringBuilder("  Making last loader inactive: ").append(localcm1);
      }
    }
  }
  
  void b()
  {
    if (a) {
      new StringBuilder("Starting in ").append(this);
    }
    if (e)
    {
      new RuntimeException("here").fillInStackTrace();
      new StringBuilder("Called doStart when already started: ").append(this);
    }
    for (;;)
    {
      return;
      e = true;
      int i = b.a() - 1;
      while (i >= 0)
      {
        ((cm)b.e(i)).a();
        i -= 1;
      }
    }
  }
  
  void c()
  {
    if (a) {
      new StringBuilder("Stopping in ").append(this);
    }
    if (!e)
    {
      new RuntimeException("here").fillInStackTrace();
      new StringBuilder("Called doStop when not started: ").append(this);
      return;
    }
    int i = b.a() - 1;
    while (i >= 0)
    {
      ((cm)b.e(i)).e();
      i -= 1;
    }
    e = false;
  }
  
  void d()
  {
    if (a) {
      new StringBuilder("Retaining in ").append(this);
    }
    if (!e)
    {
      new RuntimeException("here").fillInStackTrace();
      new StringBuilder("Called doRetain when not started: ").append(this);
    }
    for (;;)
    {
      return;
      f = true;
      e = false;
      int i = b.a() - 1;
      while (i >= 0)
      {
        ((cm)b.e(i)).b();
        i -= 1;
      }
    }
  }
  
  void e()
  {
    if (f)
    {
      if (a) {
        new StringBuilder("Finished Retaining in ").append(this);
      }
      f = false;
      int i = b.a() - 1;
      while (i >= 0)
      {
        ((cm)b.e(i)).c();
        i -= 1;
      }
    }
  }
  
  void f()
  {
    int i = b.a() - 1;
    while (i >= 0)
    {
      b.e(i)).k = true;
      i -= 1;
    }
  }
  
  void g()
  {
    int i = b.a() - 1;
    while (i >= 0)
    {
      ((cm)b.e(i)).d();
      i -= 1;
    }
  }
  
  void h()
  {
    if (!f)
    {
      if (a) {
        new StringBuilder("Destroying Active in ").append(this);
      }
      i = b.a() - 1;
      while (i >= 0)
      {
        ((cm)b.e(i)).g();
        i -= 1;
      }
      b.b();
    }
    if (a) {
      new StringBuilder("Destroying Inactive in ").append(this);
    }
    int i = c.a() - 1;
    while (i >= 0)
    {
      ((cm)c.e(i)).g();
      i -= 1;
    }
    c.b();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    aal.a(h, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */