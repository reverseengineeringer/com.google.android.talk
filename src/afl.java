final class afl
  implements afa
{
  private StringBuilder b;
  private boolean c;
  
  afl(aeu paramaeu) {}
  
  public void a()
  {
    b = new StringBuilder();
    StringBuilder localStringBuilder = b;
    int i = a.hashCode();
    localStringBuilder.append(20 + "[[hash: " + i + "\n");
  }
  
  public void a(afb paramafb)
  {
    b.append(String.valueOf(paramafb.toString()).concat(": "));
    c = true;
  }
  
  public boolean a(aez paramaez)
  {
    if (!c)
    {
      b.append(", ");
      c = false;
    }
    b.append("[").append(paramaez.toString()).append("]");
    return true;
  }
  
  public void b()
  {
    b.append("]]\n");
  }
  
  public void c()
  {
    b.append("\n");
  }
  
  public String toString()
  {
    return b.toString();
  }
}

/* Location:
 * Qualified Name:     afl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */