import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import java.io.File;

final class bsf
  implements hsb
{
  bsf(bse parambse) {}
  
  public void onActivityResult(int paramInt, Intent paramIntent)
  {
    if (paramInt == -1)
    {
      paramIntent = Uri.fromFile(new File(Environment.getExternalStorageDirectory(), bmo.a(1)));
      paramIntent = bqt.a(a.context, paramIntent.toString());
      a.a.a(aal.jR, paramIntent);
      return;
    }
    ((bvc)a.binder.a(bvc.class)).a(2340);
  }
}

/* Location:
 * Qualified Name:     bsf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */