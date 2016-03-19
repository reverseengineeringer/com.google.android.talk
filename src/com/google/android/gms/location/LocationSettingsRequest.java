package com.google.android.gms.location;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gfd;
import java.util.Collections;
import java.util.List;

public final class LocationSettingsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new gfd();
  private final int a;
  private final List<LocationRequest> b;
  private final boolean c;
  private final boolean d;
  private final boolean e;
  
  public LocationSettingsRequest(int paramInt, List<LocationRequest> paramList, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    a = paramInt;
    b = paramList;
    c = paramBoolean1;
    d = paramBoolean2;
    e = paramBoolean3;
  }
  
  private int a()
  {
    return a;
  }
  
  private List<LocationRequest> b()
  {
    return Collections.unmodifiableList(b);
  }
  
  private boolean c()
  {
    return c;
  }
  
  private boolean d()
  {
    return d;
  }
  
  private boolean e()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, b());
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, c());
    aal.a(paramParcel, 3, d());
    aal.a(paramParcel, 4, e());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */