import android.content.Context;
import android.os.Bundle;
import com.google.android.apps.hangouts.views.MessageListItemView;

public final class fdi
  implements ck<String>
{
  private final StringBuilder b;
  private final Context c;
  
  public fdi(MessageListItemView paramMessageListItemView, Context paramContext, StringBuilder paramStringBuilder)
  {
    b = paramStringBuilder;
    c = paramContext;
  }
  
  public fe<String> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new fdk(c, a.i.g(), a.h);
  }
  
  public void onLoaderReset(fe<String> paramfe) {}
}

/* Location:
 * Qualified Name:     fdi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */