import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class czg
  implements View.OnClickListener
{
  czg(czf paramczf, Uri paramUri) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.VIEW");
    paramView.setData(a);
    b.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     czg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */