import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.phone.DebugActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dfj
  extends ArrayAdapter<Intent>
{
  public dfj(DebugActivity paramDebugActivity, Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext, paramInt1, paramInt2);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    paramViewGroup = (TextView)paramView.findViewById(aen.dL);
    TextView localTextView = (TextView)paramView.findViewById(aen.he);
    Intent localIntent = (Intent)getItem(paramInt);
    String str1 = String.valueOf(localIntent.getStringExtra("___time"));
    String str2 = String.valueOf(a.g.a());
    paramViewGroup.setText(String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + " " + str2);
    localTextView.setText(RealTimeChatService.a(localIntent, a.g));
    return paramView;
  }
}

/* Location:
 * Qualified Name:     dfj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */