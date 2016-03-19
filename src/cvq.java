import java.io.FileOutputStream;
import java.io.OutputStream;

public final class cvq
{
  final cvs a;
  boolean b;
  
  cvq(cvo paramcvo, cvs paramcvs)
  {
    a = paramcvs;
  }
  
  public OutputStream a()
  {
    synchronized (c)
    {
      if (a.d != this) {
        throw new IllegalStateException();
      }
    }
    cvr localcvr = new cvr(this, new FileOutputStream(a.b(0)));
    return localcvr;
  }
  
  public void b()
  {
    if (b)
    {
      c.a(this, false);
      c.c(a.a);
      return;
    }
    c.a(this, true);
  }
  
  public void c()
  {
    c.a(this, false);
  }
}

/* Location:
 * Qualified Name:     cvq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */