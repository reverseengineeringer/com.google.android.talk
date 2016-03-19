import android.util.Pair;
import android.util.SparseArray;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class cbi
  implements AdapterView.OnItemClickListener
{
  private final int b;
  private final SparseArray<Pair<Integer, Integer>> c;
  
  public cbi(cbg paramcbg, int paramInt)
  {
    b = paramInt;
    if ((b == 0) || (b == 4) || (b == 5)) {}
    for (c = new SparseArray();; c = null)
    {
      if ((b == 0) || (b == 4))
      {
        c.put(1041637, new Pair(Integer.valueOf(127471), Integer.valueOf(127477)));
        c.put(1041638, new Pair(Integer.valueOf(127482), Integer.valueOf(127480)));
        c.put(1041639, new Pair(Integer.valueOf(127467), Integer.valueOf(127479)));
        c.put(1041640, new Pair(Integer.valueOf(127465), Integer.valueOf(127466)));
        c.put(1041641, new Pair(Integer.valueOf(127470), Integer.valueOf(127481)));
        c.put(1041642, new Pair(Integer.valueOf(127468), Integer.valueOf(127463)));
        c.put(1041643, new Pair(Integer.valueOf(127466), Integer.valueOf(127480)));
        c.put(1041644, new Pair(Integer.valueOf(127479), Integer.valueOf(127482)));
        c.put(1041645, new Pair(Integer.valueOf(127464), Integer.valueOf(127475)));
        c.put(1041646, new Pair(Integer.valueOf(127472), Integer.valueOf(127479)));
      }
      if ((b == 0) || (b == 5))
      {
        c.put(1042478, new Pair(Integer.valueOf(49), Integer.valueOf(8419)));
        c.put(1042479, new Pair(Integer.valueOf(50), Integer.valueOf(8419)));
        c.put(1042480, new Pair(Integer.valueOf(51), Integer.valueOf(8419)));
        c.put(1042481, new Pair(Integer.valueOf(52), Integer.valueOf(8419)));
        c.put(1042482, new Pair(Integer.valueOf(53), Integer.valueOf(8419)));
        c.put(1042483, new Pair(Integer.valueOf(54), Integer.valueOf(8419)));
        c.put(1042484, new Pair(Integer.valueOf(55), Integer.valueOf(8419)));
        c.put(1042485, new Pair(Integer.valueOf(56), Integer.valueOf(8419)));
        c.put(1042486, new Pair(Integer.valueOf(57), Integer.valueOf(8419)));
        c.put(1042487, new Pair(Integer.valueOf(48), Integer.valueOf(8419)));
        c.put(1042476, new Pair(Integer.valueOf(35), Integer.valueOf(8419)));
      }
      return;
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramInt = (int)paramLong;
    if (b > 0) {
      a.a.a(paramInt);
    }
    paramAdapterView = new StringBuilder();
    if (c != null)
    {
      paramView = (Pair)c.get(paramInt);
      if (paramView != null)
      {
        paramAdapterView.appendCodePoint(aal.a((Integer)first, 0));
        paramInt = aal.a((Integer)second, 0);
      }
    }
    for (;;)
    {
      paramAdapterView.appendCodePoint(paramInt);
      a.b.a(paramAdapterView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cbi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */