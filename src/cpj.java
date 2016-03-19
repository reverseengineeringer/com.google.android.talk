import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import com.google.android.apps.hangouts.invites.conversationinvitelist.impl.InviteListFragment;
import java.util.ArrayList;
import java.util.Iterator;

public final class cpj
  extends BaseAdapter
  implements WrapperListAdapter
{
  final cpa a;
  private final ArrayList<cpg> b = new ArrayList();
  private final int c;
  private final InviteListFragment d;
  
  cpj(cpa paramcpa, int paramInt, InviteListFragment paramInviteListFragment)
  {
    a = paramcpa;
    c = paramInt;
    d = paramInviteListFragment;
    a(paramcpa.a());
    a.registerDataSetObserver(new cpk(this));
  }
  
  void a(Cursor paramCursor)
  {
    b.clear();
    if ((paramCursor != null) && (paramCursor.getCount() > 0))
    {
      b.add(new cpg(aen.iQ, aal.mM, 0));
      if (!paramCursor.moveToFirst()) {}
    }
    do
    {
      if (paramCursor.getInt(27) == 2)
      {
        if (paramCursor.getPosition() == 0) {
          b.remove(0);
        }
        b.add(new cpg(aen.iY, aal.mQ, paramCursor.getPosition()));
        return;
      }
    } while (paramCursor.moveToNext());
  }
  
  public int getCount()
  {
    return a.getCount() + b.size();
  }
  
  public Object getItem(int paramInt)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      cpg localcpg = (cpg)localIterator.next();
      if (a == paramInt) {
        return localcpg;
      }
      if (a < paramInt) {
        paramInt -= 1;
      }
    }
    return a.getItem(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      cpg localcpg = (cpg)localIterator.next();
      if (a == paramInt) {
        return -1L;
      }
      if (a < paramInt) {
        paramInt -= 1;
      }
    }
    return a.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      cpg localcpg = (cpg)localIterator.next();
      if (a == paramInt) {
        return a.getViewTypeCount();
      }
      if (a < paramInt) {
        paramInt -= 1;
      }
    }
    return a.getItemViewType(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      cpg localcpg = (cpg)localIterator.next();
      if (a == paramInt) {
        return localcpg.a(paramViewGroup, d.d);
      }
      if (a < paramInt) {
        paramInt -= 1;
      }
    }
    return a.getView(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return a.getViewTypeCount() + 1;
  }
  
  public ListAdapter getWrappedAdapter()
  {
    return a;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     cpj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */