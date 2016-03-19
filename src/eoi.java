final class eoi
{
  long a;
  long b;
  int c;
  int d;
  int e;
  int f;
  int g;
  int h;
  long i;
  
  public eoi()
  {
    a();
  }
  
  public void a()
  {
    a = 0L;
    b = 0L;
    c = 0;
    d = 0;
    e = 0;
    f = 0;
    g = 0;
    h = 0;
    i = Long.MAX_VALUE;
  }
  
  public void a(long paramLong)
  {
    if (paramLong < i) {
      i = paramLong;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Sync batch stats: ");
    localStringBuilder.append("duration = ").append(a).append(", ");
    localStringBuilder.append("txnlen = ").append(b).append(", ");
    localStringBuilder.append("count = ").append(d).append("/").append(c).append(", ");
    localStringBuilder.append("added = ").append(f).append("/").append(e).append(", ");
    localStringBuilder.append("deleted = ").append(h).append("/").append(g).append(", ");
    localStringBuilder.append("timestamp = ").append(i / 1000L).append(".");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     eoi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */