package com.google.android.gms.maps.model;

import aal;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fxx;
import fxy;
import gjg;
import gko;

public final class GroundOverlayOptions
  implements SafeParcelable
{
  public static final gko CREATOR = new gko();
  private final int a;
  private gjg b;
  private LatLng c;
  private float d;
  private float e;
  private LatLngBounds f;
  private float g;
  private float h;
  private boolean i = true;
  private float j = 0.0F;
  private float k = 0.5F;
  private float l = 0.5F;
  
  public GroundOverlayOptions()
  {
    a = 1;
  }
  
  public GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    a = paramInt;
    b = new gjg(fxy.a(paramIBinder));
    c = paramLatLng;
    d = paramFloat1;
    e = paramFloat2;
    f = paramLatLngBounds;
    g = paramFloat3;
    h = paramFloat4;
    i = paramBoolean;
    j = paramFloat5;
    k = paramFloat6;
    l = paramFloat7;
  }
  
  private IBinder a()
  {
    return b.a().asBinder();
  }
  
  private int b()
  {
    return a;
  }
  
  private LatLng c()
  {
    return c;
  }
  
  private float d()
  {
    return d;
  }
  
  private float e()
  {
    return e;
  }
  
  private LatLngBounds f()
  {
    return f;
  }
  
  private float g()
  {
    return g;
  }
  
  private float h()
  {
    return h;
  }
  
  private float i()
  {
    return j;
  }
  
  private float j()
  {
    return k;
  }
  
  private float k()
  {
    return l;
  }
  
  private boolean l()
  {
    return i;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int m = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, b());
    aal.a(paramParcel, 2, a());
    aal.a(paramParcel, 3, c(), paramInt);
    aal.a(paramParcel, 4, d());
    aal.a(paramParcel, 5, e());
    aal.a(paramParcel, 6, f(), paramInt);
    aal.a(paramParcel, 7, g());
    aal.a(paramParcel, 8, h());
    aal.a(paramParcel, 9, l());
    aal.a(paramParcel, 10, i());
    aal.a(paramParcel, 11, j());
    aal.a(paramParcel, 12, k());
    aal.q(paramParcel, m);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */