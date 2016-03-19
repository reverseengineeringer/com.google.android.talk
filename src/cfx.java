import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class cfx
{
  private final int a;
  private final boolean b;
  
  public cfx(int paramInt, boolean paramBoolean)
  {
    a = paramInt;
    b = paramBoolean;
  }
  
  public static void a(Context paramContext, cgs paramcgs)
  {
    a(paramContext, paramcgs, 1004, true);
  }
  
  public static void a(Context paramContext, cgs paramcgs, int paramInt, boolean paramBoolean)
  {
    paramContext = paramContext.getSharedPreferences(cfx.class.getName(), 0).edit();
    paramContext.putBoolean("HISTORY_HAS_EVENT", true);
    paramcgs.a(paramContext);
    paramContext.putInt("HISTORY_ERROR", paramInt);
    paramContext.putBoolean("HISTORY_EXIT_REPORTED", paramBoolean);
    paramContext.apply();
  }
  
  public int a()
  {
    return a;
  }
  
  public boolean b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     cfx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */