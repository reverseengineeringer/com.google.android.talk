package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import juk;
import jun;
import juo;

@UsedByNative
public class Stats$VideoSenderStats
  extends Stats
{
  public final int a;
  public final Stats.VideoSenderStats.SsrcGroup[] b;
  public final String c;
  public final int d;
  public final int e;
  public final int f;
  public final float g;
  public final int h;
  public final int i;
  public final int j;
  public final int k;
  public final int l;
  public final int m;
  public final int n;
  public final int o;
  public final int p;
  
  @UsedByNative
  public Stats$VideoSenderStats(int paramInt1, Stats.VideoSenderStats.SsrcGroup[] paramArrayOfSsrcGroup, String paramString, int paramInt2, int paramInt3, int paramInt4, float paramFloat, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, int paramInt11, int paramInt12, int paramInt13)
  {
    a = paramInt1;
    b = paramArrayOfSsrcGroup;
    c = paramString;
    d = paramInt2;
    e = paramInt3;
    f = paramInt4;
    g = paramFloat;
    h = paramInt5;
    i = paramInt6;
    j = paramInt7;
    k = paramInt8;
    l = paramInt9;
    m = paramInt10;
    n = paramInt11;
    o = paramInt12;
    p = paramInt13;
  }
  
  @UsedByNative
  public static void printLegend(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("  VideoSender -- ssrc, codec, sent, lost, rcvd, rtt, size, in, sent, rate");
  }
  
  @UsedByNative
  public void addTo(juk paramjuk)
  {
    jun localjun = Stats.a(2);
    k = Integer.valueOf(0);
    l = Integer.valueOf(a);
    F = c;
    g = Long.valueOf(d);
    h = Integer.valueOf(e);
    c = Integer.valueOf(f);
    b = Integer.valueOf((int)(g * 100.0F));
    n = Integer.valueOf(h);
    o = Integer.valueOf(i);
    f = Integer.valueOf(j);
    O = Integer.valueOf(k);
    P = Integer.valueOf(l);
    p = Integer.valueOf(m);
    q = Integer.valueOf(n);
    z = Integer.valueOf(p);
    B = Integer.valueOf(o);
    if (b != null)
    {
      ArrayList localArrayList = new ArrayList(b.length);
      Stats.VideoSenderStats.SsrcGroup[] arrayOfSsrcGroup = b;
      int i2 = arrayOfSsrcGroup.length;
      i1 = 0;
      while (i1 < i2)
      {
        Stats.VideoSenderStats.SsrcGroup localSsrcGroup = arrayOfSsrcGroup[i1];
        juo localjuo = new juo();
        a = a;
        b = ((int[])b.clone());
        localArrayList.add(localjuo);
        i1 += 1;
      }
      N = ((juo[])localArrayList.toArray(new juo[localArrayList.size()]));
    }
    int i1 = d.length;
    d = ((jun[])Arrays.copyOf(d, i1 + 1));
    d[i1] = localjun;
  }
  
  @UsedByNative
  public void print(PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats)
  {
    a.add(Float.valueOf(n));
    int i1 = a;
    paramAggregatePrintStats = c;
    int i2 = e;
    int i3 = d;
    int i4 = f;
    float f1 = g;
    int i5 = h;
    int i6 = i;
    int i7 = j;
    int i8 = k;
    int i9 = l;
    int i10 = m;
    int i11 = n;
    int i12 = o;
    int i13 = p;
    paramPrintWriter.println(String.valueOf(paramAggregatePrintStats).length() + 208 + " -- VideoSender -- " + i1 + ", " + paramAggregatePrintStats + ", " + i2 + " (" + i3 + "), " + i4 + " (" + f1 + "), " + i5 + " (" + i6 + "), " + i7 + ", " + i8 + "x" + i9 + ", " + i10 + ", " + i11 + ", " + i12 + " (" + i13 + ")");
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats.VideoSenderStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */