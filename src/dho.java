import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.MediaStore.Audio.Media;
import java.io.File;

public final class dho
  extends AsyncTask<Void, Void, Void>
{
  public dho(Context paramContext) {}
  
  private Void a()
  {
    Object localObject = a;
    try
    {
      ejs.a();
      localObject = ((Context)localObject).getCacheDir();
      new File((File)localObject, "telephony_brief_call_log").delete();
      new File((File)localObject, "telephony_brief_call_log_v2").delete();
      return null;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      for (;;)
      {
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("android.intent.action.MEDIA_SCANNER_FINISHED");
        localIntentFilter.addDataPath(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.getPath(), 0);
        localIntentFilter.addDataScheme(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.getScheme());
        ((Context)localObject).registerReceiver(new ejt(), localIntentFilter);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */