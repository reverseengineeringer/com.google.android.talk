public final class icf
  implements iao
{
  public void a(bg parambg)
  {
    ice.a(parambg);
  }
  
  public void a(bg parambg, String paramString, boolean paramBoolean)
  {
    if (!ice.b(parambg)) {
      ice.a(parambg, paramString, paramBoolean);
    }
  }
  
  public void b(bg parambg)
  {
    a(parambg);
    new icg().a(parambg, "connection_error");
  }
  
  public void c(bg parambg)
  {
    a(parambg);
    new icd().a(parambg, "irrecoverable_error");
  }
}

/* Location:
 * Qualified Name:     icf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */