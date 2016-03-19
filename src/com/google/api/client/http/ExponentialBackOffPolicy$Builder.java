package com.google.api.client.http;

import irx;
import isi;

@Deprecated
public class ExponentialBackOffPolicy$Builder
{
  final irx exponentialBackOffBuilder = new irx();
  
  public ExponentialBackOffPolicy build()
  {
    return new ExponentialBackOffPolicy(this);
  }
  
  public final int getInitialIntervalMillis()
  {
    return exponentialBackOffBuilder.a;
  }
  
  public final int getMaxElapsedTimeMillis()
  {
    return exponentialBackOffBuilder.e;
  }
  
  public final int getMaxIntervalMillis()
  {
    return exponentialBackOffBuilder.d;
  }
  
  public final double getMultiplier()
  {
    return exponentialBackOffBuilder.c;
  }
  
  public final isi getNanoClock()
  {
    return exponentialBackOffBuilder.f;
  }
  
  public final double getRandomizationFactor()
  {
    return exponentialBackOffBuilder.b;
  }
  
  public Builder setInitialIntervalMillis(int paramInt)
  {
    exponentialBackOffBuilder.a(paramInt);
    return this;
  }
  
  public Builder setMaxElapsedTimeMillis(int paramInt)
  {
    exponentialBackOffBuilder.c(paramInt);
    return this;
  }
  
  public Builder setMaxIntervalMillis(int paramInt)
  {
    exponentialBackOffBuilder.b(paramInt);
    return this;
  }
  
  public Builder setMultiplier(double paramDouble)
  {
    exponentialBackOffBuilder.b(paramDouble);
    return this;
  }
  
  public Builder setNanoClock(isi paramisi)
  {
    exponentialBackOffBuilder.a(paramisi);
    return this;
  }
  
  public Builder setRandomizationFactor(double paramDouble)
  {
    exponentialBackOffBuilder.a(paramDouble);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.ExponentialBackOffPolicy.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */