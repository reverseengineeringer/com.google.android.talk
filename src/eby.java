import android.content.Context;

public final class eby
  extends ebx
{
  private dvm a;
  private int e;
  private eer f;
  private boolean g;
  
  public eby(Context paramContext, bfd parambfd, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, String paramString5, int paramInt2, int paramInt3, String paramString6, String paramString7, boolean paramBoolean, geo paramgeo, long paramLong, int paramInt4, dvm paramdvm, int paramInt5, eer parameer)
  {
    super(paramContext, parambfd, paramString1, paramString2, paramString3, paramString4, paramInt1, paramString5, paramInt2, paramInt3, paramString6, paramString7, paramBoolean, paramgeo, paramLong, paramInt4);
    a = paramdvm;
    e = paramInt5;
    f = parameer;
    g = false;
  }
  
  public boolean a(dvm paramdvm, int paramInt, eer parameer)
  {
    return g;
  }
  
  protected Long b(bfz parambfz, long paramLong, String paramString1, boolean paramBoolean, int paramInt, String paramString2, bgd parambgd)
  {
    a(parambfz, paramLong, paramString1, paramBoolean, paramInt, paramString2, parambgd);
    g = super.a(a, e, f);
    return Long.valueOf(a(parambfz, paramLong, paramString1, paramBoolean, paramInt, paramString2));
  }
}

/* Location:
 * Qualified Name:     eby
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */