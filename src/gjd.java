import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class gjd
  extends Binder
  implements gjc
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bitmap)Bitmap.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
      }
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    a(fxy.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     gjd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */