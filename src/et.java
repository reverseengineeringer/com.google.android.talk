import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

public abstract class et<D>
  extends fe<D>
{
  volatile eu a;
  volatile eu b;
  long c;
  long d = -10000L;
  Handler e;
  private final Executor f;
  
  public et(Context paramContext)
  {
    this(paramContext, fm.c);
  }
  
  private et(Context paramContext, Executor paramExecutor)
  {
    super(paramContext);
    f = paramExecutor;
  }
  
  protected void a()
  {
    super.a();
    t();
    a = new eu(this);
    c();
  }
  
  void a(eu parameu, D paramD)
  {
    a(paramD);
    if (b == parameu)
    {
      B();
      d = SystemClock.uptimeMillis();
      b = null;
      m();
      c();
    }
  }
  
  public void a(D paramD) {}
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (a != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(a);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(a.a);
    }
    if (b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(b);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(b.a);
    }
    if (c != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      ih.a(c, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      ih.a(d, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }
  
  void b(eu parameu, D paramD)
  {
    if (a != parameu)
    {
      a(parameu, paramD);
      return;
    }
    if (q())
    {
      a(paramD);
      return;
    }
    A();
    d = SystemClock.uptimeMillis();
    a = null;
    b(paramD);
  }
  
  protected boolean b()
  {
    if (a != null)
    {
      if (b != null)
      {
        if (a.a)
        {
          a.a = false;
          e.removeCallbacks(a);
        }
        a = null;
      }
    }
    else {
      return false;
    }
    if (a.a)
    {
      a.a = false;
      e.removeCallbacks(a);
      a = null;
      return false;
    }
    boolean bool = a.e.cancel(false);
    if (bool)
    {
      b = a;
      f();
    }
    a = null;
    return bool;
  }
  
  void c()
  {
    if ((b == null) && (a != null))
    {
      if (a.a)
      {
        a.a = false;
        e.removeCallbacks(a);
      }
      if ((c > 0L) && (SystemClock.uptimeMillis() < d + c))
      {
        a.a = true;
        e.postAtTime(a, d + c);
      }
    }
    else
    {
      return;
    }
    eu localeu = a;
    Executor localExecutor = f;
    if (f != fs.a) {}
    switch (fp.a[(f - 1)])
    {
    default: 
      f = fs.b;
      d.a = null;
      localExecutor.execute(e);
      return;
    case 1: 
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }
  
  public abstract D d();
  
  protected D e()
  {
    return (D)d();
  }
  
  public void f() {}
  
  public boolean g()
  {
    return b != null;
  }
}

/* Location:
 * Qualified Name:     et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */