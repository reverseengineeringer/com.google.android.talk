import android.content.Context;
import java.util.ArrayList;

public final class ezf
  extends hby
{
  private ArrayList<String> a;
  
  public ezf(Context paramContext, int[] paramArrayOfInt, ArrayList<String> paramArrayList)
  {
    super(paramContext, paramArrayOfInt);
    a = paramArrayList;
  }
  
  public void a(String paramString)
  {
    a.add(paramString);
  }
  
  protected void a(kli paramkli)
  {
    super.a(paramkli);
    hkv localhkv = cfc.a().g();
    if (localhkv != null)
    {
      a = new klh();
      a.k = localhkv.c();
      a.e = localhkv.f();
      a.b = localhkv.d();
      g = new jut();
      g.d = Integer.valueOf(localhkv.g());
    }
  }
}

/* Location:
 * Qualified Name:     ezf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */