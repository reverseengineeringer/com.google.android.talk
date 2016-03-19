import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

public final class fkw<T extends IInterface>
  extends flc<T>
{
  private final a e;
  
  public fkw(Context paramContext, Looper paramLooper, int paramInt, fif paramfif, fih paramfih, fkq paramfkq, a parama)
  {
    super(paramContext, paramLooper, paramInt, paramfkq, paramfif, paramfih);
    e = parama;
  }
  
  protected T a(IBinder paramIBinder)
  {
    return e.h();
  }
  
  protected String a()
  {
    return e.f();
  }
  
  protected String b()
  {
    return e.g();
  }
}

/* Location:
 * Qualified Name:     fkw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */