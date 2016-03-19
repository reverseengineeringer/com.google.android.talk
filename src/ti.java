class ti<T>
{
  final T d;
  
  ti(T paramT)
  {
    if (paramT == null) {
      throw new IllegalArgumentException("Wrapped Object can not be null.");
    }
    d = paramT;
  }
}

/* Location:
 * Qualified Name:     ti
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */