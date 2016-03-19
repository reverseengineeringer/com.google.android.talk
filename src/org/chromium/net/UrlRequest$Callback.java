package org.chromium.net;

import java.nio.ByteBuffer;

public abstract class UrlRequest$Callback
{
  public abstract void a(UrlRequest paramUrlRequest);
  
  public abstract void a(UrlRequest paramUrlRequest, ByteBuffer paramByteBuffer);
  
  public abstract void a(UrlRequest paramUrlRequest, UrlResponseInfo paramUrlResponseInfo);
  
  public abstract void a(UrlResponseInfo paramUrlResponseInfo);
  
  public abstract void a(UrlResponseInfo paramUrlResponseInfo, UrlRequestException paramUrlRequestException);
  
  public void b(UrlResponseInfo paramUrlResponseInfo) {}
}

/* Location:
 * Qualified Name:     org.chromium.net.UrlRequest.Callback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */