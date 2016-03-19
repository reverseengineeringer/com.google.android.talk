import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
import java.util.HashMap;

final class gnq
  extends fkg
{
  DataHolder b;
  Cursor c;
  goq d;
  goq e;
  ArrayList<String> f;
  HashMap<String, String> g;
  gnu h;
  gnu i;
  final boolean j;
  gnp k;
  private volatile boolean l;
  private final int m;
  private Context n;
  
  public gnq(Bundle paramBundle)
  {
    super(paramBundle, '\000');
    aal.d(paramBundle);
    Object localObject1;
    aal.d(localObject1);
    Object localObject2;
    aal.d(localObject2);
    int i1;
    goq localgoq1;
    if (i1 == localgoq1.a())
    {
      bool1 = true;
      aal.b(bool1);
      goq localgoq2;
      if (i1 != localgoq2.a()) {
        break label222;
      }
      bool1 = true;
      label56:
      aal.b(bool1);
      ArrayList localArrayList;
      if (i1 != localArrayList.size()) {
        break label228;
      }
      bool1 = true;
      label74:
      aal.b(bool1);
      b = paramBundle;
      c = ((Cursor)localObject1);
      m = i1;
      f = localArrayList;
      Context localContext;
      n = localContext;
      g = ((HashMap)localObject2);
      h = new gnr(this, n.getResources());
      i = new gns(this, n.getResources());
      d = localgoq1;
      e = localgoq2;
      int i2;
      if (((i2 & 0x1) != 0) && (aal.q(6))) {
        Log.e("PeopleAggregator", "PeopleExtraColumnBitmask.EMAILS is not supported in aggregation.  Ignored.");
      }
      if ((i2 & 0x2) == 0) {
        break label234;
      }
    }
    label222:
    label228:
    label234:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      j = bool1;
      Bundle localBundle;
      k = new gnp(localBundle);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label56;
      bool1 = false;
      break label74;
    }
  }
  
  public int a()
  {
    f();
    return m;
  }
  
  public void b()
  {
    if (l) {
      return;
    }
    l = true;
    b.f();
    c.close();
    b = null;
    c = null;
    d = null;
    e = null;
    f = null;
    g = null;
    n = null;
    h = null;
    i = null;
    k = null;
  }
  
  void f()
  {
    if (l) {
      throw new IllegalStateException("Already released");
    }
  }
}

/* Location:
 * Qualified Name:     gnq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */