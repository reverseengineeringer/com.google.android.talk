import android.graphics.Bitmap;

final class hvd
  implements hyc
{
  hvd(hva paramhva) {}
  
  public Object a(igq paramigq, Object paramObject)
  {
    Bitmap localBitmap = null;
    if ((paramObject instanceof Bitmap)) {
      localBitmap = (Bitmap)paramObject;
    }
    for (;;)
    {
      if (localBitmap == null)
      {
        return paramObject;
        if ((paramObject instanceof hxu))
        {
          hxu localhxu = (hxu)paramObject;
          localBitmap = a;
          if ((b < localBitmap.getWidth()) || (c < localBitmap.getHeight())) {
            localBitmap = Bitmap.createBitmap(localBitmap, 0, 0, b, c);
          }
        }
      }
      else
      {
        int i = ((hvb)paramigq).a();
        if (localBitmap.getWidth() >= i)
        {
          paramigq = localBitmap;
          if (localBitmap.getHeight() >= i) {}
        }
        else
        {
          paramigq = a.b.a(i, i);
          paramObject = ipi.a(localBitmap, i, i, paramigq);
          if (paramObject != paramigq) {
            a.b.a(paramigq);
          }
          paramigq = localBitmap;
          if (paramObject != localBitmap)
          {
            a.b.a(localBitmap);
            paramigq = (igq)paramObject;
          }
        }
        return iky.a(paramigq);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hvd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */