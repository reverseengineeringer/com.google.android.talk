final class lag
  implements Runnable
{
  final lbb<? extends V> a;
  
  lag(lbb<? extends V> paramlbb)
  {
    lbb locallbb;
    a = locallbb;
  }
  
  public void run()
  {
    if (b.value != this) {
      return;
    }
    b.a(a, this);
  }
}

/* Location:
 * Qualified Name:     lag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */