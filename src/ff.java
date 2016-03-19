import android.database.ContentObserver;
import android.os.Handler;

public final class ff
  extends ContentObserver
{
  public ff(fe paramfe)
  {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public void onChange(boolean paramBoolean)
  {
    a.C();
  }
}

/* Location:
 * Qualified Name:     ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */