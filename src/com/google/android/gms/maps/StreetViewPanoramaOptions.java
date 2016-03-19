package com.google.android.gms.maps;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import gld;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final gld CREATOR = new gld();
  private final int a;
  private StreetViewPanoramaCamera b;
  private String c;
  private LatLng d;
  private Integer e;
  private Boolean f = Boolean.valueOf(true);
  private Boolean g = Boolean.valueOf(true);
  private Boolean h = Boolean.valueOf(true);
  private Boolean i = Boolean.valueOf(true);
  private Boolean j;
  
  public StreetViewPanoramaOptions()
  {
    a = 1;
  }
  
  public StreetViewPanoramaOptions(int paramInt, StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5)
  {
    a = paramInt;
    b = paramStreetViewPanoramaCamera;
    d = paramLatLng;
    e = paramInteger;
    c = paramString;
    f = aal.a(paramByte1);
    g = aal.a(paramByte2);
    h = aal.a(paramByte3);
    i = aal.a(paramByte4);
    j = aal.a(paramByte5);
  }
  
  private int a()
  {
    return a;
  }
  
  private byte b()
  {
    return aal.a(f);
  }
  
  private byte c()
  {
    return aal.a(g);
  }
  
  private byte d()
  {
    return aal.a(h);
  }
  
  private byte e()
  {
    return aal.a(i);
  }
  
  private byte f()
  {
    return aal.a(j);
  }
  
  private StreetViewPanoramaCamera g()
  {
    return b;
  }
  
  private LatLng h()
  {
    return d;
  }
  
  private Integer i()
  {
    return e;
  }
  
  private String j()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int k = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, g(), paramInt);
    aal.a(paramParcel, 3, j());
    aal.a(paramParcel, 4, h(), paramInt);
    Integer localInteger = i();
    if (localInteger != null)
    {
      aal.b(paramParcel, 5, 4);
      paramParcel.writeInt(localInteger.intValue());
    }
    aal.a(paramParcel, 6, b());
    aal.a(paramParcel, 7, c());
    aal.a(paramParcel, 8, d());
    aal.a(paramParcel, 9, e());
    aal.a(paramParcel, 10, f());
    aal.q(paramParcel, k);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */