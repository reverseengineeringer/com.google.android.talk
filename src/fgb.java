import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class fgb
  extends Binder
  implements fga
{
  public static fga a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.apps.tycho.IVoiceService");
    if ((localIInterface != null) && ((localIInterface instanceof fga))) {
      return (fga)localIInterface;
    }
    return new fgc(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.apps.tycho.IVoiceService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.apps.tycho.IVoiceService");
      paramInt1 = a();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.apps.tycho.IVoiceService");
      boolean bool = b();
      paramParcel2.writeNoException();
      if (bool) {}
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 3: 
      paramParcel1.enforceInterface("com.google.android.apps.tycho.IVoiceService");
      c();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.apps.tycho.IVoiceService");
    paramParcel2 = paramParcel1.readString();
    paramParcel1 = paramParcel1.readStrongBinder();
    if (paramParcel1 == null) {
      paramParcel1 = null;
    }
    for (;;)
    {
      a(paramParcel2, paramParcel1);
      return true;
      IInterface localIInterface = paramParcel1.queryLocalInterface("com.google.android.apps.tycho.IProxyNumberCallback");
      if ((localIInterface != null) && ((localIInterface instanceof ffx))) {
        paramParcel1 = (ffx)localIInterface;
      } else {
        paramParcel1 = new ffz(paramParcel1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     fgb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */