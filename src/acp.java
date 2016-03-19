import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;

public final class acp
  extends ez
{
  private final Uri w;
  private final String[] x;
  
  public acp(Context paramContext, Uri paramUri, String[] paramArrayOfString)
  {
    super(paramContext);
    w = paramUri;
    if (paramArrayOfString != null) {}
    for (;;)
    {
      x = paramArrayOfString;
      return;
      paramArrayOfString = acq.a;
    }
  }
  
  public Cursor h()
  {
    a(w.buildUpon().appendQueryParameter("contentType", "image/").build());
    a(x);
    return super.h();
  }
}

/* Location:
 * Qualified Name:     acp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */