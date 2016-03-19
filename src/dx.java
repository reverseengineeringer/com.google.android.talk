import android.app.Notification;
import android.app.NotificationManager;

class dx
  extends dw
{
  public void a(NotificationManager paramNotificationManager, String paramString, int paramInt)
  {
    paramNotificationManager.cancel(paramString, paramInt);
  }
  
  public void a(NotificationManager paramNotificationManager, String paramString, int paramInt, Notification paramNotification)
  {
    paramNotificationManager.notify(paramString, paramInt, paramNotification);
  }
}

/* Location:
 * Qualified Name:     dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */