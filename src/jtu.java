import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentMap;

final class jtu
  implements Runnable
{
  jtu(jtt paramjtt, UUID paramUUID, ArrayList paramArrayList, lbb paramlbb) {}
  
  public void run()
  {
    d.c.remove(a);
    List localList = Collections.unmodifiableList(b);
    jud.a(jtk.a);
    try
    {
      Iterator localIterator = ((Set)d.b.a()).iterator();
      while (localIterator.hasNext())
      {
        jtr localjtr = (jtr)localIterator.next();
        c.a(jua.a(new jtv(this, localjtr, localList)), d.a);
      }
    }
    finally
    {
      jud.a(null);
    }
  }
}

/* Location:
 * Qualified Name:     jtu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */