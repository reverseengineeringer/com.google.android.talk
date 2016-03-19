package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import java.util.Arrays;
import juk;
import jun;

@UsedByNative
public class Stats$VoiceReceiverStats
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
  public final float n;
  public final float o;
  public final float p;
  public final int q;
  public final int r;
  public final int s;
  public final int t;
  public final int u;
  public final int v;
  
  @UsedByNative
  public Stats$VoiceReceiverStats(int paramInt1, int paramInt2, int paramInt3, int paramInt4, float paramFloat1, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, int paramInt11, int paramInt12, int paramInt13, int paramInt14, int paramInt15, int paramInt16)
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
    n = paramFloat4;
    o = paramFloat5;
    p = paramFloat6;
    q = paramInt11;
    r = paramInt12;
    s = paramInt13;
    t = paramInt14;
    u = paramInt15;
    v = paramInt16;
  }
  
  @UsedByNative
  public static void printLegend(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("  VoiceReceiver -- ssrc, rcvd, lost, seq, jitter, jbuf, delay, level, expand");
  }
  
  @UsedByNative
  public void addTo(juk paramjuk)
  {
    jun localjun = Stats.a(1);
    k = Integer.valueOf(1);
    l = Integer.valueOf(a);
    i = Long.valueOf(b);
    j = Integer.valueOf(c);
    c = Integer.valueOf(d);
    b = Integer.valueOf((int)(e * 100.0F));
    d = Integer.valueOf(f);
    e = Integer.valueOf(g);
    w = Integer.valueOf(h);
    Z = Float.valueOf(l);
    aa = Float.valueOf(m);
    ab = Float.valueOf(p);
    ac = Float.valueOf(o);
    ad = Float.valueOf(n);
    ai = Integer.valueOf(q);
    aj = Integer.valueOf(r);
    ak = Integer.valueOf(s);
    al = Integer.valueOf(t);
    am = Integer.valueOf(u);
    an = Integer.valueOf(v);
    if (j != -1) {
      y = Integer.valueOf(j);
    }
    if (k != -1) {
      m = Integer.valueOf(k);
    }
    int i1 = d.length;
    d = ((jun[])Arrays.copyOf(d, i1 + 1));
    d[i1] = localjun;
  }
  
  @UsedByNative
  public void print(PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats)
  {
    long l1 = a;
    int i1 = c;
    int i2 = b;
    int i3 = d;
    float f1 = e;
    int i4 = f;
    int i5 = g;
    int i6 = h;
    int i7 = i;
    int i8 = j;
    int i9 = k;
    float f2 = l;
    paramPrintWriter.println(195 + " -- VoiceReceiver -- " + (l1 & 0xFFFFFFFF) + ", " + i1 + " (" + i2 + "), " + i3 + " (" + f1 + "), " + i4 + ", " + i5 + ", " + i6 + " (" + i7 + "), " + i8 + ", " + i9 + ", " + f2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats.VoiceReceiverStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */