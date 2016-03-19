import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.google.android.apps.hangouts.conversation.v2.PreviewImageActivity;

public final class bre
  extends AsyncTask<Void, Integer, blb>
{
  final Uri a;
  final Context b;
  final int c;
  final ContentResolver d;
  
  public bre(PreviewImageActivity paramPreviewImageActivity, Context paramContext, int paramInt, Uri paramUri)
  {
    b = paramContext;
    a = paramUri;
    c = paramInt;
    d = paramContext.getContentResolver();
  }
}

/* Location:
 * Qualified Name:     bre
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */