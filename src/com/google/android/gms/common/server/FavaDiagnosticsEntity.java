package com.google.android.gms.common.server;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fmk;

public class FavaDiagnosticsEntity
  implements SafeParcelable
{
  public static final fmk CREATOR = new fmk();
  final int a;
  public final String b;
  public final int c;
  
  public FavaDiagnosticsEntity(int paramInt1, String paramString, int paramInt2)
  {
    a = paramInt1;
    b = paramString;
    c = paramInt2;
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
    aal.c(paramParcel, 3, c);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.server.FavaDiagnosticsEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */