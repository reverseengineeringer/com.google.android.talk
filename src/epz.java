import android.content.Context;
import android.content.Intent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;
import com.google.android.apps.hangouts.statusmessage.impl.StatusMessageSettingsFragment;
import java.util.concurrent.TimeUnit;

final class epz
  extends byp<dpw, dsv>
{
  private final Context e;
  private final String f;
  
  public epz(epv paramepv, Context paramContext, String paramString)
  {
    e = paramContext;
    f = paramString;
  }
  
  private void k()
  {
    Intent localIntent = new Intent(e, RequestWriter.class);
    localIntent.putExtra("cancel_class", e().getName());
    localIntent.putExtra("cancel_request", f);
    e.startService(localIntent);
  }
  
  public String a()
  {
    return e.getString(StressMode.st);
  }
  
  public int b()
  {
    Object localObject = d.c;
    String str = f;
    if (RealTimeChatService.b()) {
      return RealTimeChatService.d().a(new ecu((bfd)localObject, str)).a();
    }
    localObject = RealTimeChatService.a(((bfd)localObject).g(), 192);
    ((Intent)localObject).putExtra("status_message", str);
    return RealTimeChatService.b((Intent)localObject, kmm.a);
  }
  
  public void c()
  {
    k();
    Toast.makeText(e, StressMode.ke, 0).show();
  }
  
  public void d()
  {
    d.d.a(d.c.g(), d.c.b().a, dnv.c, f);
    epv localepv = d;
    ((InputMethodManager)a.getSystemService("input_method")).hideSoftInputFromWindow(e.getWindowToken(), 0);
    b.getActivity().finish();
  }
  
  public Class<dpw> e()
  {
    return dpw.class;
  }
  
  public Class<dsv> f()
  {
    return dsv.class;
  }
  
  public void h()
  {
    k();
    super.h();
  }
  
  protected int i()
  {
    return (int)TimeUnit.SECONDS.toMillis(3L);
  }
}

/* Location:
 * Qualified Name:     epz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */