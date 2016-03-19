import android.support.v4.animation.AnimatorProvider;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Array;

public final class gbi<M extends gbh<M>, T>
  implements AnimatorProvider
{
  public static final int e = 2131558401;
  public static final int f = 2131559134;
  public static final int g = 2131559135;
  public static final int h = 2131558430;
  public static final int i = 2131559101;
  public static final int j = 2131558630;
  public static final int k = 2131559196;
  public static final int l = 2131559197;
  public static final int m = 2131559195;
  public static final int n = 2131559202;
  public static final int o = 2131559200;
  public static final int p = 2131559204;
  public static final int q = 2131559198;
  public static final int r = 2131559203;
  public static final int s = 2131559201;
  public static final int t = 2131559205;
  public static final int u = 2131559199;
  public final int a;
  public final Class<T> b;
  public final int c;
  public final boolean d;
  
  private int b(Object paramObject)
  {
    int i2 = 0;
    int i4 = Array.getLength(paramObject);
    int i1 = 0;
    while (i1 < i4)
    {
      int i3 = i2;
      if (Array.get(paramObject, i1) != null) {
        i3 = i2 + c(Array.get(paramObject, i1));
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private void b(Object paramObject, gbg paramgbg)
  {
    for (;;)
    {
      try
      {
        paramgbg.d(c);
        switch (a)
        {
        case 10: 
          throw new IllegalArgumentException("Unknown type " + a);
        }
      }
      catch (IOException paramObject)
      {
        throw new IllegalStateException((Throwable)paramObject);
      }
      paramObject = (gbn)paramObject;
      int i1 = c;
      paramgbg.a((gbn)paramObject);
      paramgbg.c(i1 >>> 3, 4);
      return;
      paramgbg.b((gbn)paramObject);
      return;
    }
  }
  
  private int c(Object paramObject)
  {
    int i1 = c >>> 3;
    switch (a)
    {
    default: 
      throw new IllegalArgumentException("Unknown type " + a);
    case 10: 
      paramObject = (gbn)paramObject;
      return (gbg.c(i1) << 1) + ((gbn)paramObject).g();
    }
    return gbg.b(i1, (gbn)paramObject);
  }
  
  private void c(Object paramObject, gbg paramgbg)
  {
    int i2 = Array.getLength(paramObject);
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = Array.get(paramObject, i1);
      if (localObject != null) {
        b(localObject, paramgbg);
      }
      i1 += 1;
    }
  }
  
  int a(Object paramObject)
  {
    if (d) {
      return b(paramObject);
    }
    return c(paramObject);
  }
  
  public void a(View paramView) {}
  
  void a(Object paramObject, gbg paramgbg)
  {
    if (d)
    {
      c(paramObject, paramgbg);
      return;
    }
    b(paramObject, paramgbg);
  }
}

/* Location:
 * Qualified Name:     gbi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */