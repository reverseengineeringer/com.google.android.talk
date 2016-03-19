import android.content.Context;
import android.content.Intent;

public final class cxe
  extends ehr
{
  public cxe()
  {
    super((byte)0);
  }
  
  public Intent a(Context paramContext, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("account_id", paramInt);
    return b(paramContext, localIntent);
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("account_id", -1);
    paramIntent = cxb.b;
    cxf.a(paramContext, i);
  }
}

/* Location:
 * Qualified Name:     cxe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */