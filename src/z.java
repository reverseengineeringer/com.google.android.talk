import android.view.View;

final class z
  extends qd
{
  private int b;
  
  z(y paramy) {}
  
  public int a(View paramView, int paramInt)
  {
    int i;
    int j;
    if (ks.a.u(paramView) == 1)
    {
      i = 1;
      if (a.d != 0) {
        break label78;
      }
      if (i == 0) {
        break label59;
      }
      j = b - paramView.getWidth();
      i = b;
    }
    for (;;)
    {
      return Math.min(Math.max(j, paramInt), i);
      i = 0;
      break;
      label59:
      j = b;
      i = b + paramView.getWidth();
      continue;
      label78:
      if (a.d == 1)
      {
        if (i != 0)
        {
          j = b;
          i = b + paramView.getWidth();
        }
        else
        {
          j = b - paramView.getWidth();
          i = b;
        }
      }
      else
      {
        j = b - paramView.getWidth();
        i = b + paramView.getWidth();
      }
    }
  }
  
  public void a(int paramInt)
  {
    if (a.c != null) {
      a.c.a(paramInt);
    }
  }
  
  public void a(View paramView, float paramFloat)
  {
    boolean bool = true;
    int j = paramView.getWidth();
    int i;
    if (paramFloat != 0.0F) {
      if (ks.a.u(paramView) == 1)
      {
        i = 1;
        if (a.d != 2) {
          break label106;
        }
        i = 1;
        label41:
        if (i == 0) {
          break label266;
        }
        if (paramView.getLeft() >= b) {
          break label255;
        }
        i = b - j;
        label64:
        if (!a.b.a(i, paramView.getTop())) {
          break label277;
        }
        ks.a(paramView, new aa(a, paramView, bool));
      }
    }
    label106:
    label255:
    label266:
    label277:
    while ((!bool) || (a.c == null))
    {
      return;
      i = 0;
      break;
      if (a.d == 0)
      {
        if (i != 0)
        {
          if (paramFloat < 0.0F)
          {
            i = 1;
            break label41;
          }
          i = 0;
          break label41;
        }
        if (paramFloat > 0.0F)
        {
          i = 1;
          break label41;
        }
        i = 0;
        break label41;
      }
      if (a.d == 1)
      {
        if (i != 0)
        {
          if (paramFloat > 0.0F)
          {
            i = 1;
            break label41;
          }
          i = 0;
          break label41;
        }
        if (paramFloat < 0.0F)
        {
          i = 1;
          break label41;
        }
        i = 0;
        break label41;
        i = paramView.getLeft();
        int k = b;
        int m = Math.round(paramView.getWidth() * a.e);
        if (Math.abs(i - k) >= m)
        {
          i = 1;
          break label41;
        }
        i = 0;
        break label41;
      }
      i = 0;
      break label41;
      i = b + j;
      break label64;
      i = b;
      bool = false;
      break label64;
    }
    a.c.a();
  }
  
  public boolean a(View paramView)
  {
    return a.a(paramView);
  }
  
  public void b(View paramView)
  {
    b = paramView.getLeft();
  }
  
  public void b(View paramView, int paramInt)
  {
    float f1 = b + paramView.getWidth() * a.f;
    float f2 = b + paramView.getWidth() * a.g;
    if (paramInt <= f1)
    {
      ks.c(paramView, 1.0F);
      return;
    }
    if (paramInt >= f2)
    {
      ks.c(paramView, 0.0F);
      return;
    }
    ks.c(paramView, y.a(0.0F, 1.0F - (paramInt - f1) / (f2 - f1), 1.0F));
  }
  
  public int c(View paramView)
  {
    return paramView.getWidth();
  }
  
  public int d(View paramView)
  {
    return paramView.getTop();
  }
}

/* Location:
 * Qualified Name:     z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */