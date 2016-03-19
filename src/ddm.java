import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.BabelGatewayActivity;

public final class ddm
  extends eap
{
  public ddm(BabelGatewayActivity paramBabelGatewayActivity) {}
  
  public void a(int paramInt, bfd parambfd, dwd paramdwd, eau parameau)
  {
    if (paramInt != a.z) {
      return;
    }
    if (BabelGatewayActivity.n)
    {
      paramInt = parameau.b();
      new StringBuilder(47).append("onConversationCreated called, error ").append(paramInt);
    }
    if (parameau.b() != 1)
    {
      a.d(StressMode.bZ);
      return;
    }
    hbs.a(Boolean.valueOf(c), Boolean.valueOf(a.s));
    if (c)
    {
      new djm(a, a.o, a, true, a.x, a.t, a.u, a.v, a.w, a.y).a(new Void[0]);
      a.setResult(-1);
      a.finish();
      return;
    }
    a.r = a;
    a.e(b);
  }
}

/* Location:
 * Qualified Name:     ddm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */