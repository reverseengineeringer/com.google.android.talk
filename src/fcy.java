import android.database.Cursor;
import com.google.android.apps.hangouts.views.MessageListItemWrapperView;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;

public final class fcy
{
  public Queue<Long> a;
  public Set<Long> b;
  public Long c;
  public boolean d;
  public final boolean e;
  public long f;
  public boolean g;
  
  public fcy(boolean paramBoolean)
  {
    e = paramBoolean;
    c();
  }
  
  private void c()
  {
    a = new LinkedList();
    b = new HashSet();
    c = null;
    d = true;
    f = 0L;
    g = false;
  }
  
  private Long d()
  {
    return (Long)a.poll();
  }
  
  public void a()
  {
    a = new LinkedList();
    b = new HashSet();
    d = true;
    g = false;
  }
  
  public void a(long paramLong)
  {
    f = Math.max(f, paramLong);
  }
  
  public void a(Cursor paramCursor)
  {
    if (bhx.j) {
      if (paramCursor != null) {
        break label306;
      }
    }
    for (Object localObject = "null";; localObject = Integer.valueOf(paramCursor.getCount()))
    {
      localObject = String.valueOf(localObject);
      new StringBuilder(String.valueOf(localObject).length() + 32).append("[MessageListState] setNewCursor ").append((String)localObject);
      label306:
      try
      {
        localObject = new LinkedList();
        if ((paramCursor != null) && (paramCursor.moveToLast()))
        {
          int i = paramCursor.getColumnIndexOrThrow("_id");
          int j = paramCursor.getColumnIndexOrThrow("timestamp");
          if ((!d) && (!e) && (!g)) {
            do
            {
              long l1 = paramCursor.getLong(j);
              long l2 = paramCursor.getLong(i);
              if ((b.contains(Long.valueOf(l2))) || (l1 <= f)) {
                break;
              }
              ((List)localObject).add(0, Long.valueOf(l2));
            } while (paramCursor.moveToPrevious());
          }
          paramCursor.moveToLast();
          a(paramCursor.getLong(j));
          if ((d) || (e) || (g)) {
            c = Long.valueOf(paramCursor.getLong(i));
          }
        }
        a.addAll((Collection)localObject);
        b.addAll((Collection)localObject);
        if (bhx.j)
        {
          paramCursor = String.valueOf(a);
          new StringBuilder(String.valueOf(paramCursor).length() + 26).append("[MessageListState] newIds ").append(paramCursor);
        }
        d = false;
        return;
      }
      finally {}
    }
  }
  
  public void a(MessageListItemWrapperView paramMessageListItemWrapperView)
  {
    Long localLong = b();
    if ((localLong != null) && (paramMessageListItemWrapperView.e() == aal.a(localLong, 0L)))
    {
      c = d();
      return;
    }
    ezi.d("Babel", "[MessageCursorAdapter] onRevealFinished called when the new message queue was empty.", new Object[0]);
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public Long b()
  {
    return (Long)a.peek();
  }
  
  public boolean b(long paramLong)
  {
    return a.contains(Long.valueOf(paramLong));
  }
  
  public boolean c(long paramLong)
  {
    return (c != null) && (aal.a(c, 0L) == paramLong);
  }
}

/* Location:
 * Qualified Name:     fcy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */