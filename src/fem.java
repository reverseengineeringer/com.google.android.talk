import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.phone.ViewVCardActivity;

final class fem
  implements View.OnClickListener
{
  fem(fel paramfel, bfd parambfd, av paramav) {}
  
  public void onClick(View paramView)
  {
    paramView = a;
    String str = c.a;
    Intent localIntent = new Intent(aal.oJ, ViewVCardActivity.class);
    if (paramView != null) {
      localIntent.putExtra("account_id", paramView.g());
    }
    localIntent.setData(Uri.parse(str));
    b.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     fem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */