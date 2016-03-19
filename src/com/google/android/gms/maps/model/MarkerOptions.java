package com.google.android.gms.maps.model;

import aal;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fxx;
import fxy;
import gjg;
import gkr;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final gkr CREATOR = new gkr();
  private final int a;
  private LatLng b;
  private String c;
  private String d;
  private gjg e;
  private float f = 0.5F;
  private float g = 1.0F;
  private boolean h;
  private boolean i = true;
  private boolean j = false;
  private float k = 0.0F;
  private float l = 0.5F;
  private float m = 0.0F;
  private float n = 1.0F;
  
  public MarkerOptions()
  {
    a = 1;
  }
  
  public MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    a = paramInt;
    b = paramLatLng;
    c = paramString1;
    d = paramString2;
    if (paramIBinder == null) {}
    for (paramLatLng = null;; paramLatLng = new gjg(fxy.a(paramIBinder)))
    {
      e = paramLatLng;
      f = paramFloat1;
      g = paramFloat2;
      h = paramBoolean1;
      i = paramBoolean2;
      j = paramBoolean3;
      k = paramFloat3;
      l = paramFloat4;
      m = paramFloat5;
      n = paramFloat6;
      return;
    }
  }
  
  private int a()
  {
    return a;
  }
  
  private IBinder b()
  {
    if (e == null) {
      return null;
    }
    return e.a().asBinder();
  }
  
  private LatLng c()
  {
    return b;
  }
  
  private String d()
  {
    return c;
  }
  
  private String e()
  {
    return d;
  }
  
  private float f()
  {
    return f;
  }
  
  private float g()
  {
    return g;
  }
  
  private boolean h()
  {
    return h;
  }
  
  private boolean i()
  {
    return i;
  }
  
  private boolean j()
  {
    return j;
  }
  
  private float k()
  {
    return k;
  }
  
  private float l()
  {
    return l;
  }
  
  private float m()
  {
    return m;
  }
  
  private float n()
  {
    return n;
  }
  
  public MarkerOptions a(LatLng paramLatLng)
  {
    b = paramLatLng;
    return this;
  }
  
  public MarkerOptions a(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public MarkerOptions b(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, c(), paramInt);
    aal.a(paramParcel, 3, d());
    aal.a(paramParcel, 4, e());
    aal.a(paramParcel, 5, b());
    aal.a(paramParcel, 6, f());
    aal.a(paramParcel, 7, g());
    aal.a(paramParcel, 8, h());
    aal.a(paramParcel, 9, i());
    aal.a(paramParcel, 10, j());
    aal.a(paramParcel, 11, k());
    aal.a(paramParcel, 12, l());
    aal.a(paramParcel, 13, m());
    aal.a(paramParcel, 14, n());
    aal.q(paramParcel, i1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */