import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;

public abstract class cbf
  extends BaseAdapter
{
  private final exw a;
  private final Resources b;
  private final AbsListView.LayoutParams c;
  private final String d;
  private eya[] e;
  
  public cbf(Resources paramResources, exw paramexw)
  {
    b = paramResources;
    d = paramResources.getResourcePackageName(aal.cg);
    a = paramexw;
    int i = paramResources.getDimensionPixelSize(aal.dV) + paramResources.getDimensionPixelSize(aal.dU) * 2;
    c = new AbsListView.LayoutParams(i, i);
  }
  
  /* Error */
  private void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 58	cbf:e	[Leya;
    //   4: ifnonnull +30 -> 34
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 58	cbf:e	[Leya;
    //   13: ifnonnull +19 -> 32
    //   16: aload_0
    //   17: aload_0
    //   18: invokevirtual 62	cbf:getCount	()I
    //   21: bipush 21
    //   23: idiv
    //   24: iconst_1
    //   25: iadd
    //   26: anewarray 64	eya
    //   29: putfield 58	cbf:e	[Leya;
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_0
    //   35: getfield 58	cbf:e	[Leya;
    //   38: iload_1
    //   39: aaload
    //   40: ifnonnull +103 -> 143
    //   43: aload_0
    //   44: monitorenter
    //   45: aload_0
    //   46: getfield 58	cbf:e	[Leya;
    //   49: iload_1
    //   50: aaload
    //   51: ifnonnull +82 -> 133
    //   54: iload_1
    //   55: bipush 21
    //   57: imul
    //   58: istore_3
    //   59: bipush 21
    //   61: aload_0
    //   62: invokevirtual 62	cbf:getCount	()I
    //   65: iload_3
    //   66: isub
    //   67: invokestatic 70	java/lang/Math:min	(II)I
    //   70: istore 4
    //   72: iload 4
    //   74: newarray <illegal type>
    //   76: astore 5
    //   78: iconst_0
    //   79: istore_2
    //   80: iload_2
    //   81: iload 4
    //   83: if_icmpge +35 -> 118
    //   86: aload 5
    //   88: iload_2
    //   89: aload_0
    //   90: iload_3
    //   91: iload_2
    //   92: iadd
    //   93: invokevirtual 74	cbf:getItem	(I)Ljava/lang/Object;
    //   96: checkcast 76	java/lang/Integer
    //   99: iconst_0
    //   100: invokestatic 79	aal:a	(Ljava/lang/Integer;I)I
    //   103: iastore
    //   104: iload_2
    //   105: iconst_1
    //   106: iadd
    //   107: istore_2
    //   108: goto -28 -> 80
    //   111: astore 5
    //   113: aload_0
    //   114: monitorexit
    //   115: aload 5
    //   117: athrow
    //   118: aload_0
    //   119: getfield 58	cbf:e	[Leya;
    //   122: iload_1
    //   123: aload_0
    //   124: getfield 37	cbf:a	Lexw;
    //   127: aload 5
    //   129: invokevirtual 84	exw:a	([I)Leya;
    //   132: aastore
    //   133: aload_0
    //   134: monitorexit
    //   135: return
    //   136: astore 5
    //   138: aload_0
    //   139: monitorexit
    //   140: aload 5
    //   142: athrow
    //   143: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	this	cbf
    //   0	144	1	paramInt	int
    //   79	29	2	i	int
    //   58	35	3	j	int
    //   70	14	4	k	int
    //   76	11	5	arrayOfInt1	int[]
    //   111	17	5	arrayOfInt2	int[]
    //   136	5	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	32	111	finally
    //   32	34	111	finally
    //   113	115	111	finally
    //   45	54	136	finally
    //   59	78	136	finally
    //   86	104	136	finally
    //   118	133	136	finally
    //   133	135	136	finally
    //   138	140	136	finally
  }
  
  public void a()
  {
    if (e != null)
    {
      int i = 0;
      while (i < e.length)
      {
        if (e[i] != null) {
          e[i].cancel(true);
        }
        i += 1;
      }
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public Object getItem(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < getCount())) {
      return Integer.valueOf((int)getItemId(paramInt));
    }
    return Integer.valueOf(8194);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i;
    int j;
    if (paramView == null)
    {
      paramView = new ImageView(paramViewGroup.getContext());
      paramView.setLayoutParams(c);
      i = b.getDimensionPixelSize(aal.dU);
      paramView.setPadding(i, i, i, i);
      i = paramInt / 21;
      a(i);
      j = aal.a((Integer)getItem(paramInt), 0);
      paramViewGroup = String.format("spoken_emoji_%04X", new Object[] { Integer.valueOf(j) });
      paramInt = b.getIdentifier(paramViewGroup, "string", d);
      paramViewGroup = b;
      if (paramInt == 0) {
        break label161;
      }
    }
    for (;;)
    {
      paramView.setContentDescription(paramViewGroup.getString(paramInt));
      a.a(b, j, e[i], paramView);
      return paramView;
      paramView = (ImageView)paramView;
      paramView.setImageDrawable(null);
      break;
      label161:
      paramInt = aal.cg;
    }
  }
  
  public boolean isEnabled(int paramInt)
  {
    return paramInt < getCount();
  }
}

/* Location:
 * Qualified Name:     cbf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */