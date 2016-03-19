package com.google.android.gms.location;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gff;

public final class LocationSettingsStates
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new gff();
  private final int a;
  private final boolean b;
  private final boolean c;
  private final boolean d;
  private final boolean e;
  private final boolean f;
  private final boolean g;
  private final boolean h;
  
  public LocationSettingsStates(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7)
  {
    a = paramInt;
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramBoolean3;
    e = paramBoolean4;
    f = paramBoolean5;
    g = paramBoolean6;
    h = paramBoolean7;
  }
  
  private int a()
  {
    return a;
  }
  
  private boolean b()
  {
    return b;
  }
  
  private boolean c()
  {
    return e;
  }
  
  private boolean d()
  {
    return c;
  }
  
  private boolean e()
  {
    return f;
  }
  
  private boolean f()
  {
    return d;
  }
  
  private boolean g()
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
    paramInt = aal.p(paramParcel, 20293);
    aal.a(paramParcel, 1, b());
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, d());
    aal.a(paramParcel, 3, f());
    aal.a(paramParcel, 4, c());
    aal.a(paramParcel, 5, e());
    aal.a(paramParcel, 6, g());
    aal.a(paramParcel, 7, h());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsStates
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */