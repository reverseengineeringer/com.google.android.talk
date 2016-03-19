import android.app.Activity;
import android.content.Intent;
import com.google.android.apps.hangouts.peoplelistv2.impl.PeopleSearchActivity;

final class daa
  extends cve
{
  public int a()
  {
    return aen.jA;
  }
  
  public void a(Activity paramActivity)
  {
    aal.a(a, 2546);
    Intent localIntent = new Intent(paramActivity, PeopleSearchActivity.class);
    localIntent.putExtra("account_id", a.g());
    paramActivity.startActivity(localIntent);
  }
  
  public int b()
  {
    return fii.j;
  }
  
  public int c()
  {
    return 5;
  }
  
  public int d()
  {
    return 2;
  }
  
  public int e()
  {
    return 5;
  }
}

/* Location:
 * Qualified Name:     daa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */