package com.google.android.gms.iid;

import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import gat;
import gaw;
import gay;

public class MessengerCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MessengerCompat> CREATOR = new gat();
  Messenger a;
  gaw b;
  
  public MessengerCompat(IBinder paramIBinder)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new Messenger(paramIBinder);
      return;
    }
    if (paramIBinder == null) {
      paramIBinder = null;
    }
    for (;;)
    {
      b = paramIBinder;
      return;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.iid.IMessengerCompat");
      if ((localIInterface != null) && ((localIInterface instanceof gaw))) {
        paramIBinder = (gaw)localIInterface;
      } else {
        paramIBinder = new gay(paramIBinder);
      }
    }
  }
  
  public IBinder a()
  {
    if (a != null) {
      return a.getBinder();
    }
    return b.asBinder();
  }
  
  public void a(Message paramMessage)
  {
    if (a != null)
    {
      a.send(paramMessage);
      return;
    }
    b.a(paramMessage);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    try
    {
      boolean bool = a().equals(((MessengerCompat)paramObject).a());
      return bool;
    }
    catch (ClassCastException paramObject) {}
    return false;
  }
  
  public int hashCode()
  {
    return a().hashCode();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a != null)
    {
      paramParcel.writeStrongBinder(a.getBinder());
      return;
    }
    paramParcel.writeStrongBinder(b.asBinder());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.MessengerCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */