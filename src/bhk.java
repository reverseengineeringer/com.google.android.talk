public abstract class bhk
  implements bhi
{
  private final bhh a;
  
  protected bhk(bhh parambhh)
  {
    a = parambhh;
  }
  
  abstract boolean a(int paramInt);
  
  public boolean a(int paramInt, bhh parambhh)
  {
    if (a == parambhh) {
      return a(paramInt);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     bhk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */