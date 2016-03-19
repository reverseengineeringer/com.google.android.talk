import android.view.View;
import android.widget.TabHost.TabContentFactory;
import com.google.android.apps.hangouts.util.TabHostEx;

public final class eyw
  implements TabHost.TabContentFactory
{
  public eyw(TabHostEx paramTabHostEx) {}
  
  public View createTabContent(String paramString)
  {
    paramString = new View(a.getContext());
    paramString.setMinimumWidth(0);
    paramString.setMinimumHeight(0);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     eyw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */