public final class euv
{
  public final int a;
  public final int b;
  public final long c;
  
  public euv(int paramInt1, int paramInt2, long paramLong)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramLong;
  }
  
  public String toString()
  {
    String str = String.valueOf("LastEmergencyCallInfo, networkType: ");
    int i = a;
    int j = b;
    long l = c;
    return String.valueOf(str).length() + 74 + str + i + ", carrierId: " + j + ", timestampMillis: " + l;
  }
}

/* Location:
 * Qualified Name:     euv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */