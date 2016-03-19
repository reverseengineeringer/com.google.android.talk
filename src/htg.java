public class htg
{
  public float a;
  public float b;
  public float c;
  public float d;
  public float e;
  public float f;
  public float g;
  public float h;
  
  public htg() {}
  
  private htg(htg paramhtg)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
  }
  
  public float a(float paramFloat)
  {
    if (paramFloat == 0.0F) {
      return a;
    }
    if (paramFloat == 1.0F) {
      return g;
    }
    float f1 = a;
    f1 += (c - f1) * paramFloat;
    float f2 = c;
    f2 += (e - f2) * paramFloat;
    float f3 = e;
    float f4 = g;
    f1 += (f2 - f1) * paramFloat;
    return f1 + (f2 + (f3 + (f4 - f3) * paramFloat - f2) * paramFloat - f1) * paramFloat;
  }
  
  public htg a()
  {
    return new htg(this);
  }
  
  public float b(float paramFloat)
  {
    if (paramFloat == 0.0F) {
      return b;
    }
    if (paramFloat == 1.0F) {
      return h;
    }
    float f1 = b;
    f1 += (d - f1) * paramFloat;
    float f2 = d;
    f2 += (f - f2) * paramFloat;
    float f3 = f;
    float f4 = h;
    f1 += (f2 - f1) * paramFloat;
    return f1 + (f2 + (f3 + (f4 - f3) * paramFloat - f2) * paramFloat - f1) * paramFloat;
  }
  
  public float c(float paramFloat)
  {
    float f3 = 1.0F;
    float f4 = 0.0F;
    float f1 = (paramFloat - a) / (g - a);
    if (f1 <= 0.0F) {}
    float f2;
    float f5;
    float f6;
    do
    {
      return f4;
      if (f1 >= 1.0F) {
        return 1.0F;
      }
      i = 0;
      f4 = 0.0F;
      f2 = 0.0F;
      if (i >= 8) {
        break;
      }
      f5 = a(f1);
      f6 = (a(f1 + 1.0E-6F) - f5) / 1.0E-6F;
      f4 = f1;
    } while (Math.abs(f5 - paramFloat) < 1.0E-6F);
    f4 = f5;
    if (Math.abs(f6) >= 1.0E-6F)
    {
      if (f5 < paramFloat) {
        f2 = f1;
      }
      for (;;)
      {
        f4 = (f5 - paramFloat) / f6;
        i += 1;
        f1 -= f4;
        f4 = f5;
        break;
        f3 = f1;
      }
    }
    int i = 0;
    if ((Math.abs(f4 - paramFloat) > 1.0E-6F) && (i < 8))
    {
      if (f4 < paramFloat)
      {
        f4 = (f1 + f3) / 2.0F;
        f2 = f1;
      }
      for (f1 = f4;; f1 = f4)
      {
        f4 = a(f1);
        i += 1;
        break;
        f4 = (f1 + f2) / 2.0F;
        f3 = f1;
      }
    }
    return f1;
  }
}

/* Location:
 * Qualified Name:     htg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */