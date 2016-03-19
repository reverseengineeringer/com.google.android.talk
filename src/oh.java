import android.database.ContentObserver;
import android.os.Handler;

final class oh
  extends ContentObserver
{
  public oh(og paramog)
  {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public void onChange(boolean paramBoolean)
  {
    a.b();
  }
}

/* Location:
 * Qualified Name:     oh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */