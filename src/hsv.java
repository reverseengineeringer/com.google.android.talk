import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

public final class hsv
  implements ilu, ioo, iow, ioz
{
  private htd a;
  private hta b;
  private htc c;
  
  public hsv(iog paramiog)
  {
    paramiog.a(this);
  }
  
  public void a(int paramInt)
  {
    if (TextUtils.isEmpty(c.a(paramInt))) {
      throw new IllegalArgumentException("You must use a resource id as the request code to guarantee overlap does not occur");
    }
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    a = ((htd)paramilh.a(htd.class));
    c = ((htc)paramilh.a(htc.class));
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      b = ((hta)paramBundle.getParcelable("requestcodehelper_pending_requests"));
      return;
    }
    b = new hta();
  }
  
  public void a(hsw paramhsw)
  {
    Iterator localIterator = new ArrayList(b.a()).iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger1 = (Integer)localIterator.next();
      Integer localInteger2 = b.a(localInteger1);
      paramhsw.a(localInteger1.intValue(), localInteger2.intValue());
    }
  }
  
  public boolean a(int paramInt, hsz paramhsz)
  {
    Iterator localIterator = b.a().iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      if (b.a(localInteger).intValue() == paramInt)
      {
        paramhsz.a(localInteger.intValue());
        return true;
      }
    }
    return false;
  }
  
  public int b(int paramInt)
  {
    Integer localInteger2 = b.a(Integer.valueOf(paramInt));
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null)
    {
      localInteger1 = Integer.valueOf(a.a());
      b.a(Integer.valueOf(paramInt), localInteger1);
    }
    return localInteger1.intValue();
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putParcelable("requestcodehelper_pending_requests", b);
  }
}

/* Location:
 * Qualified Name:     hsv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */