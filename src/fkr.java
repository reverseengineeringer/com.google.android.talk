import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.api.Scope;
import java.util.Set;

public final class fkr
  implements ac
{
  public static final int c = 2131558402;
  public static final int d = 2131558723;
  public static final int e = 2131559134;
  public static final int f = 2131559135;
  public static final int g = 2131558568;
  public static final int h = 2131558552;
  public static final int i = 2131559028;
  public static final int j = 2131558816;
  public static final int k = 2131558834;
  public static final int l = 2131559119;
  public static final int m = 2131559116;
  public static final int n = 2131558786;
  public static final int o = 2131558553;
  public static final int p = 2131559117;
  public final Set<Scope> a;
  public final boolean b;
  
  public void a(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    Matrix localMatrix = (Matrix)ad.a.get();
    if (localMatrix == null)
    {
      localMatrix = new Matrix();
      ad.a.set(localMatrix);
    }
    for (;;)
    {
      ad.a(paramViewGroup, paramView, localMatrix);
      paramView = (RectF)ad.b.get();
      paramViewGroup = paramView;
      if (paramView == null) {
        paramViewGroup = new RectF();
      }
      paramViewGroup.set(paramRect);
      localMatrix.mapRect(paramViewGroup);
      paramRect.set((int)(left + 0.5F), (int)(top + 0.5F), (int)(right + 0.5F), (int)(bottom + 0.5F));
      return;
      localMatrix.set(ad.c);
    }
  }
}

/* Location:
 * Qualified Name:     fkr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */