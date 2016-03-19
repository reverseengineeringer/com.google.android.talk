package org.chromium.net;

import java.util.Collection;

@Deprecated
public final class CronetEngine$UrlRequestInfo
{
  private final String a;
  private final Collection<Object> b;
  private final CronetEngine.UrlRequestMetrics c;
  private final UrlResponseInfo d;
  
  CronetEngine$UrlRequestInfo(String paramString, Collection<Object> paramCollection, CronetEngine.UrlRequestMetrics paramUrlRequestMetrics, UrlResponseInfo paramUrlResponseInfo)
  {
    a = paramString;
    b = paramCollection;
    c = paramUrlRequestMetrics;
    d = paramUrlResponseInfo;
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.CronetEngine.UrlRequestInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */