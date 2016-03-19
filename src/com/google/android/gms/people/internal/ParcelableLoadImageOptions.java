package com.google.android.gms.people.internal;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fmh;
import gor;

public class ParcelableLoadImageOptions
  implements SafeParcelable
{
  public static final gor CREATOR = new gor();
  private final int a;
  private final int b;
  private final int c;
  private final boolean d;
  
  public ParcelableLoadImageOptions(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramBoolean;
  }
  
  public int a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return aal.c(this).a("imageSize", Integer.valueOf(b)).a("avatarOptions", Integer.valueOf(c)).a("useLargePictureForCp2Images", Boolean.valueOf(d)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, b());
    aal.c(paramParcel, 1000, a());
    aal.c(paramParcel, 2, c());
    aal.a(paramParcel, 3, d());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.people.internal.ParcelableLoadImageOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */