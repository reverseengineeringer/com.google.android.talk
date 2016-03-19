import android.content.Context;

public class elm
{
  private final hpz a;
  private final bdp b;
  
  elm(Context paramContext)
  {
    a = ((hpz)ilh.a(paramContext, hpz.class));
    b = ((bdp)ilh.a(paramContext, bdp.class));
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    a.b(paramInt).b("last_seen_bool_key", paramBoolean).d();
  }
  
  public boolean a(int paramInt)
  {
    if (!b.a("babel_device_presence", false)) {
      return false;
    }
    return a.a(paramInt).a("share_device_presence_preferences_key", false);
  }
  
  public void b(int paramInt, boolean paramBoolean)
  {
    a.b(paramInt).b("rich_status_device_reporting_key", paramBoolean).d();
  }
  
  public boolean b(int paramInt)
  {
    return a.a(paramInt).a("last_seen_bool_key", false);
  }
  
  public boolean c(int paramInt)
  {
    return a.a(paramInt).a("rich_status_device_reporting_key", false);
  }
}

/* Location:
 * Qualified Name:     elm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */