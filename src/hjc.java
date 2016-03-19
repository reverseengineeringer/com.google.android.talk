import android.os.AsyncTask;
import java.io.IOException;

final class hjc
  extends AsyncTask<Void, Void, String>
{
  final hjb a;
  private final hca c;
  
  hjc(hiy paramhiy, hca paramhca, hjb paramhjb)
  {
    c = paramhca;
    a = paramhjb;
  }
  
  private String a()
  {
    try
    {
      String str = c.a(b.a, "oauth2:https://www.googleapis.com/auth/hangouts ");
      return str;
    }
    catch (IOException localIOException)
    {
      hlk.a(5, "vclib", "Failed to get credentials for user", localIOException);
      return null;
    }
    catch (fgj localfgj)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     hjc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */