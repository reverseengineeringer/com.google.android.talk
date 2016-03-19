import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class cas
  implements View.OnClickListener
{
  cas(car paramcar, String paramString) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.getContext();
    if (!((dcj)ilh.a(paramView, dcj.class)).a("android.permission.WRITE_EXTERNAL_STORAGE")) {
      Toast.makeText(paramView, "Can't access file, please go to Settings to turn on the Storage permission.", 0).show();
    }
    do
    {
      return;
      b.a.a();
      if ("load".equals(b.a.aj))
      {
        RealTimeChatService.d(a);
        return;
      }
    } while (!"email".equals(b.a.aj));
    paramView = b.a;
    String str = a;
    Resources localResources = paramView.getResources();
    Object localObject = String.valueOf(Environment.getExternalStorageDirectory());
    str = String.valueOf(localObject).length() + 8 + String.valueOf(str).length() + "file://" + (String)localObject + "/" + str;
    localObject = new Intent("android.intent.action.SEND");
    ((Intent)localObject).setType("application/octet-stream");
    ((Intent)localObject).putExtra("android.intent.extra.STREAM", Uri.parse(str));
    ((Intent)localObject).putExtra("android.intent.extra.SUBJECT", localResources.getString(StressMode.bK));
    paramView.getActivity().startActivity(Intent.createChooser((Intent)localObject, localResources.getString(StressMode.bJ)));
  }
}

/* Location:
 * Qualified Name:     cas
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */