import android.os.Binder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.herrevad.PredictedNetworkQuality;

public abstract class fzx
  extends Binder
  implements fzw
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.herrevad.internal.IConnectedNetworksQualityCallbacks");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.herrevad.internal.IConnectedNetworksQualityCallbacks");
    if (paramParcel1.readInt() != 0) {}
    for (paramParcel2 = (Status)Status.CREATOR.createFromParcel(paramParcel1);; paramParcel2 = null)
    {
      a(paramParcel2, paramParcel1.createTypedArrayList(PredictedNetworkQuality.CREATOR));
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     fzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */