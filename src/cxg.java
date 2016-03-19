import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cxg
  extends cxb
{
  private final int c;
  
  protected cxg(Context paramContext, int paramInt1, exn paramexn, int paramInt2, long paramLong)
  {
    super(paramContext, paramInt1, paramexn, paramLong);
    c = paramInt2;
  }
  
  protected void a(boolean paramBoolean)
  {
    Object localObject = p.getResources();
    String str = ((Resources)localObject).getString(StressMode.gO);
    u.a(str);
    w.a(str);
    localObject = ((Resources)localObject).getQuantityString(aal.hu, r.size(), new Object[] { Integer.valueOf(c), Integer.valueOf(r.size()) });
    u.b((CharSequence)localObject);
    w.b((CharSequence)localObject);
    super.a(paramBoolean);
  }
  
  protected Intent g()
  {
    return aal.e(dvd.e(q));
  }
}

/* Location:
 * Qualified Name:     cxg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */