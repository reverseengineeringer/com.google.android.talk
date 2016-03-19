package com.google.android.gms.googlehelp;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fzo;

public final class OfflineSuggestion
  implements SafeParcelable
{
  public static final Parcelable.Creator<OfflineSuggestion> CREATOR = new fzo();
  final int a;
  final String b;
  final String c;
  final String d;
  final String e;
  
  public OfflineSuggestion(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.a(paramParcel, 4, d);
    aal.a(paramParcel, 5, e);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.googlehelp.OfflineSuggestion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */