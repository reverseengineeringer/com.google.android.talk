import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class bbv
  extends cyb
{
  protected bbv(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt, null);
  }
  
  protected void a(boolean paramBoolean)
  {
    CharSequence localCharSequence = b(bff.b(p, q).b("display_name"), p.getString(aal.iQ), null, 0);
    u.a(p.getString(StressMode.q)).b(localCharSequence);
    super.a(paramBoolean);
  }
  
  protected boolean a()
  {
    return false;
  }
  
  protected Intent b()
  {
    return null;
  }
  
  protected boolean c()
  {
    return true;
  }
  
  protected int d()
  {
    return R.drawable.bV;
  }
  
  protected int e()
  {
    return 15;
  }
  
  protected int f()
  {
    return -1;
  }
  
  protected Intent g()
  {
    return aal.d(dvd.e(q));
  }
}

/* Location:
 * Qualified Name:     bbv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */