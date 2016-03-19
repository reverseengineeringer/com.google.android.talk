import android.content.Context;
import android.content.Intent;

public final class cxk
  extends ehr
{
  public cxk()
  {
    super((byte)0);
  }
  
  public Intent a(Context paramContext, int paramInt, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("account_id", paramInt);
    localIntent.putExtra("conversationIdSetString", paramString);
    return b(paramContext, localIntent);
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("account_id", -1);
    paramIntent = paramIntent.getStringExtra("conversationIdSetString");
    try
    {
      cxn localcxn = cxj.g;
      paramIntent = exn.a(paramIntent);
      if ((bft.b(new bfz(paramContext, i), paramIntent) > 0) && (((ekq)ilh.a(paramContext, ekq.class)).b(i))) {
        cxn.a(paramContext, i, true);
      }
      return;
    }
    catch (bgz paramContext) {}catch (hqd paramContext) {}
  }
}

/* Location:
 * Qualified Name:     cxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */