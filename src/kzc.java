import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;

public final class kzc
  implements Closeable
{
  static final kzf a;
  final kzf b;
  private final Deque<Closeable> c = new ArrayDeque(4);
  private Throwable d;
  
  static
  {
    int i;
    if (kze.b != null)
    {
      i = 1;
      if (i == 0) {
        break label26;
      }
    }
    label26:
    for (Object localObject = kze.a;; localObject = kzd.a)
    {
      a = (kzf)localObject;
      return;
      i = 0;
      break;
    }
  }
  
  kzc(kzf paramkzf)
  {
    b = ((kzf)fii.a(paramkzf));
  }
  
  public <C extends Closeable> C a(C paramC)
  {
    if (paramC != null) {
      c.addFirst(paramC);
    }
    return paramC;
  }
  
  public RuntimeException a(Throwable paramThrowable)
  {
    fii.a(paramThrowable);
    d = paramThrowable;
    koh.a(paramThrowable, IOException.class);
    throw new RuntimeException(paramThrowable);
  }
  
  public void close()
  {
    Object localObject = d;
    while (!c.isEmpty())
    {
      Closeable localCloseable = (Closeable)c.removeFirst();
      try
      {
        localCloseable.close();
      }
      catch (Throwable localThrowable)
      {
        if (localObject == null) {
          localObject = localThrowable;
        } else {
          b.a(localCloseable, (Throwable)localObject, localThrowable);
        }
      }
    }
    if ((d == null) && (localObject != null))
    {
      koh.a((Throwable)localObject, IOException.class);
      throw new AssertionError(localObject);
    }
  }
}

/* Location:
 * Qualified Name:     kzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */