public final class ieo
{
  public final long a;
  public final long b;
  public final boolean c;
  public final boolean d;
  
  public ieo(long paramLong1, long paramLong2, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramLong1;
    b = paramLong2;
    c = paramBoolean1;
    d = paramBoolean2;
  }
  
  public String toString()
  {
    long l1 = a;
    long l2 = b;
    boolean bool1 = c;
    boolean bool2 = d;
    return 110 + "[QuotaInfo; limit: " + l1 + ", used: " + l2 + ", unlimited quota? " + bool1 + ", low quota? " + bool2 + "]";
  }
}

/* Location:
 * Qualified Name:     ieo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */