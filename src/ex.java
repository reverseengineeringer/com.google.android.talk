import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;

final class ex
  extends ew
{
  public Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, gr paramgr)
  {
    if (paramgr != null) {}
    for (;;)
    {
      try
      {
        paramgr = paramgr.c();
        paramContentResolver = paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, (CancellationSignal)paramgr);
        return paramContentResolver;
      }
      catch (Exception paramContentResolver)
      {
        if (!(paramContentResolver instanceof OperationCanceledException)) {
          continue;
        }
        throw new gs();
        throw paramContentResolver;
      }
      paramgr = null;
    }
  }
}

/* Location:
 * Qualified Name:     ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */