import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

final class ben
  extends eyd
{
  final List<String> a;
  private final String e;
  
  public ben()
  {
    super(null, str1);
    int i;
    a(i);
    a(false);
    c(false);
    b();
    d(true);
    List localList;
    a = localList;
    String str2;
    e = str2;
  }
  
  public void a()
  {
    StringBuilder localStringBuilder1 = a(d(), e(), f(), true, false);
    b = null;
    StringBuilder localStringBuilder2 = new StringBuilder();
    if (!TextUtils.isEmpty(e)) {
      localStringBuilder2.append(e).append("|");
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder2.append((String)localIterator.next());
      localStringBuilder2.append("|");
    }
    c = localStringBuilder1;
  }
}

/* Location:
 * Qualified Name:     ben
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */