final class bns
  implements cje
{
  bns(bng parambng) {}
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject;
    if (!paramBoolean2)
    {
      localObject = a;
      if (paramBoolean1) {
        break label48;
      }
      paramBoolean2 = true;
      ((bng)localObject).a(paramBoolean2);
      if (!paramBoolean1) {
        break label53;
      }
      exa.a(a.getView());
    }
    for (;;)
    {
      localObject = far.a;
      if (localObject != null) {
        ((far)localObject).a(paramBoolean1);
      }
      return;
      label48:
      paramBoolean2 = false;
      break;
      label53:
      exa.a(a.getView(), false);
    }
  }
}

/* Location:
 * Qualified Name:     bns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */