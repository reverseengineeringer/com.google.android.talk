package com.google.api.client.http;

@Deprecated
public abstract interface BackOffPolicy
{
  public static final long STOP = -1L;
  
  public abstract long getNextBackOffMillis();
  
  public abstract boolean isBackOffRequired(int paramInt);
  
  public abstract void reset();
}

/* Location:
 * Qualified Name:     com.google.api.client.http.BackOffPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */