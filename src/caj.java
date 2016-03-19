import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class caj
{
  final bfd a;
  public HashMap<String, Long> b;
  private long d;
  private final cal e = new cal(this);
  private epa f;
  
  public caj(ConversationListFragment paramConversationListFragment, bfd parambfd)
  {
    a = parambfd;
  }
  
  private void a(String paramString, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = aal.f(paramString).iterator();
    while (paramString.hasNext()) {
      localArrayList.add((String)paramString.next());
    }
    paramString = new long[localArrayList.size()];
    int i = 0;
    while (i < paramString.length)
    {
      paramString[i] = paramLong;
      i += 1;
    }
    RealTimeChatService.a(a, (String[])localArrayList.toArray(new String[localArrayList.size()]), paramString, paramBoolean1, paramBoolean2);
  }
  
  public void a()
  {
    e.a();
  }
  
  public void a(Cursor paramCursor)
  {
    if (b == null) {}
    for (;;)
    {
      return;
      while ((!b.isEmpty()) && (paramCursor.moveToNext()))
      {
        String str = paramCursor.getString(1);
        b.remove(str);
      }
    }
  }
  
  public void a(Bundle paramBundle)
  {
    if ((b != null) && (!b.isEmpty())) {
      paramBundle.putSerializable("last_archived", b);
    }
  }
  
  public void a(String paramString)
  {
    e.a(paramString);
  }
  
  public void a(String paramString, long paramLong)
  {
    a(paramString, paramLong, false, false);
  }
  
  public void a(String paramString, long paramLong, boolean paramBoolean)
  {
    label98:
    int i;
    if (paramBoolean)
    {
      ((hba)c.binder.a(hba.class)).a(a.g()).a(2885).d();
      if (!e.a(paramString, paramLong)) {
        a(paramString, paramLong, true, true);
      }
      long l = System.currentTimeMillis();
      if (b == null) {
        break label292;
      }
      if (l - d > 1000L) {
        b.clear();
      }
      d = l;
      b.put(paramString, Long.valueOf(paramLong));
      i = b.size();
      paramString = new epb(c.context);
      if (i <= 1) {
        break label306;
      }
      paramString.a(c.getResources().getString(StressMode.gt, new Object[] { Integer.valueOf(i) }));
      label177:
      paramString.c(c.getString(StressMode.r));
      paramString.a(new cak(this, paramBoolean));
      paramString = paramString.b();
      if ((f != null) && (!f.equals(paramString))) {
        break label333;
      }
      c.i.a(paramString);
    }
    for (;;)
    {
      f = paramString;
      label292:
      label306:
      do
      {
        return;
        ((hba)c.binder.a(hba.class)).a(a.g()).a(2887).d();
        break;
        b = new HashMap();
        break label98;
      } while (i != 1);
      paramString.a(c.getResources().getString(StressMode.aq));
      break label177;
      label333:
      c.i.a(f, paramString);
    }
  }
  
  void a(Map<String, Long> paramMap, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramMap == null) {}
    for (;;)
    {
      return;
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        long l = aal.a((Long)localEntry.getValue(), 0L);
        a((String)localEntry.getKey(), l, paramBoolean1, paramBoolean2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     caj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */