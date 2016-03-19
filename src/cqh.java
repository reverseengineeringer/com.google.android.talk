import android.content.Context;
import android.os.Bundle;
import android.widget.Toast;

final class cqh
  implements cpv
{
  final String a = getClass().getName();
  
  public void a(Context paramContext, bg parambg, String paramString1, String paramString2, String paramString3, cpx paramcpx)
  {
    if (paramString2 == null)
    {
      Toast.makeText(paramContext, aen.jd, 0).show();
      return;
    }
    Object localObject = (hpu)ilh.a(paramContext, hpu.class);
    eot localeot = (eot)ilh.a(paramContext, eot.class);
    bfd localbfd = dvd.e(((hpu)localObject).a());
    if ((paramcpx == cpx.a) && (!localeot.a(((hpu)localObject).a())))
    {
      aal.a(localbfd, 1860);
      new cpy(paramContext, paramString2, paramString3).a(paramContext, cpz.c);
      return;
    }
    paramContext = new cqb();
    localObject = new Bundle();
    ((Bundle)localObject).putString("conversation_id", paramString3);
    ((Bundle)localObject).putString("name", paramString1);
    ((Bundle)localObject).putString("contact", paramString2);
    ((Bundle)localObject).putSerializable("trigger_action", paramcpx);
    paramContext.setArguments((Bundle)localObject);
    paramContext.a(parambg, a);
  }
}

/* Location:
 * Qualified Name:     cqh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */