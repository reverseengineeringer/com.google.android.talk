import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;

public class fgz
  extends Binder
  implements fgy
{
  public fgz()
  {
    attachInterface(this, "com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
  }
  
  fgz(fhl paramfhl)
  {
    this();
  }
  
  public void a(Status paramStatus)
  {
    a.a(paramStatus);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
    if (paramParcel1.readInt() != 0) {}
    for (paramParcel1 = (Status)Status.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
    {
      a(paramParcel1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     fgz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */