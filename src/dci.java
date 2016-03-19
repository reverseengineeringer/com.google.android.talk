import android.content.Context;
import android.widget.SectionIndexer;
import java.util.ArrayList;
import java.util.List;

public abstract class dci
  extends bir<bis, bec>
  implements SectionIndexer
{
  public dci(Context paramContext)
  {
    super(paramContext);
  }
  
  public int getPositionForSection(int paramInt)
  {
    int m = c();
    int k = 0;
    int i = 0;
    int j = paramInt;
    paramInt = k;
    while (paramInt < m)
    {
      bis localbis = (bis)c(paramInt);
      k = localbis.f();
      if (j < k) {
        return localbis.b(j) + i;
      }
      j -= k;
      i += localbis.c();
      paramInt += 1;
    }
    hbs.a("section index out of bounds");
    return 0;
  }
  
  public int getSectionForPosition(int paramInt)
  {
    int m = c();
    int k = 0;
    int i = 0;
    int j = paramInt;
    paramInt = k;
    while (paramInt < m)
    {
      bis localbis = (bis)c(paramInt);
      k = localbis.c();
      if (j < k) {
        return localbis.c(j) + i;
      }
      j -= k;
      i += localbis.f();
      paramInt += 1;
    }
    hbs.a("position out of bounds");
    return 0;
  }
  
  public Object[] getSections()
  {
    ArrayList localArrayList = new ArrayList();
    int j = c();
    int i = 0;
    while (i < j)
    {
      bec localbec = (bec)((bis)c(i)).e();
      if (localbec != null) {
        localbec.a(localArrayList);
      }
      i += 1;
    }
    return localArrayList.toArray();
  }
}

/* Location:
 * Qualified Name:     dci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */