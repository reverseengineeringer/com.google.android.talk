import android.app.PendingIntent;
import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class fgh
  extends Binder
  implements fgg
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.dialer.incallui.IInCallUiControllerService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.dialer.incallui.IInCallUiControllerService");
      paramInt1 = a();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.dialer.incallui.IInCallUiControllerService");
    if (paramParcel1.readInt() != 0) {}
    for (paramParcel1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
    {
      a(paramParcel1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     fgh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */