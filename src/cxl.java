import android.content.Context;
import android.content.Intent;

public final class cxl
  extends ehr
{
  public cxl()
  {
    super((byte)0);
  }
  
  public void a(Context paramContext, int paramInt, boolean paramBoolean, knq<Intent> paramknq)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("account_id", paramInt);
    localIntent.putExtra("silent", paramBoolean);
    ((eec)ilh.a(paramContext, eec.class)).a(paramContext, b(paramContext, localIntent), paramknq);
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("account_id", -1);
    boolean bool = paramIntent.getBooleanExtra("silent", false);
    try
    {
      paramIntent = cxj.g;
      cxn.a(paramContext, i, bool);
      return;
    }
    catch (hqd paramContext) {}
  }
}

/* Location:
 * Qualified Name:     cxl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */