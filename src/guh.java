class guh<T>
  extends gsp
{
  private fis<T> a;
  
  public guh(fis<T> paramfis)
  {
    a = paramfis;
  }
  
  public void a(T paramT)
  {
    fis localfis = a;
    if (localfis != null)
    {
      localfis.a(paramT);
      a = null;
    }
  }
}

/* Location:
 * Qualified Name:     guh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */