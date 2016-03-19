package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import juk;
import jun;

@UsedByNative
public class Stats$VideoReceiverStats
  extends Stats
{
  public final int a;
  public final int b;
  public final int c;
  public final int d;
  public final float e;
  public final int f;
  public final int g;
  public final int h;
  public final int i;
  public final int j;
  public final int k;
  public final float l;
  public final float m;
  public int n;
  public int o;
  
  @UsedByNative
  public Stats$VideoReceiverStats(int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, float paramFloat2, float paramFloat3)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramInt4;
    e = paramFloat1;
    f = paramInt5;
    g = paramInt6;
    h = paramInt7;
    i = paramInt8;
    j = paramInt9;
    k = paramInt10;
    l = paramFloat2;
    m = paramFloat3;
  }
  
  @UsedByNative
  public static void printLegend(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("  VideoReceiver -- ssrc, rcvd, lost, firs, size, rcvd, dec, rendIn, rendOut, viewRequestWidth, viewRequestHeight");
  }
  
  @UsedByNative
  public void addTo(juk paramjuk)
  {
    jun localjun = Stats.a(2);
    k = Integer.valueOf(1);
    l = Integer.valueOf(a);
    i = Long.valueOf(b);
    j = Integer.valueOf(c);
    c = Integer.valueOf(d);
    b = Integer.valueOf((int)(e * 100.0F));
    n = Integer.valueOf(f);
    o = Integer.valueOf(g);
    O = Integer.valueOf(h);
    P = Integer.valueOf(i);
    q = Integer.valueOf(j);
    r = Integer.valueOf(k);
    s = Float.valueOf(l);
    u = Float.valueOf(m);
    Q = Integer.valueOf(n);
    R = Integer.valueOf(o);
    int i1 = d.length;
    d = ((jun[])Arrays.copyOf(d, i1 + 1));
    d[i1] = localjun;
  }
  
  public void b(int paramInt)
  {
    n = paramInt;
  }
  
  public void c(int paramInt)
  {
    o = paramInt;
  }
  
  @UsedByNative
  public void print(PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats)
  {
    b.add(Float.valueOf(j));
    int i1 = a;
    int i2 = c;
    int i3 = b;
    int i4 = d;
    float f1 = e;
    int i5 = f;
    int i6 = g;
    int i7 = h;
    int i8 = i;
    int i9 = j;
    int i10 = k;
    float f2 = l;
    float f3 = m;
    int i11 = n;
    int i12 = o;
    paramPrintWriter.println(228 + " -- VideoReceiver -- " + i1 + ", " + i2 + " (" + i3 + "), " + i4 + " (" + f1 + "), " + i5 + " (" + i6 + "), " + i7 + "x" + i8 + ", " + i9 + ", " + i10 + ", " + f2 + ", " + f3 + ", " + i11 + ", " + i12);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats.VideoReceiverStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */