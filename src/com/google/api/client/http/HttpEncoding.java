package com.google.api.client.http;

import isq;
import java.io.OutputStream;

public abstract interface HttpEncoding
{
  public abstract void encode(isq paramisq, OutputStream paramOutputStream);
  
  public abstract String getName();
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpEncoding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */