import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;

public final class aaf
{
  private SparseArray<ArrayList<aao>> a = new SparseArray();
  private SparseIntArray b = new SparseIntArray();
  private int c = 0;
  
  public aao a(int paramInt)
  {
    ArrayList localArrayList = (ArrayList)a.get(paramInt);
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      paramInt = localArrayList.size() - 1;
      aao localaao = (aao)localArrayList.get(paramInt);
      localArrayList.remove(paramInt);
      return localaao;
    }
    return null;
  }
  
  public void a(aao paramaao)
  {
    int i = e;
    ArrayList localArrayList2 = (ArrayList)a.get(i);
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null)
    {
      localArrayList2 = new ArrayList();
      a.put(i, localArrayList2);
      localArrayList1 = localArrayList2;
      if (b.indexOfKey(i) < 0)
      {
        b.put(i, 5);
        localArrayList1 = localArrayList2;
      }
    }
    if (b.get(i) <= localArrayList1.size()) {
      return;
    }
    paramaao.r();
    localArrayList1.add(paramaao);
  }
  
  void a(zu paramzu1, zu paramzu2, boolean paramBoolean)
  {
    if (paramzu1 != null) {
      c -= 1;
    }
    if ((!paramBoolean) && (c == 0)) {
      a.clear();
    }
    if (paramzu2 != null) {
      c += 1;
    }
  }
}

/* Location:
 * Qualified Name:     aaf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */