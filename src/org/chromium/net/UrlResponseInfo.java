package org.chromium.net;

import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.atomic.AtomicLong;

public final class UrlResponseInfo
{
  private final List<String> a;
  private final int b;
  private final String c;
  private final boolean d;
  private final String e;
  private final String f;
  private final AtomicLong g;
  private final UrlResponseInfo.HeaderBlock h;
  
  public UrlResponseInfo(List<String> paramList, int paramInt, String paramString1, List<Map.Entry<String, String>> paramList1, boolean paramBoolean, String paramString2, String paramString3)
  {
    a = Collections.unmodifiableList(paramList);
    b = paramInt;
    c = paramString1;
    h = new UrlResponseInfo.HeaderBlock(Collections.unmodifiableList(paramList1));
    d = paramBoolean;
    e = paramString2;
    f = paramString3;
    g = new AtomicLong();
  }
  
  public int a()
  {
    return b;
  }
  
  void a(long paramLong)
  {
    g.set(paramLong);
  }
  
  public Map<String, List<String>> b()
  {
    return h.b();
  }
  
  public String c()
  {
    return e;
  }
  
  public long d()
  {
    return g.get();
  }
  
  public String toString()
  {
    return String.format(Locale.ROOT, "UrlResponseInfo@[%s][%s]: urlChain = %s, httpStatus = %d %s, headers = %s, wasCached = %b, negotiatedProtocol = %s, proxyServer= %s, receivedBytesCount = %d", new Object[] { Integer.toHexString(System.identityHashCode(this)), (String)a.get(a.size() - 1), a.toString(), Integer.valueOf(a()), c, h.a().toString(), Boolean.valueOf(d), c(), f, Long.valueOf(d()) });
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.UrlResponseInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */