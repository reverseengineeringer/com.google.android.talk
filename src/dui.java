import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.google.android.apps.hangouts.quickreply.impl.QuickReplyActivity;

public final class dui
  implements View.OnClickListener
{
  public dui(QuickReplyActivity paramQuickReplyActivity, EditText paramEditText, PendingIntent paramPendingIntent) {}
  
  public void onClick(View paramView)
  {
    try
    {
      Object localObject = a.getText().toString().trim();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        paramView = new Intent();
        paramView.putExtra("android.intent.extra.TEXT", (String)localObject);
        localObject = new Intent();
        ((Intent)localObject).putExtra("share_intent", paramView);
        b.send(c, 0, (Intent)localObject);
      }
      for (;;)
      {
        c.finish();
        return;
        b.send();
      }
      return;
    }
    catch (PendingIntent.CanceledException paramView) {}
  }
}

/* Location:
 * Qualified Name:     dui
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */