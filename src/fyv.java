import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.googlehelp.GoogleHelp;
import com.google.android.gms.googlehelp.internal.common.TogglingData;

final class fyv
  extends fyt
{
  fyv(fyw paramfyw) {}
  
  public void a(GoogleHelp paramGoogleHelp)
  {
    TogglingData localTogglingData;
    String str;
    int i;
    if (paramGoogleHelp.c() != null)
    {
      localTogglingData = paramGoogleHelp.c();
      Object localObject = a.i;
      str = ((Activity)localObject).getTitle().toString();
      i = ((Activity)localObject).getResources().getIdentifier("action_bar", "id", ((Activity)localObject).getPackageName());
      if (i == 0) {
        break label178;
      }
      localObject = (ViewGroup)((Activity)localObject).findViewById(i);
      if (localObject == null) {
        break label178;
      }
      i = 0;
      if (i >= ((ViewGroup)localObject).getChildCount()) {
        break label178;
      }
      View localView = ((ViewGroup)localObject).getChildAt(i);
      if (!(localView instanceof TextView)) {
        break label171;
      }
      str = ((TextView)localView).getText().toString();
    }
    label171:
    label178:
    for (;;)
    {
      localTogglingData.a(str);
      a.a.putExtra("EXTRA_GOOGLE_HELP", paramGoogleHelp).putExtra("EXTRA_START_TICK", System.nanoTime());
      a.i.startActivityForResult(a.a, 123);
      a.a(Status.a);
      return;
      i += 1;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     fyv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */