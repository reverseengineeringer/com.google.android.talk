import android.graphics.Bitmap;

final class hve
  implements hyc
{
  hve(hva paramhva) {}
  
  public Object a(igq paramigq, Object paramObject)
  {
    paramigq = null;
    if ((paramObject instanceof Bitmap)) {
      paramigq = (Bitmap)paramObject;
    }
    for (;;)
    {
      if (paramigq == null)
      {
        return paramObject;
        if ((paramObject instanceof hxu))
        {
          hxu localhxu = (hxu)paramObject;
          paramigq = a;
          if ((b < paramigq.getWidth()) || (c < paramigq.getHeight())) {
            paramigq = Bitmap.createBitmap(paramigq, 0, 0, b, c);
          }
        }
      }
      else
      {
        paramObject = a.b.a(paramigq.getWidth(), paramigq.getHeight());
        paramObject = iky.a(paramigq, aal.H(a.a), (Bitmap)paramObject);
        a.b.a(paramigq);
        return paramObject;
      }
    }
  }
}

/* Location:
 * Qualified Name:     hve
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */