import android.app.Notification;
import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class ch
  extends Binder
  implements cg
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("android.support.v4.app.INotificationSideChannel");
      return true;
    case 1: 
      paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
      paramParcel2 = paramParcel1.readString();
      paramInt1 = paramParcel1.readInt();
      String str = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Notification)Notification.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        a(paramParcel2, paramInt1, str, paramParcel1);
        return true;
      }
    case 2: 
      paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
      a(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readString());
      return true;
    }
    paramParcel1.enforceInterface("android.support.v4.app.INotificationSideChannel");
    a(paramParcel1.readString());
    return true;
  }
}

/* Location:
 * Qualified Name:     ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */