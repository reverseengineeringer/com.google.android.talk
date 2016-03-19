import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class heg
  extends BroadcastReceiver
{
  private boolean b = true;
  private int c = -1;
  
  public heg(hef paramhef) {}
  
  public boolean a()
  {
    return b;
  }
  
  public int b()
  {
    return c;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getIntExtra("plugged", 0) == 0) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      int i = paramIntent.getIntExtra("scale", 0);
      int j = paramIntent.getIntExtra("level", 0);
      if (i == 0) {
        break;
      }
      c = (j * 100 / i);
      return;
    }
    c = -1;
  }
}

/* Location:
 * Qualified Name:     heg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */