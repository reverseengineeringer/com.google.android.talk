import android.os.Bundle;

public class htd
  implements ioo, iow, ioz
{
  private int a;
  
  public htd(iog paramiog)
  {
    paramiog.a(this);
  }
  
  public int a()
  {
    int i = a;
    a = (i + 1);
    return i;
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      a = 16383;
      return;
    }
    a = paramBundle.getInt("com.google.android.apps.photos.activityresult.SafeRequstCodeGenerator.NextRequestCode");
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putInt("com.google.android.apps.photos.activityresult.SafeRequstCodeGenerator.NextRequestCode", a);
  }
}

/* Location:
 * Qualified Name:     htd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */