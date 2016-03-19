import android.os.ConditionVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

final class ctx
  extends ebh
{
  drb a;
  private ConditionVariable c;
  
  ctx(ctt paramctt, ConditionVariable paramConditionVariable)
  {
    super(d);
    c = paramConditionVariable;
  }
  
  protected void a(eau parameau)
  {
    a = ((drb)parameau.c());
    c.open();
  }
  
  protected void a(Exception paramException)
  {
    c.open();
  }
  
  void a(Collection<String> paramCollection, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(dtt.a((String)paramCollection.next(), null));
    }
    aal.a(new cty(this, paramInt, localArrayList));
  }
}

/* Location:
 * Qualified Name:     ctx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */