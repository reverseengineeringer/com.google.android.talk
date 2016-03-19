package com.google.android.gms.location;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fim;
import gfe;

public final class LocationSettingsResult
  implements SafeParcelable, fim
{
  public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new gfe();
  private final int a;
  private final Status b;
  private final LocationSettingsStates c;
  
  public LocationSettingsResult(int paramInt, Status paramStatus, LocationSettingsStates paramLocationSettingsStates)
  {
    a = paramInt;
    b = paramStatus;
    c = paramLocationSettingsStates;
  }
  
  private int a()
  {
    return a;
  }
  
  private LocationSettingsStates b()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Status j()
  {
    return b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.a(paramParcel, 1, j(), paramInt);
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, b(), paramInt);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */