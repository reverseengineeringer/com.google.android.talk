package com.google.api.client.http;

import java.io.OutputStream;

public class EmptyContent
  implements HttpContent
{
  public long getLength()
  {
    return 0L;
  }
  
  public String getType()
  {
    return null;
  }
  
  public boolean retrySupported()
  {
    return true;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.EmptyContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */