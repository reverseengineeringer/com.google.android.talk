import android.content.Context;
import android.os.ConditionVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

final class cud
  extends ebh
{
  drb a;
  Exception b;
  Context c;
  private ConditionVariable e;
  
  cud(cuc paramcuc, Context paramContext, ConditionVariable paramConditionVariable)
  {
    super(paramContext);
    c = paramContext;
    e = paramConditionVariable;
  }
  
  protected void a(eau parameau)
  {
    a = ((drb)parameau.c());
    e.open();
  }
  
  protected void a(Exception paramException)
  {
    b = paramException;
    e.open();
  }
  
  void a(Collection<String> paramCollection, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(dtt.a(null, (String)paramCollection.next()));
    }
    aal.a(new cue(this, paramInt, localArrayList));
  }
  
  void b(Collection<String> paramCollection, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(dtt.a((String)paramCollection.next(), null));
    }
    aal.a(new cuf(this, paramInt, localArrayList));
  }
}

/* Location:
 * Qualified Name:     cud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */