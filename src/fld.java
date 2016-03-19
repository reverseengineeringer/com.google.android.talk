import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

abstract class fld
  extends flf<Boolean>
{
  public final int a;
  public final Bundle b;
  
  protected fld(flc paramflc, int paramInt, Bundle paramBundle)
  {
    super(paramflc, Boolean.valueOf(true));
    a = paramInt;
    b = paramBundle;
  }
  
  protected abstract void a(ConnectionResult paramConnectionResult);
  
  protected void a(Boolean paramBoolean)
  {
    Object localObject = null;
    if (paramBoolean == null) {
      flc.a(c, 1);
    }
    do
    {
      return;
      switch (a)
      {
      default: 
        flc.a(c, 1);
        paramBoolean = (Boolean)localObject;
        if (b != null) {
          paramBoolean = (PendingIntent)b.getParcelable("pendingIntent");
        }
        a(new ConnectionResult(a, paramBoolean));
        return;
      }
    } while (a());
    flc.a(c, 1);
    a(new ConnectionResult(8, null));
    return;
    flc.a(c, 1);
    throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
  }
  
  protected abstract boolean a();
}

/* Location:
 * Qualified Name:     fld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */