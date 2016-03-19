package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import atn;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gus;

public class AncsNotificationParcelable
  implements atn, SafeParcelable
{
  public static final Parcelable.Creator<AncsNotificationParcelable> CREATOR = new gus();
  final int a;
  private int b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final String g;
  private String h;
  private byte i;
  private byte j;
  private byte k;
  private byte l;
  
  public AncsNotificationParcelable(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4)
  {
    b = paramInt2;
    a = paramInt1;
    c = paramString1;
    d = paramString2;
    e = paramString3;
    f = paramString4;
    g = paramString5;
    h = paramString6;
    i = paramByte1;
    j = paramByte2;
    k = paramByte3;
    l = paramByte4;
  }
  
  public int a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (AncsNotificationParcelable)paramObject;
      if (l != l) {
        return false;
      }
      if (k != k) {
        return false;
      }
      if (j != j) {
        return false;
      }
      if (i != i) {
        return false;
      }
      if (b != b) {
        return false;
      }
      if (a != a) {
        return false;
      }
      if (!c.equals(c)) {
        return false;
      }
      if (d != null)
      {
        if (d.equals(d)) {}
      }
      else {
        while (d != null) {
          return false;
        }
      }
      if (!h.equals(h)) {
        return false;
      }
      if (!e.equals(e)) {
        return false;
      }
      if (!g.equals(g)) {
        return false;
      }
    } while (f.equals(f));
    return false;
  }
  
  public String g()
  {
    return e;
  }
  
  public String h()
  {
    return f;
  }
  
  public int hashCode()
  {
    int n = a;
    int i1 = b;
    int i2 = c.hashCode();
    if (d != null) {}
    for (int m = d.hashCode();; m = 0) {
      return ((((((((m + ((n * 31 + i1) * 31 + i2) * 31) * 31 + e.hashCode()) * 31 + f.hashCode()) * 31 + g.hashCode()) * 31 + h.hashCode()) * 31 + i) * 31 + j) * 31 + k) * 31 + l;
    }
  }
  
  public String i()
  {
    return g;
  }
  
  public String k()
  {
    if (h == null) {
      return c;
    }
    return h;
  }
  
  public byte l()
  {
    return i;
  }
  
  public byte m()
  {
    return j;
  }
  
  public byte n()
  {
    return k;
  }
  
  public byte o()
  {
    return l;
  }
  
  public String toString()
  {
    return "AncsNotificationParcelable{mVersionCode=" + a + ", mId=" + b + ", mAppId='" + c + '\'' + ", mDateTime='" + d + '\'' + ", mNotificationText='" + e + '\'' + ", mTitle='" + f + '\'' + ", mSubtitle='" + g + '\'' + ", mDisplayName='" + h + '\'' + ", mEventId=" + i + ", mEventFlags=" + j + ", mCategoryId=" + k + ", mCategoryCount=" + l + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 2, a());
    aal.a(paramParcel, 3, b());
    aal.a(paramParcel, 4, c());
    aal.a(paramParcel, 5, g());
    aal.a(paramParcel, 6, h());
    aal.a(paramParcel, 7, i());
    aal.a(paramParcel, 8, k());
    aal.a(paramParcel, 9, l());
    aal.a(paramParcel, 10, m());
    aal.a(paramParcel, 11, n());
    aal.a(paramParcel, 12, o());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.AncsNotificationParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */