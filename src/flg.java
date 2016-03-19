import android.os.Bundle;
import android.os.IBinder;

public final class flg
  extends fly
{
  private flc a;
  private final int b;
  
  public flg(flc paramflc, int paramInt)
  {
    a = paramflc;
    b = paramInt;
  }
  
  public void a(int paramInt, Bundle paramBundle)
  {
    aal.b(a, "onAccountValidationComplete can be called only once per call to validateAccount");
    a.a(paramInt, paramBundle, b);
    a = null;
  }
  
  public void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    aal.b(a, "onPostInitComplete can be called only once per call to getRemoteService");
    a.a(paramInt, paramIBinder, paramBundle, b);
    a = null;
  }
}

/* Location:
 * Qualified Name:     flg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */