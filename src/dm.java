import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public final class dm
  implements cr, cs
{
  private Notification.Builder a;
  private Bundle b;
  
  public dm(Context paramContext, Notification paramNotification, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt4, CharSequence paramCharSequence4, boolean paramBoolean4, ArrayList<String> paramArrayList, Bundle paramBundle, String paramString1, boolean paramBoolean5, String paramString2)
  {
    paramContext = new Notification.Builder(paramContext).setWhen(when).setShowWhen(paramBoolean2).setSmallIcon(icon, iconLevel).setContent(contentView).setTicker(tickerText, paramRemoteViews).setSound(sound, audioStreamType).setVibrate(vibrate).setLights(ledARGB, ledOnMS, ledOffMS);
    if ((flags & 0x2) != 0)
    {
      paramBoolean2 = true;
      paramContext = paramContext.setOngoing(paramBoolean2);
      if ((flags & 0x8) == 0) {
        break label327;
      }
      paramBoolean2 = true;
      label117:
      paramContext = paramContext.setOnlyAlertOnce(paramBoolean2);
      if ((flags & 0x10) == 0) {
        break label333;
      }
      paramBoolean2 = true;
      label137:
      paramContext = paramContext.setAutoCancel(paramBoolean2).setDefaults(defaults).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2).setSubText(paramCharSequence4).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1).setDeleteIntent(deleteIntent);
      if ((flags & 0x80) == 0) {
        break label339;
      }
    }
    label327:
    label333:
    label339:
    for (paramBoolean2 = true;; paramBoolean2 = false)
    {
      a = paramContext.setFullScreenIntent(paramPendingIntent2, paramBoolean2).setLargeIcon(paramBitmap).setNumber(paramInt1).setUsesChronometer(paramBoolean3).setPriority(paramInt4).setProgress(paramInt2, paramInt3, paramBoolean1).setLocalOnly(paramBoolean4).setGroup(paramString1).setGroupSummary(paramBoolean5).setSortKey(paramString2);
      b = new Bundle();
      if (paramBundle != null) {
        b.putAll(paramBundle);
      }
      if ((paramArrayList != null) && (!paramArrayList.isEmpty())) {
        b.putStringArray("android.people", (String[])paramArrayList.toArray(new String[paramArrayList.size()]));
      }
      return;
      paramBoolean2 = false;
      break;
      paramBoolean2 = false;
      break label117;
      paramBoolean2 = false;
      break label137;
    }
  }
  
  public Notification.Builder a()
  {
    return a;
  }
  
  public void a(do paramdo)
  {
    aal.a(a, paramdo);
  }
  
  public Notification b()
  {
    a.setExtras(b);
    return a.build();
  }
}

/* Location:
 * Qualified Name:     dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */