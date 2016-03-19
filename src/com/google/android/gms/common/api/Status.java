package com.google.android.gms.common.api;

import aal;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fim;
import fjy;
import fmh;
import java.util.Arrays;

public final class Status
  implements SafeParcelable, fim
{
  public static final Parcelable.Creator<Status> CREATOR = new fjy();
  public static final Status a = new Status(0);
  public static final Status b = new Status(14);
  public static final Status c = new Status(8);
  public static final Status d = new Status(15);
  public static final Status e = new Status(16);
  private final int f;
  private final int g;
  private final String h;
  private final PendingIntent i;
  
  public Status(int paramInt)
  {
    this(paramInt, null);
  }
  
  public Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    f = paramInt1;
    g = paramInt2;
    h = paramString;
    i = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString)
  {
    this(1, paramInt, paramString, null);
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  private PendingIntent c()
  {
    return i;
  }
  
  private String d()
  {
    return h;
  }
  
  private int e()
  {
    return f;
  }
  
  public boolean a()
  {
    return g <= 0;
  }
  
  public int b()
  {
    return g;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status)) {}
    do
    {
      return false;
      paramObject = (Status)paramObject;
    } while ((f != f) || (g != g) || (!aal.a(h, h)) || (!aal.a(i, i)));
    return true;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(f), Integer.valueOf(g), h, i });
  }
  
  public Status j()
  {
    return this;
  }
  
  public String toString()
  {
    fmh localfmh = aal.c(this);
    if (h != null) {}
    for (String str = h;; str = aal.n(g)) {
      return localfmh.a("statusCode", str).a("resolution", i).toString();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, b());
    aal.c(paramParcel, 1000, e());
    aal.a(paramParcel, 2, d());
    aal.a(paramParcel, 3, c(), paramInt);
    aal.q(paramParcel, j);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */