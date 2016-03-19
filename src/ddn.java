import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.BabelGatewayActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.List;

public final class ddn
  extends byp<dpa, drb>
{
  public ddn(BabelGatewayActivity paramBabelGatewayActivity) {}
  
  public String a()
  {
    return null;
  }
  
  protected void a(eau parameau)
  {
    super.a(parameau);
    List localList = ((drb)parameau.c()).k();
    if (localList != null) {}
    for (int i = localList.size(); i != d.p.length; i = 0)
    {
      ezi.e("Babel_GatewayActivity", "BabelGatewayActivity: Entity lookup returned wrong number of entities", new Object[0]);
      d.d(StressMode.bZ);
      return;
    }
    d.q = new String[i];
    int j = 0;
    if (j < i)
    {
      parameau = (eyu)localList.get(j);
      if (parameau == null)
      {
        parameau = null;
        if (parameau == null) {
          break label152;
        }
      }
      label152:
      for (Object localObject = parameau[0];; localObject = null)
      {
        if (localObject != null) {
          break label158;
        }
        ezi.d("Babel_GatewayActivity", "BabelGatewayActivity: Could not resolve some gaiaId's", new Object[0]);
        d.d(StressMode.bZ);
        return;
        parameau = (cyx[])b;
        break;
      }
      label158:
      hbs.a(Integer.valueOf(1), Integer.valueOf(parameau.length));
      String[] arrayOfString = d.q;
      if (!TextUtils.isEmpty(e)) {
        parameau = e;
      }
      for (;;)
      {
        arrayOfString[j] = parameau;
        j += 1;
        break;
        if (!TextUtils.isEmpty(f)) {
          parameau = f;
        } else {
          parameau = null;
        }
      }
    }
    d.j();
  }
  
  protected void a(Exception paramException)
  {
    super.a(paramException);
    d.d(StressMode.bZ);
  }
  
  public int b()
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = d.p;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(dtt.a(arrayOfString[i]));
      i += 1;
    }
    return RealTimeChatService.a(d.o, localArrayList, null, true);
  }
  
  public Class<dpa> e()
  {
    return dpa.class;
  }
  
  public Class<drb> f()
  {
    return drb.class;
  }
}

/* Location:
 * Qualified Name:     ddn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */