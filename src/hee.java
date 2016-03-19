import android.os.Handler;
import android.view.Surface;
import java.util.ArrayList;
import java.util.List;

public class hee
{
  final List<hec> a = new ArrayList();
  final hdy b = new hdy(this);
  final hdz c = new hdz(this);
  
  public hee()
  {
    c.start();
  }
  
  public void a()
  {
    c.c();
  }
  
  public void a(hgn paramhgn)
  {
    if ((c.d()) || (c.isInterrupted()))
    {
      hlk.a(5, "vclib", "Tried to notify frame on a dead GlManager, ignoring.");
      return;
    }
    paramhgn = c.a().obtainMessage(1, paramhgn);
    c.a().sendMessage(paramhgn);
  }
  
  public void a(hgn paramhgn, long paramLong)
  {
    if ((c.d()) || (c.isInterrupted()))
    {
      hlk.a(5, "vclib", "Tried to notify frame on a dead GlManager, ignoring.");
      return;
    }
    paramhgn = c.a().obtainMessage(1, paramhgn);
    c.a().sendMessageDelayed(paramhgn, paramLong);
  }
  
  public void a(hla paramhla)
  {
    if ((c.d()) || (c.isInterrupted()))
    {
      hlk.a(5, "vclib", "Tried to remove rendering target on a dead GlManager, ignoring.");
      return;
    }
    b(new hdw(this, paramhla));
  }
  
  public void a(hla paramhla, hgn paramhgn)
  {
    if (paramhgn == null) {
      throw new NullPointerException("Invalid videoSource");
    }
    if ((paramhla.b() != null) && (!paramhla.b().isValid()))
    {
      hlk.a(6, "vclib", "Asked to add a rendering target for an invalid surface.");
      return;
    }
    a(new hdv(this, paramhla, paramhgn));
  }
  
  public void a(Runnable paramRunnable)
  {
    if ((c.d()) || (c.isInterrupted()))
    {
      hlk.a(5, "vclib", "Tried to queue an event on a dead GlManager, ignoring.");
      return;
    }
    c.a().post(paramRunnable);
  }
  
  void b(Runnable paramRunnable)
  {
    if ((c.d()) || (c.isInterrupted()))
    {
      hlk.a(5, "vclib", "Tried to queue an event on a dead GlManager, ignoring.");
      return;
    }
    c.a().postAtFrontOfQueue(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     hee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */