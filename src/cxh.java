import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cxh
  extends cxb
{
  private final cxq c;
  
  protected cxh(Context paramContext, int paramInt, cxq paramcxq, long paramLong)
  {
    super(paramContext, paramInt, exn.a(o.a), paramLong);
    c = paramcxq;
  }
  
  protected void a(boolean paramBoolean)
  {
    Object localObject = p.getResources().getString(StressMode.gP);
    u.a((CharSequence)localObject);
    w.a((CharSequence)localObject);
    if ((!TextUtils.isEmpty(c.b)) && (c.g))
    {
      localObject = new db(u);
      ((db)localObject).b(c.b);
      u.a((dk)localObject);
    }
    for (;;)
    {
      super.a(paramBoolean);
      return;
      u.b(c.b);
    }
  }
  
  protected Intent g()
  {
    return aal.a(q, r.a(), c.o.e);
  }
}

/* Location:
 * Qualified Name:     cxh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */