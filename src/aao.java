import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class aao
{
  private static final List<Object> p = Collections.EMPTY_LIST;
  public final View a;
  public int b = -1;
  int c = -1;
  public long d = -1L;
  int e = -1;
  int f = -1;
  public aao g = null;
  public aao h = null;
  int i;
  List<Object> j = null;
  List<Object> k = null;
  aag l = null;
  boolean m = false;
  int n = 0;
  RecyclerView o;
  private int q = 0;
  
  public aao(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("itemView may not be null");
    }
    a = paramView;
  }
  
  public void a()
  {
    c = -1;
    f = -1;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    i = (i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    b(8);
    a(paramInt2, paramBoolean);
    b = paramInt1;
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (c == -1) {
      c = b;
    }
    if (f == -1) {
      f = b;
    }
    if (paramBoolean) {
      f += paramInt;
    }
    b += paramInt;
    if (a.getLayoutParams() != null) {
      a.getLayoutParams()).e = true;
    }
  }
  
  void a(aag paramaag, boolean paramBoolean)
  {
    l = paramaag;
    m = paramBoolean;
  }
  
  public void a(Object paramObject)
  {
    if (paramObject == null) {
      b(1024);
    }
    while ((i & 0x400) != 0) {
      return;
    }
    if (j == null)
    {
      j = new ArrayList();
      k = Collections.unmodifiableList(j);
    }
    j.add(paramObject);
  }
  
  public final void a(boolean paramBoolean)
  {
    int i1;
    if (paramBoolean)
    {
      i1 = q - 1;
      q = i1;
      if (q >= 0) {
        break label61;
      }
      q = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
    }
    label61:
    do
    {
      return;
      i1 = q + 1;
      break;
      if ((!paramBoolean) && (q == 1))
      {
        i |= 0x10;
        return;
      }
    } while ((!paramBoolean) || (q != 0));
    i &= 0xFFFFFFEF;
  }
  
  public boolean a(int paramInt)
  {
    return (i & paramInt) != 0;
  }
  
  public void b()
  {
    if (c == -1) {
      c = b;
    }
  }
  
  public void b(int paramInt)
  {
    i |= paramInt;
  }
  
  public boolean c()
  {
    return (i & 0x80) != 0;
  }
  
  public final int d()
  {
    if (f == -1) {
      return b;
    }
    return f;
  }
  
  boolean e()
  {
    return l != null;
  }
  
  void f()
  {
    l.b(this);
  }
  
  boolean g()
  {
    return (i & 0x20) != 0;
  }
  
  void h()
  {
    i &= 0xFFFFFFDF;
  }
  
  public void i()
  {
    i &= 0xFEFF;
  }
  
  public boolean j()
  {
    return (i & 0x4) != 0;
  }
  
  boolean k()
  {
    return (i & 0x2) != 0;
  }
  
  boolean l()
  {
    return (i & 0x1) != 0;
  }
  
  public boolean m()
  {
    return (i & 0x8) != 0;
  }
  
  public boolean n()
  {
    return (i & 0x100) != 0;
  }
  
  boolean o()
  {
    return ((i & 0x200) != 0) || (j());
  }
  
  void p()
  {
    if (j != null) {
      j.clear();
    }
    i &= 0xFBFF;
  }
  
  public List<Object> q()
  {
    if ((i & 0x400) == 0)
    {
      if ((j == null) || (j.size() == 0)) {
        return p;
      }
      return k;
    }
    return p;
  }
  
  void r()
  {
    i = 0;
    b = -1;
    c = -1;
    d = -1L;
    f = -1;
    q = 0;
    g = null;
    h = null;
    p();
    n = 0;
  }
  
  public final boolean s()
  {
    if ((i & 0x10) == 0)
    {
      View localView = a;
      if (!ks.a.l(localView)) {
        return true;
      }
    }
    return false;
  }
  
  public boolean t()
  {
    return (i & 0x2) != 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + b + " id=" + d + ", oldPos=" + c + ", pLpos:" + f);
    StringBuilder localStringBuilder2;
    if (e())
    {
      localStringBuilder2 = localStringBuilder1.append(" scrap ");
      if (!m) {
        break label271;
      }
    }
    label271:
    for (String str = "[changeScrap]";; str = "[attachedScrap]")
    {
      localStringBuilder2.append(str);
      if (j()) {
        localStringBuilder1.append(" invalid");
      }
      if (!l()) {
        localStringBuilder1.append(" unbound");
      }
      if (k()) {
        localStringBuilder1.append(" update");
      }
      if (m()) {
        localStringBuilder1.append(" removed");
      }
      if (c()) {
        localStringBuilder1.append(" ignored");
      }
      if (n()) {
        localStringBuilder1.append(" tmpDetached");
      }
      if (!s()) {
        localStringBuilder1.append(" not recyclable(" + q + ")");
      }
      if (o()) {
        localStringBuilder1.append(" undefined adapter position");
      }
      if (a.getParent() == null) {
        localStringBuilder1.append(" no parent");
      }
      localStringBuilder1.append("}");
      return localStringBuilder1.toString();
    }
  }
}

/* Location:
 * Qualified Name:     aao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */