package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gku;
import java.util.ArrayList;
import java.util.List;

public final class PolylineOptions
  implements SafeParcelable
{
  public static final gku CREATOR = new gku();
  private final int a;
  private final List<LatLng> b;
  private float c = 10.0F;
  private int d = -16777216;
  private float e = 0.0F;
  private boolean f = true;
  private boolean g = false;
  
  public PolylineOptions()
  {
    a = 1;
    b = new ArrayList();
  }
  
  public PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramInt1;
    b = paramList;
    c = paramFloat1;
    d = paramInt2;
    e = paramFloat2;
    f = paramBoolean1;
    g = paramBoolean2;
  }
  
  private int a()
  {
    return a;
  }
  
  private List<LatLng> b()
  {
    return b;
  }
  
  private float c()
  {
    return c;
  }
  
  private int d()
  {
    return d;
  }
  
  private float e()
  {
    return e;
  }
  
  private boolean f()
  {
    return f;
  }
  
  private boolean g()
  {
    return g;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.c(paramParcel, 2, b());
    aal.a(paramParcel, 3, c());
    aal.c(paramParcel, 4, d());
    aal.a(paramParcel, 5, e());
    aal.a(paramParcel, 6, f());
    aal.a(paramParcel, 7, g());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */