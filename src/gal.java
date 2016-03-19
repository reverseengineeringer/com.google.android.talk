import android.os.Binder;
import android.os.Bundle;
import android.os.Parcel;

public abstract class gal
  extends Binder
  implements gak
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.http.IGoogleHttpService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.http.IGoogleHttpService");
      paramParcel1 = a(paramParcel1.readString());
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.http.IGoogleHttpService");
    a(paramParcel1.readString(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     gal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */