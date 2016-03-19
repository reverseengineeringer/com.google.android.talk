package org.chromium.net;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.util.List;
import java.util.Map;

@Deprecated
public abstract interface HttpUrlRequest
{
  public abstract long a();
  
  public abstract void a(long paramLong);
  
  public abstract void a(long paramLong, boolean paramBoolean);
  
  public abstract void a(String paramString);
  
  public abstract void a(String paramString, ReadableByteChannel paramReadableByteChannel, long paramLong);
  
  public abstract void a(String paramString, byte[] paramArrayOfByte);
  
  public abstract int b();
  
  public abstract String c();
  
  public abstract IOException d();
  
  public abstract ByteBuffer e();
  
  public abstract byte[] f();
  
  public abstract void h();
  
  public abstract void i();
  
  public abstract boolean j();
  
  public abstract String k();
  
  public abstract String l();
  
  public abstract Map<String, List<String>> m();
  
  public abstract String n();
}

/* Location:
 * Qualified Name:     org.chromium.net.HttpUrlRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */