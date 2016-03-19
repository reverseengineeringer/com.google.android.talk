package com.google.android.libraries.hangouts.video.internal;

import com.google.android.apps.common.proguard.UsedByNative;
import java.io.PrintWriter;
import java.util.Arrays;
import juh;
import juk;
import jul;
import jum;

@UsedByNative
public class Stats$ConnectionInfoStats
  extends Stats
{
  public int a;
  public int b;
  public String c;
  public int d;
  public int e;
  public String f;
  public int g;
  public int h;
  public int i;
  public int j;
  public int k;
  public int l;
  public int m;
  public int n = 0;
  public jum o = null;
  
  @UsedByNative
  public Stats$ConnectionInfoStats(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    a = paramInt1;
    b = Stats.a(paramString1);
    c = paramString2;
    d = Stats.b(paramString3);
    e = Stats.a(paramString4);
    f = paramString5;
    g = Stats.b(paramString6);
    h = paramInt2;
    i = paramInt3;
    j = paramInt4;
    k = paramInt5;
    l = paramInt6;
    m = paramInt7;
  }
  
  @UsedByNative
  public static void printLegend(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("  Connection -- media type, local address, type, protocol, remote address, type, protocol, received bitrate, sent bitrate, media network type, wifi signal strength, cell signal type, cell level, cell asu level");
  }
  
  @UsedByNative
  public void addTo(juk paramjuk)
  {
    int i1;
    switch (a)
    {
    default: 
      i1 = 0;
    }
    for (;;)
    {
      juh localjuh1 = new juh();
      a = c;
      b = Integer.valueOf(i1);
      c = Integer.valueOf(b);
      d = Integer.valueOf(d);
      juh localjuh2 = new juh();
      a = c;
      b = Integer.valueOf(i1);
      c = Integer.valueOf(e);
      d = Integer.valueOf(g);
      jul localjul = new jul();
      a = Integer.valueOf(i1);
      b = Integer.valueOf(m);
      c = Integer.valueOf(l);
      d = Long.valueOf(j);
      h = Long.valueOf(h);
      e = Integer.valueOf(k / 8);
      i = Integer.valueOf(i / 8);
      j = localjuh1;
      k = localjuh2;
      if (n > 0) {
        l = Integer.valueOf(n);
      }
      m = o;
      i1 = e.length;
      e = ((jul[])Arrays.copyOf(e, i1 + 1));
      e[i1] = localjul;
      return;
      i1 = 1;
      continue;
      i1 = 2;
    }
  }
  
  @UsedByNative
  public void print(PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats)
  {
    if ((3 == b) || (3 == e))
    {
      c = true;
      if (a != 0) {
        break label357;
      }
    }
    label357:
    for (paramAggregatePrintStats = "video";; paramAggregatePrintStats = "audio")
    {
      String str1 = c;
      int i1 = b;
      int i2 = d;
      String str2 = f;
      int i3 = e;
      int i4 = g;
      int i5 = i;
      int i6 = k;
      int i7 = n;
      String str3 = String.valueOf(o.a);
      String str4 = String.valueOf(o.b);
      String str5 = String.valueOf(o.c);
      String str6 = String.valueOf(o.d);
      paramPrintWriter.println(String.valueOf(paramAggregatePrintStats).length() + 121 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + " -- Connection -- " + paramAggregatePrintStats + ", " + str1 + ", " + i1 + ", " + i2 + ", " + str2 + ", " + i3 + ", " + i4 + ", " + i5 + ", " + i6 + ", " + i7 + ", " + str3 + ", " + str4 + ", " + str5 + ", " + str6);
      return;
      c = false;
      break;
    }
  }
  
  @UsedByNative
  public void setMediaNetworkType(int paramInt)
  {
    n = paramInt;
  }
  
  @UsedByNative
  public void setSignalStrength(jum paramjum)
  {
    o = paramjum;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.hangouts.video.internal.Stats.ConnectionInfoStats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */