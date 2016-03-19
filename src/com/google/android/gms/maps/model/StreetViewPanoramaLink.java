package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fmh;
import gkw;
import java.util.Arrays;

public class StreetViewPanoramaLink
  implements SafeParcelable
{
  public static final gkw CREATOR = new gkw();
  public final String a;
  public final float b;
  private final int c;
  
  public StreetViewPanoramaLink(int paramInt, String paramString, float paramFloat)
  {
    c = paramInt;
    a = paramString;
    float f = paramFloat;
    if (paramFloat <= 0.0D) {
      f = paramFloat % 360.0F + 360.0F;
    }
    b = (f % 360.0F);
  }
  
  int a()
  {
    return c;
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
      if (!(paramObject instanceof StreetViewPanoramaLink)) {
        return false;
      }
      paramObject = (StreetViewPanoramaLink)paramObject;
    } while ((a.equals(a)) && (Float.floatToIntBits(b) == Float.floatToIntBits(b)));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, Float.valueOf(b) });
  }
  
  public String toString()
  {
    return aal.c(this).a("panoId", a).a("bearing", Float.valueOf(b)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, a);
    aal.a(paramParcel, 3, b);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLink
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */