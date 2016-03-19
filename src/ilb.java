import android.app.Activity;
import android.content.Intent;

final class ilb
  implements inn, ioz
{
  private final Activity a;
  
  public ilb(Activity paramActivity, iog paramiog)
  {
    a = paramActivity;
    paramiog.a(this);
  }
  
  static boolean a(Activity paramActivity)
  {
    boolean bool = false;
    if ((paramActivity.getCallingActivity() != null) || (paramActivity.getIntent().getBooleanExtra("task_launched_for_result", false))) {
      bool = true;
    }
    return bool;
  }
  
  public void a(Intent paramIntent)
  {
    if (a(a)) {
      paramIntent.putExtra("task_launched_for_result", true);
    }
  }
}

/* Location:
 * Qualified Name:     ilb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */