import android.content.Context;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class fe<D>
{
  int n;
  fh<D> o;
  fg<D> p;
  Context q;
  boolean r = false;
  boolean s = false;
  boolean t = true;
  boolean u = false;
  boolean v = false;
  
  public fe(Context paramContext)
  {
    q = paramContext.getApplicationContext();
  }
  
  public void A()
  {
    v = false;
  }
  
  public void B()
  {
    if (v) {
      u = true;
    }
  }
  
  public void C()
  {
    if (r)
    {
      u();
      return;
    }
    u = true;
  }
  
  protected void a() {}
  
  public void a(int paramInt, fh<D> paramfh)
  {
    if (o != null) {
      throw new IllegalStateException("There is already a listener registered");
    }
    o = paramfh;
    n = paramInt;
  }
  
  public void a(fg<D> paramfg)
  {
    if (p != null) {
      throw new IllegalStateException("There is already a listener registered");
    }
    p = paramfg;
  }
  
  public void a(fh<D> paramfh)
  {
    if (o == null) {
      throw new IllegalStateException("No listener register");
    }
    if (o != paramfh) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    o = null;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(n);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(o);
    if ((r) || (u) || (v))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(r);
      paramPrintWriter.print(" mContentChanged=");
      paramPrintWriter.print(u);
      paramPrintWriter.print(" mProcessingChange=");
      paramPrintWriter.println(v);
    }
    if ((s) || (t))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAbandoned=");
      paramPrintWriter.print(s);
      paramPrintWriter.print(" mReset=");
      paramPrintWriter.println(t);
    }
  }
  
  public void b(fg<D> paramfg)
  {
    if (p == null) {
      throw new IllegalStateException("No listener register");
    }
    if (p != paramfg) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    p = null;
  }
  
  public void b(D paramD)
  {
    if (o != null) {
      o.a(this, paramD);
    }
  }
  
  protected boolean b()
  {
    return false;
  }
  
  public String c(D paramD)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    aal.a(paramD, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void i() {}
  
  public void j() {}
  
  public void k() {}
  
  public void m()
  {
    if (p != null) {
      p.h();
    }
  }
  
  public Context n()
  {
    return q;
  }
  
  public int o()
  {
    return n;
  }
  
  public boolean p()
  {
    return r;
  }
  
  public boolean q()
  {
    return s;
  }
  
  public boolean r()
  {
    return t;
  }
  
  public final void s()
  {
    r = true;
    t = false;
    s = false;
    i();
  }
  
  public boolean t()
  {
    return b();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    aal.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(n);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void u()
  {
    a();
  }
  
  public void v()
  {
    r = false;
    j();
  }
  
  public void w()
  {
    s = true;
    x();
  }
  
  public void x() {}
  
  public void y()
  {
    k();
    t = true;
    r = false;
    s = false;
    u = false;
    v = false;
  }
  
  public boolean z()
  {
    boolean bool = u;
    u = false;
    v |= bool;
    return bool;
  }
}

/* Location:
 * Qualified Name:     fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */