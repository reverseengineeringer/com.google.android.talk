import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class gct
  extends Binder
  implements gcs
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    String str = null;
    Object localObject = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.mdm.internal.INetworkQualityService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.mdm.internal.INetworkQualityService");
      str = paramParcel1.readString();
      if (paramParcel1.readInt() != 0)
      {
        localObject = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label140;
        }
      }
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        a(str, (Bundle)localObject, paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject = null;
        break;
      }
    case 2: 
      label140:
      paramParcel1.enforceInterface("com.google.android.gms.mdm.internal.INetworkQualityService");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = (Parcel)localObject;
      }
      for (;;)
      {
        a(paramParcel1);
        paramParcel2.writeNoException();
        return true;
        localObject = paramParcel1.queryLocalInterface("com.google.android.gms.herrevad.internal.IActiveNetworkQualityCallbacks");
        if ((localObject != null) && ((localObject instanceof fzt))) {
          paramParcel1 = (fzt)localObject;
        } else {
          paramParcel1 = new fzv(paramParcel1);
        }
      }
    }
    paramParcel1.enforceInterface("com.google.android.gms.mdm.internal.INetworkQualityService");
    paramParcel1 = paramParcel1.readStrongBinder();
    if (paramParcel1 == null) {
      paramParcel1 = str;
    }
    for (;;)
    {
      a(paramParcel1);
      paramParcel2.writeNoException();
      return true;
      localObject = paramParcel1.queryLocalInterface("com.google.android.gms.herrevad.internal.IConnectedNetworksQualityCallbacks");
      if ((localObject != null) && ((localObject instanceof fzw))) {
        paramParcel1 = (fzw)localObject;
      } else {
        paramParcel1 = new fzy(paramParcel1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     gct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */