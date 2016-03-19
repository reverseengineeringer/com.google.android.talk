import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewParent;

public final class ad
{
  public static final ThreadLocal<Matrix> a = new ThreadLocal();
  public static final ThreadLocal<RectF> b = new ThreadLocal();
  public static final Matrix c = new Matrix();
  
  public static void a(ViewParent paramViewParent, View paramView, Matrix paramMatrix)
  {
    Object localObject = paramView.getParent();
    if (((localObject instanceof View)) && (localObject != paramViewParent))
    {
      localObject = (View)localObject;
      a(paramViewParent, (View)localObject, paramMatrix);
      paramMatrix.preTranslate(-((View)localObject).getScrollX(), -((View)localObject).getScrollY());
    }
    paramMatrix.preTranslate(paramView.getLeft(), paramView.getTop());
    if (!paramView.getMatrix().isIdentity()) {
      paramMatrix.preConcat(paramView.getMatrix());
    }
  }
}

/* Location:
 * Qualified Name:     ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */