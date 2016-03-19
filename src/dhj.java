import android.content.Context;
import android.widget.Toast;
import java.io.File;

public final class dhj
  implements bwb
{
  public void a(Context paramContext)
  {
    Toast.makeText(paramContext, "Dumping accounts.xml, please wait", 0).show();
    File localFile = aal.d(paramContext);
    Toast.makeText(paramContext, "accounts.xml dumped", 0).show();
    aal.a(paramContext, localFile);
  }
  
  public boolean a(String paramString)
  {
    return "dumpaccounts".equals(paramString);
  }
}

/* Location:
 * Qualified Name:     dhj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */