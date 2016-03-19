final class hhc<T>
  extends hbw<Void, Void, T>
{
  private final hgz<T> b;
  
  hhc(hgz<T> paramhgz)
  {
    super(hbw.d);
    hgz localhgz;
    b = localhgz;
  }
  
  protected void onPostExecute(T paramT)
  {
    b.a(paramT);
  }
  
  protected void onPreExecute()
  {
    b.a();
  }
}

/* Location:
 * Qualified Name:     hhc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */