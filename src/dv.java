final class dv
  implements ed
{
  final String a;
  final int b;
  final String c;
  final boolean d;
  
  public dv(String paramString1, int paramInt, String paramString2)
  {
    a = paramString1;
    b = paramInt;
    c = paramString2;
    d = false;
  }
  
  public void a(cg paramcg)
  {
    if (d)
    {
      paramcg.a(a);
      return;
    }
    paramcg.a(a, b, c);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("CancelTask[");
    localStringBuilder.append("packageName:").append(a);
    localStringBuilder.append(", id:").append(b);
    localStringBuilder.append(", tag:").append(c);
    localStringBuilder.append(", all:").append(d);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */