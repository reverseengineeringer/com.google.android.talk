package com.google.android.gms.people.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fmh;
import gpv;

public final class AvatarReference
  implements SafeParcelable
{
  public static final gpv CREATOR = new gpv();
  final int a;
  final String b;
  private final int c;
  
  public AvatarReference(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt2 != 0) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool);
      c = paramInt1;
      a = paramInt2;
      b = paramString;
      return;
    }
  }
  
  private int a()
  {
    return c;
  }
  
  private int b()
  {
    return a;
  }
  
  private String c()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return aal.c(this).a("source", Integer.valueOf(a)).a("location", b).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, b());
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, c());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.people.model.AvatarReference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */