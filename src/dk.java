import android.app.Notification;

public class dk
{
  cy d;
  CharSequence e;
  CharSequence f;
  boolean g = false;
  
  public Notification a()
  {
    Notification localNotification = null;
    if (d != null) {
      localNotification = d.g();
    }
    return localNotification;
  }
  
  public void a(cy paramcy)
  {
    if (d != paramcy)
    {
      d = paramcy;
      if (d != null) {
        d.a(this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */