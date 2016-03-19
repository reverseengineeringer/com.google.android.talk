import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;

final class eyo<T>
  extends Binder
  implements IInterface
{
  T a;
  
  eyo(T paramT)
  {
    a = paramT;
  }
  
  public IBinder asBinder()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     eyo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */