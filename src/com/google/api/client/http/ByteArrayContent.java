package com.google.api.client.http;

import fii;
import isr;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public final class ByteArrayContent
  extends AbstractInputStreamContent
{
  private final byte[] byteArray;
  private final int length;
  private final int offset;
  
  public ByteArrayContent(String paramString, byte[] paramArrayOfByte)
  {
    this(paramString, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public ByteArrayContent(String paramString, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    super(paramString);
    byteArray = ((byte[])fii.a(paramArrayOfByte));
    if ((paramInt1 >= 0) && (paramInt2 >= 0) && (paramInt1 + paramInt2 <= paramArrayOfByte.length)) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "offset %s, length %s, array length %s", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramArrayOfByte.length) });
      offset = paramInt1;
      length = paramInt2;
      return;
    }
  }
  
  public static ByteArrayContent fromString(String paramString1, String paramString2)
  {
    return new ByteArrayContent(paramString1, isr.a(paramString2));
  }
  
  public InputStream getInputStream()
  {
    return new ByteArrayInputStream(byteArray, offset, length);
  }
  
  public long getLength()
  {
    return length;
  }
  
  public boolean retrySupported()
  {
    return true;
  }
  
  public ByteArrayContent setCloseInputStream(boolean paramBoolean)
  {
    return (ByteArrayContent)super.setCloseInputStream(paramBoolean);
  }
  
  public ByteArrayContent setType(String paramString)
  {
    return (ByteArrayContent)super.setType(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.ByteArrayContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */