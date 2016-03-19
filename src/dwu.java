import android.content.Context;
import android.os.AsyncTask;
import java.io.IOException;

final class dwu
  extends AsyncTask<Void, Void, Void>
{
  dwu(Context paramContext) {}
  
  private Void a()
  {
    try
    {
      String str = ((gzg)ilh.a(a, gzg.class)).a("366187734148");
      dwt.a().a(str);
      return null;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        ezi.c("BabelGcmRegistration", "Error registering for GCM", localIOException);
        dwt.a().i();
      }
    }
  }
}

/* Location:
 * Qualified Name:     dwu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */