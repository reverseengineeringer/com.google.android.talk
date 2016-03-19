import java.io.File;
import java.io.IOException;

public final class aie
{
  final aif a;
  final boolean[] b;
  private boolean d;
  
  aie(aib paramaib, aif paramaif)
  {
    a = paramaif;
    if (e) {}
    for (paramaib = null;; paramaib = new boolean[b])
    {
      b = paramaib;
      return;
    }
  }
  
  public File a()
  {
    synchronized (c)
    {
      if (a.f != this) {
        throw new IllegalStateException();
      }
    }
    if (!a.e) {
      b[0] = true;
    }
    File localFile = a.b(0);
    if (!c.a.exists()) {
      c.a.mkdirs();
    }
    return localFile;
  }
  
  public void b()
  {
    c.a(this, true);
    d = true;
  }
  
  public void c()
  {
    c.a(this, false);
  }
  
  public void d()
  {
    if (!d) {}
    try
    {
      c();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     aie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */