import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class igt
  implements igs
{
  private static final int b = Math.max(1, Runtime.getRuntime().availableProcessors() - 1);
  final Handler b_ = new Handler(Looper.getMainLooper(), new igu(this));
  final HashMap<igq, igp> c = new HashMap();
  private final Context d;
  private final ExecutorService e;
  private final igx f = new igx(this);
  private igz g;
  
  public igt(Context paramContext)
  {
    d = paramContext;
    e = Executors.newFixedThreadPool(b, new igv(this));
  }
  
  public void a(igp paramigp, int paramInt)
  {
    b_.sendMessage(b_.obtainMessage(0, paramInt, 0, paramigp));
  }
  
  public void a(igp paramigp, int paramInt1, int paramInt2)
  {
    b_.sendMessage(b_.obtainMessage(2, paramInt1, paramInt2, paramigp));
  }
  
  public void a(igp paramigp, int paramInt, Object paramObject)
  {
    b_.sendMessage(b_.obtainMessage(1, paramInt, 0, new igy(paramigp, paramObject)));
  }
  
  public void a(igp paramigp, Object paramObject)
  {
    e.execute(new igw(this, paramigp, paramObject));
  }
  
  boolean a(Message paramMessage)
  {
    switch (what)
    {
    }
    for (;;)
    {
      return true;
      Object localObject = (igp)obj;
      i = arg1;
      ((igp)localObject).r();
      continue;
      localObject = (igp)obj;
      i = arg1;
      j = arg2;
      ((igp)localObject).r();
      continue;
      localObject = (igy)obj;
      igp localigp = a;
      h = b;
      i = arg1;
      localigp.r();
      continue;
      localObject = (igp)obj;
      k = arg1;
      ((igp)localObject).r();
      continue;
      ((igp)obj).b(f);
    }
  }
  
  public void b(igp paramigp, int paramInt)
  {
    b_.sendMessage(b_.obtainMessage(3, paramInt, 0, paramigp));
  }
  
  public void c(igp paramigp)
  {
    m().a(paramigp);
  }
  
  public Context l()
  {
    return d;
  }
  
  igz m()
  {
    if (g == null)
    {
      g = new igz();
      g.start();
    }
    return g;
  }
}

/* Location:
 * Qualified Name:     igt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */