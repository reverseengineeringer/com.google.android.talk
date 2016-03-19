package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import juk;

@UsedByNative
public class Stats$GlobalStats
  extends Stats
{
  public final int a;
  public final int b;
  public int c = -1;
  public int d = -1;
  public int e = -1;
  public boolean f = true;
  public int g = -1;
  
  @UsedByNative
  public Stats$GlobalStats(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public void addTo(juk paramjuk)
  {
    f = Integer.valueOf(a);
    j = Integer.valueOf(b);
    k = Integer.valueOf(c);
    o = Integer.valueOf(d);
    p = Integer.valueOf(e);
    q = Boolean.valueOf(f);
    r = Integer.valueOf(g);
  }
  
  public void b(int paramInt)
  {
    c = paramInt;
  }
  
  public void c(int paramInt)
  {
    d = paramInt;
  }
  
  public void d(int paramInt)
  {
    e = paramInt;
  }
  
  public void e(int paramInt)
  {
    g = paramInt;
  }
  
  public void print(PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats)
  {
    int i = a;
    int j = b;
    int k = c;
    int m = e;
    int n = d;
    boolean bool = f;
    int i1 = g;
    paramPrintWriter.println(102 + " -- GlobalStats -- " + i + ", " + j + ", " + k + ", " + m + ", " + n + ", " + bool + ", " + i1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats.GlobalStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */