import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.notifications.NotificationService;

public abstract class ehr
{
  public ehr() {}
  
  public ehr(byte paramByte)
  {
    this();
  }
  
  public Class<? extends ehq> a()
  {
    return NotificationService.class;
  }
  
  public abstract void a(Context paramContext, Intent paramIntent);
  
  public Intent b(Context paramContext, Intent paramIntent)
  {
    paramIntent.putExtra("ds_processor", getClass().getName());
    paramIntent.setClass(paramContext, a());
    return paramIntent;
  }
}

/* Location:
 * Qualified Name:     ehr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */