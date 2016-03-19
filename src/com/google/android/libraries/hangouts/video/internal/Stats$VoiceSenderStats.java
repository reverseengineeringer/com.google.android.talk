package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import java.util.Arrays;
import juk;
import jun;

@UsedByNative
public class Stats$VoiceSenderStats
  extends Stats
{
  public final int a;
  public final String b;
  public final int c;
  public final int d;
  public final int e;
  public final float f;
  public final int g;
  public final int h;
  public final int i;
  public final int j;
  public final int k;
  public final int l;
  public final int m;
  public final int n;
  
  @UsedByNative
  public Stats$VoiceSenderStats(int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4, float paramFloat, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, int paramInt11, int paramInt12)
  {
    a = paramInt1;
    b = paramString;
    c = paramInt2;
    d = paramInt3;
    e = paramInt4;
    f = paramFloat;
    g = paramInt5;
    h = paramInt6;
    i = paramInt7;
    j = paramInt8;
    k = paramInt9;
    l = paramInt10;
    m = paramInt11;
    n = paramInt12;
  }
  
  @UsedByNative
  public static void printLegend(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("  VoiceSender -- ssrc, codec, sent, lost, seq, rtt, jitter, level, echo, echoRetLoss");
  }
  
  @UsedByNative
  public void addTo(juk paramjuk)
  {
    jun localjun = Stats.a(1);
    k = Integer.valueOf(0);
    l = Integer.valueOf(a);
    F = b;
    g = Long.valueOf(c);
    h = Integer.valueOf(d);
    c = Integer.valueOf(e);
    b = Integer.valueOf((int)(f * 100.0F));
    d = Integer.valueOf(g);
    f = Integer.valueOf(h);
    e = Integer.valueOf(i);
    if (j != -1) {
      m = Integer.valueOf(j);
    }
    if (k != -1) {
      H = Integer.valueOf(k);
    }
    if (l != -1) {
      I = Integer.valueOf(l);
    }
    if (m != -100) {
      J = Integer.valueOf(m);
    }
    if (n != -100) {
      K = Integer.valueOf(n);
    }
    int i1 = d.length;
    d = ((jun[])Arrays.copyOf(d, i1 + 1));
    d[i1] = localjun;
  }
  
  @UsedByNative
  public void print(PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats)
  {
    long l1 = a;
    paramAggregatePrintStats = b;
    int i1 = d;
    int i2 = c;
    int i3 = e;
    float f1 = f;
    int i4 = g;
    int i5 = h;
    int i6 = i;
    int i7 = j;
    int i8 = k;
    int i9 = l;
    int i10 = m;
    int i11 = n;
    paramPrintWriter.println(String.valueOf(paramAggregatePrintStats).length() + 205 + " -- VoiceSender -- " + (l1 & 0xFFFFFFFF) + ", " + paramAggregatePrintStats + ", " + i1 + " (" + i2 + "), " + i3 + " (" + f1 + "), " + i4 + ", " + i5 + ", " + i6 + ", " + i7 + ", " + i8 + " (" + i9 + "), " + i10 + " (" + i11 + ")");
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats.VoiceSenderStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */