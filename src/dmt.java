import android.content.Context;
import com.google.api.client.http.GenericUrl;
import java.util.Locale;

public abstract class dmt
  extends dpf
{
  private static final long serialVersionUID = 1L;
  
  public String a()
  {
    return "ui_queue";
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return false;
  }
  
  public GenericUrl b(Context paramContext)
  {
    String str = aal.a(paramContext, "babel_google_voice_api_key", "AIzaSyAMX775bK7F5ciFA6w9pXNJyvzqcSPeHH0");
    paramContext = super.b(paramContext);
    paramContext.put("key", str);
    paramContext.put("locale", Locale.getDefault().toString());
    return paramContext;
  }
  
  protected efh g()
  {
    return efh.e;
  }
}

/* Location:
 * Qualified Name:     dmt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */