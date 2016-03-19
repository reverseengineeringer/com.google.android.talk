import android.os.Build.VERSION;
import android.view.View;
import com.google.android.apps.hangouts.floatingactionbutton.impl.FloatingActionButton;

final class bxe
  extends ly
{
  bxe(bwy parambwy) {}
  
  public void a(int paramInt)
  {
    if (a.g == null) {
      return;
    }
    switch (paramInt)
    {
    default: 
      hbs.a(25 + "Unknown page: " + paramInt);
    }
    for (;;)
    {
      super.a(paramInt);
      return;
      a.g.a(bwy.a, bwy.b(bwy.a));
      if (ezc.a(a.f))
      {
        a.h.setVisibility(4);
        continue;
        int i = a.i();
        a.g.a(i, bwy.b(i));
        a.h.setVisibility(0);
      }
    }
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (a.g == null) {
      return;
    }
    int i = a.j;
    if (paramInt2 == 0) {
      a.a(paramInt1);
    }
    if (paramInt1 == 0)
    {
      paramInt2 = (int)(a.j + (a.k - a.j) * paramFloat);
      a.g.a(bwy.a, bwy.b(bwy.a), bwy.d, bwy.b(bwy.d), paramFloat);
    }
    while (Build.VERSION.SDK_INT >= 17)
    {
      a.b(paramInt2);
      return;
      paramInt2 = i;
      if (paramInt1 == 1) {
        paramInt2 = a.k;
      }
    }
    a.a(paramInt2);
  }
}

/* Location:
 * Qualified Name:     bxe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */