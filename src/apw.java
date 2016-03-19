import android.net.Uri;
import java.io.File;

public final class apw<Data>
  implements apg<String, Data>
{
  private final apg<Uri, Data> a;
  
  public apw(apg<Uri, Data> paramapg)
  {
    a = paramapg;
  }
  
  private static Uri a(String paramString)
  {
    return Uri.fromFile(new File(paramString));
  }
}

/* Location:
 * Qualified Name:     apw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */