package com.google.android.gms.googlehelp.internal.common;

import aal;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fzf;

public final class OverflowMenuItem
  implements SafeParcelable
{
  public static final Parcelable.Creator<OverflowMenuItem> CREATOR = new fzf();
  final int a;
  final int b;
  final String c;
  final Intent d;
  
  public OverflowMenuItem(int paramInt1, int paramInt2, String paramString, Intent paramIntent)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramString;
    d = paramIntent;
  }
  
  public OverflowMenuItem(int paramInt, String paramString, Intent paramIntent)
  {
    this(1, paramInt, paramString, paramIntent);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.a(paramParcel, 4, d, paramInt);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.googlehelp.internal.common.OverflowMenuItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */