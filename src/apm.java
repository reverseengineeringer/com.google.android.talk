import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class apm<Model, Data>
  implements apg<Model, Data>
{
  private final List<apg<Model, Data>> a;
  private final ic<List<Exception>> b;
  
  apm(List<apg<Model, Data>> paramList, ic<List<Exception>> paramic)
  {
    a = paramList;
    b = paramic;
  }
  
  public aph<Data> a(Model paramModel, int paramInt1, int paramInt2, aja paramaja)
  {
    int j = a.size();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    aiw localaiw = null;
    if (i < j)
    {
      Object localObject = (apg)a.get(i);
      if (!((apg)localObject).a(paramModel)) {
        break label145;
      }
      localObject = ((apg)localObject).a(paramModel, paramInt1, paramInt2, paramaja);
      if (localObject == null) {
        break label145;
      }
      localaiw = a;
      localArrayList.add(c);
    }
    label145:
    for (;;)
    {
      i += 1;
      break;
      if (!localArrayList.isEmpty()) {
        return new aph(localaiw, new apn(localArrayList, b));
      }
      return null;
    }
  }
  
  public boolean a(Model paramModel)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      if (((apg)localIterator.next()).a(paramModel)) {
        return true;
      }
    }
    return false;
  }
  
  public String toString()
  {
    String str1 = String.valueOf("MultiModelLoader{modelLoaders=");
    String str2 = String.valueOf(Arrays.toString(a.toArray(new apg[a.size()])));
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     apm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */