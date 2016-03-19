package com.google.android.gms.location.internal;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import gek;
import java.util.Collections;
import java.util.List;

public class LocationRequestInternal
  implements SafeParcelable
{
  public static final gek CREATOR = new gek();
  public static final List<ClientIdentity> a = ;
  LocationRequest b;
  boolean c;
  boolean d;
  boolean e;
  List<ClientIdentity> f;
  final String g;
  boolean h;
  private final int i;
  
  public LocationRequestInternal(int paramInt, LocationRequest paramLocationRequest, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, List<ClientIdentity> paramList, String paramString, boolean paramBoolean4)
  {
    i = paramInt;
    b = paramLocationRequest;
    c = paramBoolean1;
    d = paramBoolean2;
    e = paramBoolean3;
    f = paramList;
    g = paramString;
    h = paramBoolean4;
  }
  
  int a()
  {
    return i;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationRequestInternal)) {}
    do
    {
      return false;
      paramObject = (LocationRequestInternal)paramObject;
    } while ((!aal.a(b, b)) || (c != c) || (d != d) || (e != e) || (h != h) || (!aal.a(f, f)));
    return true;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(b.toString());
    localStringBuilder.append(" requestNlpDebugInfo=");
    localStringBuilder.append(c);
    localStringBuilder.append(" restorePendingIntentListeners=");
    localStringBuilder.append(d);
    localStringBuilder.append(" triggerUpdate=");
    localStringBuilder.append(e);
    localStringBuilder.append(" hideFromAppOps=");
    localStringBuilder.append(h);
    localStringBuilder.append(" clients=");
    localStringBuilder.append(f);
    if (g != null)
    {
      localStringBuilder.append(" tag=");
      localStringBuilder.append(g);
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = aal.p(paramParcel, 20293);
    aal.a(paramParcel, 1, b, paramInt);
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, c);
    aal.a(paramParcel, 3, d);
    aal.a(paramParcel, 4, e);
    aal.c(paramParcel, 5, f);
    aal.a(paramParcel, 6, g);
    aal.a(paramParcel, 7, h);
    aal.q(paramParcel, j);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.LocationRequestInternal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */