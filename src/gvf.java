public final class gvf
  implements grn
{
  private final String a;
  private final String b;
  
  public gvf(grn paramgrn)
  {
    a = paramgrn.R_();
    b = paramgrn.b();
  }
  
  public boolean O_()
  {
    return true;
  }
  
  public String R_()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DataItemAssetEntity[");
    localStringBuilder.append("@");
    localStringBuilder.append(Integer.toHexString(hashCode()));
    if (a == null) {
      localStringBuilder.append(",noid");
    }
    for (;;)
    {
      localStringBuilder.append(", key=");
      localStringBuilder.append(b);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      localStringBuilder.append(",");
      localStringBuilder.append(a);
    }
  }
}

/* Location:
 * Qualified Name:     gvf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */