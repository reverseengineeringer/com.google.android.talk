import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class cm
  implements fg<Object>, fh<Object>
{
  final int a;
  final Bundle b;
  ck<Object> c;
  fe<Object> d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  cm n;
  
  public cm(int paramInt, Bundle paramBundle, ck<Object> paramck)
  {
    a = paramBundle;
    b = paramck;
    ck localck;
    c = localck;
  }
  
  void a()
  {
    if ((i) && (j)) {
      h = true;
    }
    do
    {
      do
      {
        return;
      } while (h);
      h = true;
      if (cl.a) {
        new StringBuilder("  Starting: ").append(this);
      }
      if ((d == null) && (c != null)) {
        d = c.onCreateLoader(a, b);
      }
    } while (d == null);
    if ((d.getClass().isMemberClass()) && (!Modifier.isStatic(d.getClass().getModifiers()))) {
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + d);
    }
    if (!m)
    {
      d.a(a, this);
      d.a(this);
      m = true;
    }
    d.s();
  }
  
  public void a(fe<Object> paramfe, Object paramObject)
  {
    if (cl.a) {
      new StringBuilder("onLoadComplete: ").append(this);
    }
    if (l) {}
    do
    {
      do
      {
        return;
      } while (o.b.a(a) != this);
      cm localcm = n;
      if (localcm != null)
      {
        if (cl.a) {
          new StringBuilder("  Switching to pending loader: ").append(localcm);
        }
        n = null;
        o.b.a(a, null);
        g();
        o.a(localcm);
        return;
      }
      if ((g != paramObject) || (!e))
      {
        g = paramObject;
        e = true;
        if (h) {
          b(paramfe, paramObject);
        }
      }
      paramfe = (cm)o.c.a(a);
      if ((paramfe != null) && (paramfe != this))
      {
        f = false;
        paramfe.g();
        o.c.b(a);
      }
    } while ((o.h == null) || (o.a()));
    o.h.d.f();
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(a);
    paramPrintWriter.print(" mArgs=");
    paramPrintWriter.println(b);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCallbacks=");
    paramPrintWriter.println(c);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoader=");
    paramPrintWriter.println(d);
    if (d != null) {
      d.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if ((e) || (f))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHaveData=");
      paramPrintWriter.print(e);
      paramPrintWriter.print("  mDeliveredData=");
      paramPrintWriter.println(f);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(g);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(h);
    paramPrintWriter.print(" mReportNextStart=");
    paramPrintWriter.print(k);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetaining=");
    paramPrintWriter.print(i);
    paramPrintWriter.print(" mRetainingStarted=");
    paramPrintWriter.print(j);
    paramPrintWriter.print(" mListenerRegistered=");
    paramPrintWriter.println(m);
    if (n != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(n);
      paramPrintWriter.println(":");
      n.a(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  void b()
  {
    if (cl.a) {
      new StringBuilder("  Retaining: ").append(this);
    }
    i = true;
    j = h;
    h = false;
    c = null;
  }
  
  void b(fe<Object> paramfe, Object paramObject)
  {
    String str;
    if (c != null)
    {
      if (o.h == null) {
        break label147;
      }
      str = o.h.d.v;
      o.h.d.v = "onLoadFinished";
    }
    for (;;)
    {
      try
      {
        if (cl.a) {
          new StringBuilder("  onLoadFinished in ").append(paramfe).append(": ").append(paramfe.c(paramObject));
        }
        c.onLoadFinished(paramfe, paramObject);
        if (o.h != null) {
          o.h.d.v = str;
        }
        f = true;
        return;
      }
      finally
      {
        if (o.h != null) {
          o.h.d.v = str;
        }
      }
      label147:
      str = null;
    }
  }
  
  void c()
  {
    if (i)
    {
      if (cl.a) {
        new StringBuilder("  Finished Retaining: ").append(this);
      }
      i = false;
      if ((h != j) && (!h)) {
        e();
      }
    }
    if ((h) && (e) && (!k)) {
      b(d, g);
    }
  }
  
  void d()
  {
    if ((h) && (k))
    {
      k = false;
      if (e) {
        b(d, g);
      }
    }
  }
  
  void e()
  {
    if (cl.a) {
      new StringBuilder("  Stopping: ").append(this);
    }
    h = false;
    if ((!i) && (d != null) && (m))
    {
      m = false;
      d.a(this);
      d.b(this);
      d.v();
    }
  }
  
  void f()
  {
    if (cl.a) {
      new StringBuilder("  Canceling: ").append(this);
    }
    if ((h) && (d != null) && (m) && (!d.t())) {
      h();
    }
  }
  
  void g()
  {
    if (cl.a) {
      new StringBuilder("  Destroying: ").append(this);
    }
    l = true;
    boolean bool = f;
    f = false;
    String str;
    if ((c != null) && (d != null) && (e) && (bool))
    {
      if (cl.a) {
        new StringBuilder("  Reseting: ").append(this);
      }
      if (o.h == null) {
        break label258;
      }
      str = o.h.d.v;
      o.h.d.v = "onLoaderReset";
    }
    for (;;)
    {
      try
      {
        c.onLoaderReset(d);
        if (o.h != null) {
          o.h.d.v = str;
        }
        c = null;
        g = null;
        e = false;
        if (d != null)
        {
          if (m)
          {
            m = false;
            d.a(this);
            d.b(this);
          }
          d.y();
        }
        if (n != null) {
          n.g();
        }
        return;
      }
      finally
      {
        if (o.h != null) {
          o.h.d.v = str;
        }
      }
      label258:
      str = null;
    }
  }
  
  public void h()
  {
    if (cl.a) {
      new StringBuilder("onLoadCanceled: ").append(this);
    }
    if (l) {}
    cm localcm;
    do
    {
      do
      {
        return;
      } while (o.b.a(a) != this);
      localcm = n;
    } while (localcm == null);
    if (cl.a) {
      new StringBuilder("  Switching to pending loader: ").append(localcm);
    }
    n = null;
    o.b.a(a, null);
    g();
    o.a(localcm);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(a);
    localStringBuilder.append(" : ");
    aal.a(d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */