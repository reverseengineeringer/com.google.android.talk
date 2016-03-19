package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gkz;

public final class Tile
  implements SafeParcelable
{
  public static final gkz CREATOR = new gkz();
  public final int a;
  public final int b;
  public final byte[] c;
  private final int d;
  
  public Tile()
  {
    this(1, -1, -1, null);
  }
  
  public Tile(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    d = paramInt1;
    a = paramInt2;
    b = paramInt3;
    c = paramArrayOfByte;
  }
  
  private int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.c(paramParcel, 2, a);
    aal.c(paramParcel, 3, b);
    aal.a(paramParcel, 4, c);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.Tile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */