import android.content.Context;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

final class esl
  implements Runnable
{
  esl(esk paramesk, Context paramContext) {}
  
  public void run()
  {
    int j = 0;
    int i = 0;
    esk.e(a);
    esk.f(a);
    Object localObject2 = a;
    Object localObject1 = aal.a((Context)localObject2);
    if (aal.n((Context)localObject2))
    {
      localObject2 = ((bdp)localObject1).a("babel_tycho_only_short_codes", "+1611,+1711,+1911").split(",");
      j = localObject2.length;
      while (i < j)
      {
        ezm.i(localObject2[i]);
        i += 1;
      }
    }
    localObject2 = ((bdp)localObject1).a("babel_gv_supported_service_codes", "+1611,+1711,+1911").split(",");
    int k = localObject2.length;
    i = j;
    while (i < k)
    {
      ezm.i(localObject2[i]);
      i += 1;
    }
    localObject1 = ((bdp)localObject1).a("babel_us_anonymous_call_prefix", "*67");
    localObject2 = Locale.US.getCountry();
    ezm.a.put(localObject2, localObject1);
    aal.a(a).a(new esn(a));
    localObject1 = new euw(a);
    eut.a.add(localObject1);
  }
}

/* Location:
 * Qualified Name:     esl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */