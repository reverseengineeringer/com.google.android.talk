import com.google.android.gms.wearable.Asset;
import java.util.ArrayList;

public final class ffv
{
  private grp a;
  
  public ffv()
  {
    this(new grp());
  }
  
  public ffv(grp paramgrp)
  {
    a = paramgrp;
  }
  
  public String a()
  {
    return a.b("18", "");
  }
  
  public void a(int paramInt)
  {
    a.a("22", paramInt - 1);
  }
  
  public void a(long paramLong)
  {
    a.a("26", paramLong);
  }
  
  public void a(Asset paramAsset)
  {
    a.a("5", paramAsset);
  }
  
  public void a(String paramString)
  {
    a.a("7", paramString);
  }
  
  public void a(ArrayList<grp> paramArrayList)
  {
    a.a("16", paramArrayList);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a("11", paramBoolean);
  }
  
  public Asset b()
  {
    return a.g("5");
  }
  
  public void b(int paramInt)
  {
    a.a("34", paramInt);
  }
  
  public void b(String paramString)
  {
    a.a("18", paramString);
  }
  
  public void b(ArrayList<String> paramArrayList)
  {
    a.c("30", paramArrayList);
  }
  
  public void b(boolean paramBoolean)
  {
    a.a("14", paramBoolean);
  }
  
  public long c()
  {
    return a.e("26");
  }
  
  public void c(String paramString)
  {
    a.a("23", paramString);
  }
  
  public void c(boolean paramBoolean)
  {
    a.a("33", paramBoolean);
  }
  
  public void d(String paramString)
  {
    a.a("27", paramString);
  }
  
  public void e(String paramString)
  {
    a.a("31", paramString);
  }
}

/* Location:
 * Qualified Name:     ffv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */