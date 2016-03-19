import android.content.Context;
import android.os.Handler;

final class esn
  implements Runnable
{
  final Context a;
  private final Handler b = new Handler();
  
  esn(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  public void run()
  {
    b.post(new eso(this));
  }
}

/* Location:
 * Qualified Name:     esn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */