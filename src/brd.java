import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.conversation.v2.PreviewImageActivity;

public final class brd
  implements View.OnClickListener
{
  public brd(PreviewImageActivity paramPreviewImageActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = a.getIntent();
    paramView.putExtra("result_media_attachment", a.m);
    a.setResult(-1, paramView);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     brd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */