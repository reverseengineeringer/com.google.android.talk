import android.content.pm.PackageStats;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.concurrent.Semaphore;

public class f
  extends Binder
  implements e
{
  public final Semaphore a;
  public volatile PackageStats b;
  
  public f()
  {
    attachInterface(this, "android.content.pm.IPackageStatsObserver");
  }
  
  public f(byte paramByte)
  {
    this();
    a = new Semaphore(1);
  }
  
  public void a(PackageStats paramPackageStats, boolean paramBoolean)
  {
    if (paramBoolean) {
      b = paramPackageStats;
    }
    a.release();
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
      paramParcel2.writeString("android.content.pm.IPackageStatsObserver");
      return true;
    }
    paramParcel1.enforceInterface("android.content.pm.IPackageStatsObserver");
    PackageStats localPackageStats;
    if (paramParcel1.readInt() != 0)
    {
      localPackageStats = (PackageStats)PackageStats.CREATOR.createFromParcel(paramParcel1);
      if (paramParcel1.readInt() == 0) {
        break label103;
      }
    }
    label103:
    for (boolean bool = true;; bool = false)
    {
      a(localPackageStats, bool);
      paramParcel2.writeNoException();
      return true;
      localPackageStats = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */