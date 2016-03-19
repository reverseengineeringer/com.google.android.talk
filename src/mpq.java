import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

final class mpq
  implements mpz
{
  mpq(mpe parammpe) {}
  
  public void a()
  {
    if (a.f.get() == mqh.i) {
      return;
    }
    Object localObject1 = (HttpURLConnection)new URL(a.l).openConnection();
    Object localObject2 = (HttpURLConnection)a.p.getAndSet(localObject1);
    if (localObject2 != null) {
      ((HttpURLConnection)localObject2).disconnect();
    }
    ((HttpURLConnection)localObject1).setInstanceFollowRedirects(false);
    if (!a.d.containsKey("User-Agent")) {
      a.d.put("User-Agent", a.c);
    }
    localObject2 = a.d.entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      ((HttpURLConnection)localObject1).setRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    if (a.h == null) {
      a.h = "GET";
    }
    ((HttpURLConnection)localObject1).setRequestMethod(a.h);
    if (a.i != null)
    {
      localObject1 = new mqa(a, a.j, a.b, (HttpURLConnection)localObject1, a.i);
      if (a.e.size() == 1) {}
      for (boolean bool = true;; bool = false)
      {
        ((mqa)localObject1).a(bool);
        return;
      }
    }
    a.k = 10;
    ((HttpURLConnection)localObject1).connect();
    localObject1 = a;
    k = 13;
    b.execute(((mpe)localObject1).a(mqh.b, new mpn((mpe)localObject1)));
  }
}

/* Location:
 * Qualified Name:     mpq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */