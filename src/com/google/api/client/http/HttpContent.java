package com.google.api.client.http;

import isq;
import java.io.OutputStream;

public abstract interface HttpContent
  extends isq
{
  public abstract long getLength();
  
  public abstract String getType();
  
  public abstract boolean retrySupported();
  
  public abstract void writeTo(OutputStream paramOutputStream);
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */