package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import juk;
import jun;

@UsedByNative
public abstract class Stats
{
  static float a(ArrayList<Float> paramArrayList)
  {
    int j = paramArrayList.size();
    if (j == 0) {
      return 0.0F;
    }
    float[] arrayOfFloat = new float[j];
    int i = 0;
    while (i < j)
    {
      arrayOfFloat[i] = ((Float)paramArrayList.get(i)).floatValue();
      i += 1;
    }
    Arrays.sort(arrayOfFloat);
    i = j / 2;
    if (j % 2 == 1) {
      return arrayOfFloat[i];
    }
    float f = arrayOfFloat[(i - 1)];
    return (arrayOfFloat[i] + f) / 2.0F;
  }
  
  static jun a(int paramInt)
  {
    jun localjun = new jun();
    a = Integer.valueOf(paramInt);
    b = Integer.valueOf(-1);
    c = Integer.valueOf(-1);
    d = Integer.valueOf(-1);
    e = Integer.valueOf(-1);
    f = Integer.valueOf(-1);
    g = Long.valueOf(-1L);
    h = Integer.valueOf(-1);
    i = Long.valueOf(-1L);
    j = Integer.valueOf(-1);
    return localjun;
  }
  
  @UsedByNative
  private static int parseConnectionProtocol(String paramString)
  {
    if (paramString.equals("udp")) {
      return 1;
    }
    if (paramString.equals("tcp")) {
      return 2;
    }
    if (paramString.equals("ssltcp")) {
      return 3;
    }
    return 0;
  }
  
  @UsedByNative
  private static int parseConnectionType(String paramString)
  {
    if (paramString.equals("local")) {
      return 1;
    }
    if (paramString.equals("stun")) {
      return 2;
    }
    if (paramString.equals("relay")) {
      return 3;
    }
    return 0;
  }
  
  public abstract void addTo(juk paramjuk);
  
  public abstract void print(PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats);
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */