package com.google.api.client.http;

import irw;
import irx;

@Deprecated
public class ExponentialBackOffPolicy
  implements BackOffPolicy
{
  public static final int DEFAULT_INITIAL_INTERVAL_MILLIS = 500;
  public static final int DEFAULT_MAX_ELAPSED_TIME_MILLIS = 900000;
  public static final int DEFAULT_MAX_INTERVAL_MILLIS = 60000;
  public static final double DEFAULT_MULTIPLIER = 1.5D;
  public static final double DEFAULT_RANDOMIZATION_FACTOR = 0.5D;
  private final irw exponentialBackOff;
  
  public ExponentialBackOffPolicy()
  {
    this(new ExponentialBackOffPolicy.Builder());
  }
  
  protected ExponentialBackOffPolicy(ExponentialBackOffPolicy.Builder paramBuilder)
  {
    exponentialBackOff = exponentialBackOffBuilder.a();
  }
  
  public static ExponentialBackOffPolicy.Builder builder()
  {
    return new ExponentialBackOffPolicy.Builder();
  }
  
  public final int getCurrentIntervalMillis()
  {
    return exponentialBackOff.c;
  }
  
  public final long getElapsedTimeMillis()
  {
    return exponentialBackOff.c();
  }
  
  public final int getInitialIntervalMillis()
  {
    return exponentialBackOff.d;
  }
  
  public final int getMaxElapsedTimeMillis()
  {
    return exponentialBackOff.i;
  }
  
  public final int getMaxIntervalMillis()
  {
    return exponentialBackOff.g;
  }
  
  public final double getMultiplier()
  {
    return exponentialBackOff.f;
  }
  
  public long getNextBackOffMillis()
  {
    return exponentialBackOff.a();
  }
  
  public final double getRandomizationFactor()
  {
    return exponentialBackOff.e;
  }
  
  public boolean isBackOffRequired(int paramInt)
  {
    switch (paramInt)
    {
    case 501: 
    case 502: 
    default: 
      return false;
    }
    return true;
  }
  
  public final void reset()
  {
    exponentialBackOff.b();
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.ExponentialBackOffPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */