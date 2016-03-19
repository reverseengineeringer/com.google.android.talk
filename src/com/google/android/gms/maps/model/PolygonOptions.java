package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gkt;
import java.util.ArrayList;
import java.util.List;

public final class PolygonOptions
  implements SafeParcelable
{
  public static final gkt CREATOR = new gkt();
  private final int a;
  private final List<LatLng> b;
  private final List<List<LatLng>> c;
  private float d = 10.0F;
  private int e = -16777216;
  private int f = 0;
  private float g = 0.0F;
  private boolean h = true;
  private boolean i = false;
  
  public PolygonOptions()
  {
    a = 1;
    b = new ArrayList();
    c = new ArrayList();
  }
  
  public PolygonOptions(int paramInt1, List<LatLng> paramList, List paramList1, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramInt1;
    b = paramList;
    c = paramList1;
    d = paramFloat1;
    e = paramInt2;
    f = paramInt3;
    g = paramFloat2;
    h = paramBoolean1;
    i = paramBoolean2;
  }
  
  private int a()
  {
    return a;
  }
  
  private List b()
  {
    return c;
  }
  
  private List<LatLng> c()
  {
    return b;
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
  
  private boolean i()
  {
    return i;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.c(paramParcel, 2, c());
    List localList = b();
    if (localList != null)
    {
      int j = aal.p(paramParcel, 3);
      paramParcel.writeList(localList);
      aal.q(paramParcel, j);
    }
    aal.a(paramParcel, 4, d());
    aal.c(paramParcel, 5, e());
    aal.c(paramParcel, 6, f());
    aal.a(paramParcel, 7, g());
    aal.a(paramParcel, 8, h());
    aal.a(paramParcel, 9, i());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */