package com.google.android.gms.maps;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.CameraPosition;
import glc;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final glc CREATOR = new glc();
  private final int a;
  private Boolean b;
  private Boolean c;
  private int d = -1;
  private CameraPosition e;
  private Boolean f;
  private Boolean g;
  private Boolean h;
  private Boolean i;
  private Boolean j;
  private Boolean k;
  private Boolean l;
  private Boolean m;
  
  public GoogleMapOptions()
  {
    a = 1;
  }
  
  public GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10)
  {
    a = paramInt1;
    b = aal.a(paramByte1);
    c = aal.a(paramByte2);
    d = paramInt2;
    e = paramCameraPosition;
    f = aal.a(paramByte3);
    g = aal.a(paramByte4);
    h = aal.a(paramByte5);
    i = aal.a(paramByte6);
    j = aal.a(paramByte7);
    k = aal.a(paramByte8);
    l = aal.a(paramByte9);
    m = aal.a(paramByte10);
  }
  
  private int b()
  {
    return a;
  }
  
  private byte c()
  {
    return aal.a(b);
  }
  
  private byte d()
  {
    return aal.a(c);
  }
  
  private byte e()
  {
    return aal.a(f);
  }
  
  private byte f()
  {
    return aal.a(g);
  }
  
  private byte g()
  {
    return aal.a(h);
  }
  
  private byte h()
  {
    return aal.a(i);
  }
  
  private byte i()
  {
    return aal.a(j);
  }
  
  private byte j()
  {
    return aal.a(k);
  }
  
  private byte k()
  {
    return aal.a(l);
  }
  
  private byte l()
  {
    return aal.a(m);
  }
  
  private int m()
  {
    return d;
  }
  
  private CameraPosition n()
  {
    return e;
  }
  
  public GoogleMapOptions a()
  {
    l = Boolean.valueOf(true);
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int n = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, b());
    aal.a(paramParcel, 2, c());
    aal.a(paramParcel, 3, d());
    aal.c(paramParcel, 4, m());
    aal.a(paramParcel, 5, n(), paramInt);
    aal.a(paramParcel, 6, e());
    aal.a(paramParcel, 7, f());
    aal.a(paramParcel, 8, g());
    aal.a(paramParcel, 9, h());
    aal.a(paramParcel, 10, i());
    aal.a(paramParcel, 11, j());
    aal.a(paramParcel, 12, k());
    aal.a(paramParcel, 14, l());
    aal.q(paramParcel, n);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */