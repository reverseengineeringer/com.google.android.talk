final class krm
  extends ksl<Object, Object>
{
  static final krm a = new krm();
  private static final long serialVersionUID = 0L;
  
  private krm()
  {
    super(kxm.b, 0);
  }
  
  private Object readResolve()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     krm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */