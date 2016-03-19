import android.content.res.Resources;
import android.graphics.Picture;
import android.util.DisplayMetrics;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;

public final class eqf
  implements Runnable
{
  public eqf(Resources paramResources, int paramInt, ImageView paramImageView, eqh parameqh, boolean paramBoolean) {}
  
  public void run()
  {
    Picture localPicture = mgw.a(a.openRawResource(b), Integer.valueOf(0), Integer.valueOf(0), mgw.a).a();
    int i = localPicture.getHeight();
    int j = localPicture.getWidth();
    int k = c.getMeasuredHeight();
    int m = c.getMeasuredWidth();
    Object localObject = d;
    Resources localResources = a;
    float f;
    switch (eqg.a[localObject.ordinal()])
    {
    default: 
      localObject = String.valueOf(localObject);
      hbs.a(String.valueOf(localObject).length() + 21 + "Invalid scaleMethod: " + (String)localObject);
      f = 0.0F;
      label159:
      if (f > Float.MIN_VALUE) {
        break;
      }
    }
    do
    {
      return;
      if (i * m < k * j)
      {
        if (localObject == eqh.a)
        {
          localObject = eqh.e;
          break;
        }
        localObject = eqh.d;
        break;
      }
      if (localObject == eqh.a)
      {
        localObject = eqh.d;
        break;
      }
      localObject = eqh.e;
      break;
      f = getDisplayMetricsdensity;
      break label159;
      if (i == 0) {
        throw new IllegalArgumentException("Source height cannot be 0");
      }
      f = k / i;
      break label159;
      if (j == 0) {
        throw new IllegalArgumentException("Source width cannot be 0");
      }
      f = m / j;
      break label159;
      c.setImageDrawable(new eqi(localPicture, f));
    } while (!e);
    localObject = c.getLayoutParams();
    height = -2;
    width = -2;
    c.setLayoutParams((ViewGroup.LayoutParams)localObject);
  }
}

/* Location:
 * Qualified Name:     eqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */