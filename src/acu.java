import android.content.ContentResolver;
import android.net.Uri;
import java.io.InputStream;

public class acu
{
  public final ContentResolver a;
  public final Uri b;
  
  public acu(ContentResolver paramContentResolver, Uri paramUri)
  {
    a = paramContentResolver;
    b = paramUri;
  }
  
  public InputStream a()
  {
    return a.openInputStream(b);
  }
}

/* Location:
 * Qualified Name:     acu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */