import android.content.Context;
import android.content.SharedPreferences;

final class cqx
  implements cqs
{
  private final SharedPreferences a;
  
  public cqx(Context paramContext)
  {
    a = paramContext.getSharedPreferences("latency_preferences", 0);
  }
  
  public cqr a(int paramInt)
  {
    return new cqw(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     cqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */