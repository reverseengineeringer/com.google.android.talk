import java.util.Map;

public abstract interface hbm<Resource extends lyi, AddRequest extends lyi, AddResponse extends lyi, ModifyRequest extends lyi, ModifyResponse extends lyi, RemoveRequest extends lyi, RemoveResponse extends lyi>
{
  public abstract void a(hbn<Resource> paramhbn);
  
  public abstract void a(AddRequest paramAddRequest, hbp<AddResponse> paramhbp);
  
  public abstract Map<String, Resource> b();
  
  public abstract void b(hbn<Resource> paramhbn);
  
  public abstract void b(ModifyRequest paramModifyRequest, hbp<ModifyResponse> paramhbp);
  
  public abstract void c(RemoveRequest paramRemoveRequest, hbp<RemoveResponse> paramhbp);
}

/* Location:
 * Qualified Name:     hbm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */