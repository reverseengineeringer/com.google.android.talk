package com.google.android.gms.location;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.internal.ParcelableGeofence;
import geu;
import java.util.List;

public class GeofencingRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GeofencingRequest> CREATOR = new geu();
  private final int a;
  private final List<ParcelableGeofence> b;
  private final int c;
  
  public GeofencingRequest(int paramInt1, List<ParcelableGeofence> paramList, int paramInt2)
  {
    a = paramInt1;
    b = paramList;
    c = paramInt2;
  }
  
  public int a()
  {
    return a;
  }
  
  public List<ParcelableGeofence> b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
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
    aal.c(paramParcel, 2, c());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */