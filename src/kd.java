import android.view.View;
import android.view.ViewParent;

public final class kd
{
  private final View a;
  private ViewParent b;
  private boolean c;
  private int[] d;
  
  public kd(View paramView)
  {
    a = paramView;
  }
  
  public void a(boolean paramBoolean)
  {
    if (c)
    {
      View localView = a;
      ks.a.D(localView);
    }
    c = paramBoolean;
  }
  
  public boolean a()
  {
    return c;
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    if ((a()) && (b != null))
    {
      ViewParent localViewParent = b;
      View localView = a;
      return ma.a.a(localViewParent, localView, paramFloat1, paramFloat2);
    }
    return false;
  }
  
  public boolean a(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((a()) && (b != null))
    {
      ViewParent localViewParent = b;
      View localView = a;
      return ma.a.a(localViewParent, localView, paramFloat1, paramFloat2, paramBoolean);
    }
    return false;
  }
  
  public boolean a(int paramInt)
  {
    if (b()) {
      return true;
    }
    if (a())
    {
      ViewParent localViewParent = a.getParent();
      View localView1 = a;
      while (localViewParent != null)
      {
        View localView2 = a;
        if (ma.a.a(localViewParent, localView1, localView2, paramInt))
        {
          b = localViewParent;
          localView2 = a;
          ma.a.b(localViewParent, localView1, localView2, paramInt);
          return true;
        }
        if ((localViewParent instanceof View)) {
          localView1 = (View)localViewParent;
        }
        localViewParent = localViewParent.getParent();
      }
    }
    return false;
  }
  
  public boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    int j;
    int i;
    if ((a()) && (b != null)) {
      if ((paramInt1 != 0) || (paramInt2 != 0) || (paramInt3 != 0) || (paramInt4 != 0))
      {
        if (paramArrayOfInt == null) {
          break label139;
        }
        a.getLocationInWindow(paramArrayOfInt);
        j = paramArrayOfInt[0];
        i = paramArrayOfInt[1];
      }
    }
    for (;;)
    {
      ViewParent localViewParent = b;
      View localView = a;
      ma.a.a(localViewParent, localView, paramInt1, paramInt2, paramInt3, paramInt4);
      if (paramArrayOfInt != null)
      {
        a.getLocationInWindow(paramArrayOfInt);
        paramArrayOfInt[0] -= j;
        paramArrayOfInt[1] -= i;
      }
      return true;
      if (paramArrayOfInt != null)
      {
        paramArrayOfInt[0] = 0;
        paramArrayOfInt[1] = 0;
      }
      return false;
      label139:
      i = 0;
      j = 0;
    }
  }
  
  public boolean a(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int j;
    int i;
    if ((a()) && (b != null)) {
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        if (paramArrayOfInt2 == null) {
          break label176;
        }
        a.getLocationInWindow(paramArrayOfInt2);
        j = paramArrayOfInt2[0];
        i = paramArrayOfInt2[1];
      }
    }
    for (;;)
    {
      if (paramArrayOfInt1 == null)
      {
        if (d == null) {
          d = new int[2];
        }
        paramArrayOfInt1 = d;
      }
      for (;;)
      {
        paramArrayOfInt1[0] = 0;
        paramArrayOfInt1[1] = 0;
        ViewParent localViewParent = b;
        View localView = a;
        ma.a.a(localViewParent, localView, paramInt1, paramInt2, paramArrayOfInt1);
        if (paramArrayOfInt2 != null)
        {
          a.getLocationInWindow(paramArrayOfInt2);
          paramArrayOfInt2[0] -= j;
          paramArrayOfInt2[1] -= i;
        }
        return (paramArrayOfInt1[0] != 0) || (paramArrayOfInt1[1] != 0);
        if (paramArrayOfInt2 != null)
        {
          paramArrayOfInt2[0] = 0;
          paramArrayOfInt2[1] = 0;
        }
        return false;
      }
      label176:
      i = 0;
      j = 0;
    }
  }
  
  public boolean b()
  {
    return b != null;
  }
  
  public void c()
  {
    if (b != null)
    {
      ViewParent localViewParent = b;
      View localView = a;
      ma.a.a(localViewParent, localView);
      b = null;
    }
  }
}

/* Location:
 * Qualified Name:     kd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */