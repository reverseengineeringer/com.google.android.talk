public final class lwb<MessageType extends lwc<MessageType, BuilderType>, BuilderType extends lwb<MessageType, BuilderType>>
  extends lwa<MessageType, BuilderType>
  implements lwr
{
  public lwb()
  {
    this(mdr.e);
  }
  
  private lwb(MessageType paramMessageType)
  {
    super(paramMessageType);
    a).d = a).d.c();
  }
  
  private BuilderType m()
  {
    return (lwb)super.c();
  }
  
  protected void b()
  {
    if (!b) {
      return;
    }
    super.b();
    a).d = a).d.c();
  }
  
  public final MessageType l()
  {
    if (b) {
      return (lwc)a;
    }
    a).d.a();
    return (lwc)super.d();
  }
}

/* Location:
 * Qualified Name:     lwb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */