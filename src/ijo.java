import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ijo
  extends ijc
{
  private List<ijc> a = new ArrayList();
  private boolean c = true;
  private int d = 0;
  private boolean e = false;
  
  public ijo(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ikc.aG, paramInt, 0);
    c = paramContext.getBoolean(ikc.aH, c);
    paramContext.recycle();
  }
  
  private boolean e(ijc paramijc)
  {
    try
    {
      paramijc.F();
      boolean bool = a.remove(paramijc);
      return bool;
    }
    finally {}
  }
  
  public void D()
  {
    super.D();
    e = true;
    int j = a();
    int i = 0;
    while (i < j)
    {
      a(i).D();
      i += 1;
    }
  }
  
  protected void F()
  {
    super.F();
    e = false;
  }
  
  public int a()
  {
    return a.size();
  }
  
  public ijc a(int paramInt)
  {
    return (ijc)a.get(paramInt);
  }
  
  public ijc a(CharSequence paramCharSequence)
  {
    if (TextUtils.equals(s(), paramCharSequence)) {
      return this;
    }
    int j = a();
    int i = 0;
    while (i < j)
    {
      ijc localijc = a(i);
      String str = localijc.s();
      if ((str != null) && (str.equals(paramCharSequence))) {
        return localijc;
      }
      if ((localijc instanceof ijo))
      {
        localijc = ((ijo)localijc).a(paramCharSequence);
        if (localijc != null) {
          return localijc;
        }
      }
      i += 1;
    }
    return null;
  }
  
  public void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public boolean b(ijc paramijc)
  {
    paramijc.g(E());
    return true;
  }
  
  public void c()
  {
    try
    {
      List localList = a;
      int i = localList.size() - 1;
      while (i >= 0)
      {
        e((ijc)localList.get(0));
        i -= 1;
      }
      B();
      return;
    }
    finally {}
  }
  
  protected void c(Bundle paramBundle)
  {
    super.c(paramBundle);
    int j = a();
    int i = 0;
    while (i < j)
    {
      a(i).c(paramBundle);
      i += 1;
    }
  }
  
  public boolean c(ijc paramijc)
  {
    if (a.contains(paramijc)) {
      return true;
    }
    if (paramijc.n() == Integer.MAX_VALUE)
    {
      if (c)
      {
        i = d;
        d = (i + 1);
        paramijc.f(i);
      }
      if ((paramijc instanceof ijo)) {
        ((ijo)paramijc).a(c);
      }
    }
    int j = Collections.binarySearch(a, paramijc);
    int i = j;
    if (j < 0) {
      i = -j - 1;
    }
    if (!b(paramijc)) {
      return false;
    }
    try
    {
      a.add(i, paramijc);
      paramijc.a(C());
      if (e) {
        paramijc.D();
      }
      B();
      return true;
    }
    finally {}
  }
  
  public boolean d()
  {
    return true;
  }
  
  public boolean d(ijc paramijc)
  {
    boolean bool = e(paramijc);
    B();
    return bool;
  }
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    int j = a();
    int i = 0;
    while (i < j)
    {
      a(i).e(paramBundle);
      i += 1;
    }
  }
  
  public void e(boolean paramBoolean)
  {
    super.e(paramBoolean);
    int j = a();
    int i = 0;
    while (i < j)
    {
      a(i).g(paramBoolean);
      i += 1;
    }
  }
  
  void f()
  {
    try
    {
      Collections.sort(a);
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     ijo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */