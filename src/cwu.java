import android.content.Context;
import android.content.Intent;

public final class cwu
  extends ehr
{
  public cwu()
  {
    super((byte)0);
  }
  
  Intent a(Context paramContext, int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("account_id", paramInt1);
    localIntent.putExtra("renotification_count", paramInt2);
    return b(paramContext, localIntent);
  }
  
  public void a(Context paramContext, int paramInt)
  {
    paramContext.startService(b(paramContext, a(paramContext, paramInt, 0)));
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("account_id", -1);
    int j = paramIntent.getIntExtra("renotification_count", -1);
    cwt.a.a(paramContext, i, j);
  }
}

/* Location:
 * Qualified Name:     cwu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */