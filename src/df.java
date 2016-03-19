import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;

final class df
  extends dc
{
  public Notification a(cy paramcy)
  {
    Notification localNotification = B;
    localNotification.setLatestEventInfo(a, b, c, d);
    Context localContext = a;
    CharSequence localCharSequence1 = b;
    CharSequence localCharSequence2 = c;
    PendingIntent localPendingIntent1 = d;
    PendingIntent localPendingIntent2 = e;
    localNotification.setLatestEventInfo(localContext, localCharSequence1, localCharSequence2, localPendingIntent1);
    fullScreenIntent = localPendingIntent2;
    if (j > 0) {
      flags |= 0x80;
    }
    return localNotification;
  }
}

/* Location:
 * Qualified Name:     df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */