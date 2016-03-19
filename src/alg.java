import android.os.Handler.Callback;
import android.os.Message;
import java.util.Iterator;
import java.util.List;

final class alg
  implements Handler.Callback
{
  public boolean handleMessage(Message paramMessage)
  {
    ale localale = (ale)obj;
    switch (what)
    {
    default: 
      int i = what;
      throw new IllegalStateException(33 + "Unrecognized message: " + i);
    case 1: 
      b.a();
      if (j)
      {
        f.e();
        localale.a(false);
        return true;
      }
      if (a.isEmpty()) {
        throw new IllegalStateException("Received a resource without any callbacks to notify");
      }
      if (h) {
        throw new IllegalStateException("Already have resource");
      }
      i = new alk(f, e);
      h = true;
      i.f();
      c.a(d, i);
      paramMessage = a.iterator();
      while (paramMessage.hasNext())
      {
        aul localaul = (aul)paramMessage.next();
        if (!localale.c(localaul))
        {
          i.f();
          localaul.a(i, g);
        }
      }
      i.g();
      localale.a(false);
      return true;
    case 2: 
      localale.a();
      return true;
    }
    b.a();
    if (!j) {
      throw new IllegalStateException("Not cancelled");
    }
    c.a(localale, d);
    localale.a(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     alg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */