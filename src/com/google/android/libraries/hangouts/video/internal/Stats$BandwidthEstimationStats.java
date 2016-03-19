package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import java.util.Arrays;
import juk;
import jun;

@UsedByNative
public class Stats$BandwidthEstimationStats
  extends Stats
{
  public final int a;
  public final int b;
  public final int c;
  public final int d;
  public final int e;
  
  @UsedByNative
  public Stats$BandwidthEstimationStats(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramInt4;
    e = paramInt5;
  }
  
  @UsedByNative
  public static void printLegend(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("  BandwidthEstimation -- availSend, avilRecv, trans, retrans, leakyBucketDelay");
  }
  
  @UsedByNative
  public void addTo(juk paramjuk)
  {
    jun localjun = Stats.a(2);
    k = Integer.valueOf(2);
    z = Integer.valueOf(a);
    A = Integer.valueOf(b);
    B = Integer.valueOf(c);
    C = Integer.valueOf(d);
    E = Integer.valueOf(e);
    int i = d.length;
    d = ((jun[])Arrays.copyOf(d, i + 1));
    d[i] = localjun;
  }
  
  @UsedByNative
  public void print(PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats)
  {
    int i = a;
    int j = b;
    int k = c;
    int m = d;
    int n = e;
    paramPrintWriter.println(90 + " -- BandwidthEstimation -- " + i + ", " + j + ", " + k + ", " + m + ", " + n);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats.BandwidthEstimationStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */