package com.google.android.gms.location.copresence.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gdr;

public final class CopresenceApiOptions
  implements SafeParcelable
{
  public static final Parcelable.Creator<CopresenceApiOptions> CREATOR = new gdr();
  public static final CopresenceApiOptions a = new CopresenceApiOptions();
  final int b;
  public final boolean c;
  public final String d;
  
  private CopresenceApiOptions()
  {
    this(1, true, null);
  }
  
  public CopresenceApiOptions(int paramInt, boolean paramBoolean, String paramString)
  {
    b = paramInt;
    c = paramBoolean;
    d = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, b);
    aal.a(paramParcel, 2, c);
    aal.a(paramParcel, 3, d);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.copresence.internal.CopresenceApiOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */