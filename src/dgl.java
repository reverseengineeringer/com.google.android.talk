import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.DebugOzGetMergedPersonActivity;

final class dgl
  extends dgz
{
  dgl(dfq paramdfq, String paramString)
  {
    super(paramString);
  }
  
  public void a()
  {
    Intent localIntent = new Intent(a.a, DebugOzGetMergedPersonActivity.class);
    localIntent.putExtra("account_id", a.c);
    a.a.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     dgl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */