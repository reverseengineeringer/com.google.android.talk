import android.content.Context;
import android.content.Intent;

public final class cxw
  extends ehr
{
  public cxw()
  {
    super((byte)0);
  }
  
  public void a(Context paramContext, int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, knq<Intent> paramknq)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("account_id", paramInt);
    localIntent.putExtra("silent", paramBoolean1);
    localIntent.putExtra("live_message", paramBoolean2);
    localIntent.putExtra("deferred_notif", paramBoolean3);
    ((eec)ilh.a(paramContext, eec.class)).a(paramContext, b(paramContext, localIntent), paramknq);
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("account_id", -1);
    boolean bool1 = paramIntent.getBooleanExtra("silent", false);
    boolean bool2 = paramIntent.getBooleanExtra("live_message", false);
    boolean bool3 = paramIntent.getBooleanExtra("deferred_notif", false);
    paramIntent = cxt.m;
    cxx.a(paramContext, i, bool1, bool2, bool3);
  }
}

/* Location:
 * Qualified Name:     cxw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */