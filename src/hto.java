import android.util.Property;
import android.view.View;

public final class hto
{
  public static final Property<View, Float> a = Property.of(View.class, Float.class, "pivotX");
  public static final Property<View, Float> b = Property.of(View.class, Float.class, "pivotY");
  public static final Property<View, Float> c = new htp(Float.class, "width");
  public static final Property<View, Float> d = new htq(Float.class, "height");
  public static final Property<View, Float> e = new htr(c, View.X, "anchorPositionX");
  public static final Property<View, Float> f = new htr(d, View.Y, "anchorPositionY");
}

/* Location:
 * Qualified Name:     hto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */