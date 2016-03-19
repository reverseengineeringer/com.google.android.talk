import android.content.Context;
import android.widget.Toast;
import java.io.File;

public final class dhl
  implements bwb
{
  public void a(Context paramContext)
  {
    Toast.makeText(paramContext, "Dumping database, please wait", 0).show();
    File localFile = aal.c(paramContext, ((hpu)ilh.a(paramContext, hpu.class)).a());
    if (localFile == null)
    {
      Toast.makeText(paramContext, "Could not dump database", 0).show();
      return;
    }
    Toast.makeText(paramContext, "Database dumped", 0).show();
    aal.a(paramContext, localFile);
  }
  
  public boolean a(String paramString)
  {
    return "dumpdb".equals(paramString);
  }
}

/* Location:
 * Qualified Name:     dhl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */