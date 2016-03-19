package com.google.android.gms.location.places.internal;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fmh;
import geq;
import java.util.Arrays;
import java.util.List;

@Deprecated
public final class PlaceLocalization
  implements SafeParcelable
{
  public static final geq CREATOR = new geq();
  public final int a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final List<String> f;
  
  public PlaceLocalization(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, List<String> paramList)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof PlaceLocalization)) {
        return false;
      }
      paramObject = (PlaceLocalization)paramObject;
    } while ((aal.a(b, b)) && (aal.a(c, c)) && (aal.a(d, d)) && (aal.a(e, e)) && (aal.a(f, f)));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { b, c, d, e });
  }
  
  public String toString()
  {
    return aal.c(this).a("name", b).a("address", c).a("internationalPhoneNumber", d).a("regularOpenHours", e).a("attributions", f).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.a(paramParcel, 1, b);
    aal.c(paramParcel, 1000, a);
    aal.a(paramParcel, 2, c);
    aal.a(paramParcel, 3, d);
    aal.a(paramParcel, 4, e);
    aal.b(paramParcel, 5, f);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.PlaceLocalization
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */