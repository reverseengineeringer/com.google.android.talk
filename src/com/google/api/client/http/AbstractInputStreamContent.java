package com.google.api.client.http;

import aal;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class AbstractInputStreamContent
  implements HttpContent
{
  private boolean closeInputStream = true;
  private String type;
  
  public AbstractInputStreamContent(String paramString)
  {
    setType(paramString);
  }
  
  public final boolean getCloseInputStream()
  {
    return closeInputStream;
  }
  
  public abstract InputStream getInputStream();
  
  public String getType()
  {
    return type;
  }
  
  public AbstractInputStreamContent setCloseInputStream(boolean paramBoolean)
  {
    closeInputStream = paramBoolean;
    return this;
  }
  
  public AbstractInputStreamContent setType(String paramString)
  {
    type = paramString;
    return this;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    aal.a(getInputStream(), paramOutputStream, closeInputStream);
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.AbstractInputStreamContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */