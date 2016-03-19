import java.net.HttpURLConnection;
import java.util.AbstractMap.SimpleEntry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.chromium.net.UrlResponseInfo;

final class mpn
  implements mpz
{
  mpn(mpe parammpe) {}
  
  public void a()
  {
    Object localObject2 = (HttpURLConnection)a.p.get();
    if (localObject2 == null) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Object localObject1 = "http/1.1";
    int i = 0;
    for (;;)
    {
      String str = ((HttpURLConnection)localObject2).getHeaderFieldKey(i);
      if (str == null) {
        break;
      }
      if ("X-Android-Selected-Transport".equalsIgnoreCase(str)) {
        localObject1 = ((HttpURLConnection)localObject2).getHeaderField(i);
      }
      if (!str.startsWith("X-Android")) {
        localArrayList.add(new AbstractMap.SimpleEntry(str, ((HttpURLConnection)localObject2).getHeaderField(i)));
      }
      i += 1;
    }
    i = ((HttpURLConnection)localObject2).getResponseCode();
    a.n = new UrlResponseInfo(new ArrayList(a.e), i, ((HttpURLConnection)localObject2).getResponseMessage(), Collections.unmodifiableList(localArrayList), false, (String)localObject1, "");
    if ((i >= 300) && (i < 400))
    {
      localObject1 = a;
      localObject2 = a.n.b();
      ((mpe)localObject1).a(mqh.b, mqh.c, new mpo((mpe)localObject1, (Map)localObject2));
      return;
    }
    if (i >= 400)
    {
      a.m = mpa.a(((HttpURLConnection)localObject2).getErrorStream());
      a.a.a();
      return;
    }
    a.m = mpa.a(((HttpURLConnection)localObject2).getInputStream());
    a.a.a();
  }
}

/* Location:
 * Qualified Name:     mpn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */