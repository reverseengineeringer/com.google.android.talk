import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class dbp
  extends ebh
{
  private final String b;
  
  dbp(dbh paramdbh)
  {
    super(context);
    paramdbh = String.valueOf(dbp.class.getName());
    int i = hashCode();
    b = (String.valueOf(paramdbh).length() + 11 + paramdbh + i);
  }
  
  protected void a(eau parameau)
  {
    Object localObject2 = (dsi)parameau.c();
    Object localObject1 = new ArrayList();
    parameau = new ArrayList();
    localObject2 = ((dsi)localObject2).k().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      cyx localcyx = (cyx)((Iterator)localObject2).next();
      bea localbea = bea.a(localcyx, null, false);
      if (y) {
        ((List)localObject1).add(localbea);
      } else {
        parameau.add(localbea);
      }
    }
    localObject1 = new bed((List)localObject1);
    a.d.c((bec)localObject1);
    parameau = new bed(parameau);
    a.d.d(parameau);
    a.a(a.getView());
  }
  
  public void a(String paramString)
  {
    a(RealTimeChatService.b(a.f, paramString, b));
  }
}

/* Location:
 * Qualified Name:     dbp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */