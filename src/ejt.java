import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.MediaStore.Audio.Media;

public final class ejt
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.equals(paramIntent.getData()))
    {
      paramContext.unregisterReceiver(this);
      ejs.a();
    }
  }
}

/* Location:
 * Qualified Name:     ejt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */