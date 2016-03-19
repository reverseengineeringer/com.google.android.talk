package com.google.android.gms.maps.model;

import aal;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gjj;
import gjk;
import gkj;
import gkl;
import gla;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final gla CREATOR = new gla();
  private final int a;
  private gkj b;
  private gjk c;
  private boolean d = true;
  private float e;
  private boolean f = true;
  
  public TileOverlayOptions()
  {
    a = 1;
  }
  
  public TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    a = paramInt;
    if (paramIBinder == null)
    {
      paramIBinder = null;
      b = paramIBinder;
      if (b != null) {
        break label110;
      }
    }
    label110:
    for (paramIBinder = (IBinder)localObject;; paramIBinder = new gjj(this))
    {
      c = paramIBinder;
      d = paramBoolean1;
      e = paramFloat;
      f = paramBoolean2;
      return;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
      if ((localIInterface != null) && ((localIInterface instanceof gkj)))
      {
        paramIBinder = (gkj)localIInterface;
        break;
      }
      paramIBinder = new gkl(paramIBinder);
      break;
    }
  }
  
  private int a()
  {
    return a;
  }
  
  private IBinder b()
  {
    return b.asBinder();
  }
  
  private float c()
  {
    return e;
  }
  
  private boolean d()
  {
    return d;
  }
  
  private boolean e()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, b());
    aal.a(paramParcel, 3, d());
    aal.a(paramParcel, 4, c());
    aal.a(paramParcel, 5, e());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */