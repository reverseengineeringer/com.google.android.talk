import java.util.Set;

public abstract interface hqe
  extends hqb
{
  public abstract hqe b(String paramString, float paramFloat);
  
  public abstract hqe b(String paramString, Set<String> paramSet);
  
  public abstract hqe c(String paramString, int paramInt);
  
  public abstract hqe c(String paramString, long paramLong);
  
  public abstract hqe c(String paramString1, String paramString2);
  
  public abstract hqe c(String paramString, boolean paramBoolean);
  
  public abstract hqe h(String paramString);
  
  public abstract hqe i(String paramString);
}

/* Location:
 * Qualified Name:     hqe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */