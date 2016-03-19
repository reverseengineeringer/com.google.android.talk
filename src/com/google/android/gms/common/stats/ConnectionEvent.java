package com.google.android.gms.common.stats;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fml;

public final class ConnectionEvent
  implements SafeParcelable
{
  public static final Parcelable.Creator<ConnectionEvent> CREATOR = new fml();
  final int a;
  private final long b;
  private int c;
  private final String d;
  private final String e;
  private final String f;
  private final String g;
  private final String h;
  private final String i;
  private final long j;
  private final long k;
  private long l;
  
  public ConnectionEvent(int paramInt1, long paramLong1, int paramInt2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong2, long paramLong3)
  {
    a = paramInt1;
    b = paramLong1;
    c = paramInt2;
    d = paramString1;
    e = paramString2;
    f = paramString3;
    g = paramString4;
    l = -1L;
    h = paramString5;
    i = paramString6;
    j = paramLong2;
    k = paramLong3;
  }
  
  public ConnectionEvent(long paramLong1, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong2, long paramLong3)
  {
    this(1, paramLong1, paramInt, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramLong2, paramLong3);
  }
  
  private long a()
  {
    return b;
  }
  
  private int b()
  {
    return c;
  }
  
  private String c()
  {
    return d;
  }
  
  private String d()
  {
    return e;
  }
  
  private String e()
  {
    return f;
  }
  
  private String f()
  {
    return g;
  }
  
  private String g()
  {
    return h;
  }
  
  private String h()
  {
    return i;
  }
  
  private long i()
  {
    return k;
  }
  
  private long j()
  {
    return j;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.a(paramParcel, 4, c());
    aal.a(paramParcel, 5, d());
    aal.a(paramParcel, 6, e());
    aal.a(paramParcel, 7, f());
    aal.a(paramParcel, 8, g());
    aal.a(paramParcel, 10, j());
    aal.a(paramParcel, 11, i());
    aal.c(paramParcel, 12, b());
    aal.a(paramParcel, 13, h());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.stats.ConnectionEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */