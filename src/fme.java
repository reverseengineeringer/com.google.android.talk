import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import java.lang.ref.WeakReference;

public class fme
  extends Binder
  implements fmd
{
  public final WeakReference<fiv> a;
  
  public fme()
  {
    attachInterface(this, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
  }
  
  public fme(fiv paramfiv)
  {
    this();
    a = new WeakReference(paramfiv);
  }
  
  public void a(ResolveAccountResponse paramResolveAccountResponse)
  {
    fiv localfiv = (fiv)a.get();
    if (localfiv == null) {
      return;
    }
    a.a(new fiz(this, localfiv, localfiv, paramResolveAccountResponse));
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
      paramParcel2.writeString("com.google.android.gms.common.internal.IResolveAccountCallbacks");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
    if (paramParcel1.readInt() != 0) {}
    for (paramParcel1 = (ResolveAccountResponse)ResolveAccountResponse.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
    {
      a(paramParcel1);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     fme
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */