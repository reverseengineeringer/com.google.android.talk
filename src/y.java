import android.view.MotionEvent;
import android.view.View;

public class y<V extends View>
  extends aen
{
  private boolean a;
  qa b;
  fhz c;
  int d = 2;
  float e = 0.5F;
  float f = 0.0F;
  float g = 0.5F;
  private float ku = 0.0F;
  private boolean kv;
  private final qd kw = new z(this);
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.min(Math.max(0.0F, paramFloat2), 1.0F);
  }
  
  public void a()
  {
    d = 0;
  }
  
  public void a(fhz paramfhz)
  {
    c = paramfhz;
  }
  
  public boolean a(V paramV, MotionEvent paramMotionEvent)
  {
    if (b != null)
    {
      b.b(paramV);
      return true;
    }
    return false;
  }
  
  public boolean a(View paramView)
  {
    return true;
  }
  
  public boolean a(k paramk, V paramV, MotionEvent paramMotionEvent)
  {
    switch (jx.a(paramMotionEvent))
    {
    case 2: 
    default: 
      if (paramk.a(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
        break;
      }
    }
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      do
      {
        if (!a) {
          break;
        }
        return false;
      } while (!a);
      a = false;
      return false;
    }
    if (b == null) {
      if (!kv) {
        break label129;
      }
    }
    label129:
    for (paramk = qa.a(paramk, ku, kw);; paramk = qa.a(paramk, kw))
    {
      b = paramk;
      return b.a(paramMotionEvent);
    }
  }
  
  public void b()
  {
    f = a(0.0F, 0.1F, 1.0F);
  }
  
  public void c()
  {
    g = a(0.0F, 0.6F, 1.0F);
  }
  
  public int d()
  {
    if (b != null) {
      return b.a();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */