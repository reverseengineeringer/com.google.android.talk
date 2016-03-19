package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gkn;

public final class CircleOptions
  implements SafeParcelable
{
  public static final gkn CREATOR = new gkn();
  private final int a;
  private LatLng b = null;
  private double c = 0.0D;
  private float d = 10.0F;
  private int e = -16777216;
  private int f = 0;
  private float g = 0.0F;
  private boolean h = true;
  
  public CircleOptions()
  {
    a = 1;
  }
  
  public CircleOptions(int paramInt1, LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean)
  {
    a = paramInt1;
    b = paramLatLng;
    c = paramDouble;
    d = paramFloat1;
    e = paramInt2;
    f = paramInt3;
    g = paramFloat2;
    h = paramBoolean;
  }
  
  private int a()
  {
    return a;
  }
  
  private LatLng b()
  {
    return b;
  }
  
  private double c()
  {
    return c;
  }
  
  private float d()
  {
    return d;
  }
  
  private int e()
  {
    return e;
  }
  
  private int f()
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
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, b(), paramInt);
    aal.a(paramParcel, 3, c());
    aal.a(paramParcel, 4, d());
    aal.c(paramParcel, 5, e());
    aal.c(paramParcel, 6, f());
    aal.a(paramParcel, 7, g());
    aal.a(paramParcel, 8, h());
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */