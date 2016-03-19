package com.google.android.gms.people.identity.internal;

import aal;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fmh;
import gnm;

public final class ParcelableListOptions
  implements SafeParcelable
{
  public static final gnm CREATOR = new gnm();
  final boolean a;
  final boolean b;
  final String c;
  final boolean d;
  final Bundle e;
  private final int f;
  
  public ParcelableListOptions(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString, Bundle paramBundle)
  {
    f = paramInt;
    a = paramBoolean1;
    b = paramBoolean2;
    c = paramString;
    d = paramBoolean3;
    paramString = paramBundle;
    if (paramBundle == null) {
      paramString = new Bundle();
    }
    e = paramString;
  }
  
  private int a()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return aal.c(this).a("useOfflineDatabase", Boolean.valueOf(a)).a("useWebData", Boolean.valueOf(b)).a("useCP2", Boolean.valueOf(d)).a("endpoint", c).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.a(paramParcel, 1, a);
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.a(paramParcel, 4, d);
    aal.a(paramParcel, 5, e);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.people.identity.internal.ParcelableListOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */