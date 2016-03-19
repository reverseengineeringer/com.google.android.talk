.class public final Ljuz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljuz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljva;

.field public b:Ljva;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5848
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6853
    iput-object v0, p0, Ljuz;->a:Ljva;

    .line 6854
    iput-object v0, p0, Ljuz;->b:Ljva;

    .line 6855
    iput-object v0, p0, Ljuz;->c:Ljava/lang/Integer;

    .line 6856
    iput-object v0, p0, Ljuz;->eD:Llyd;

    .line 6857
    const/4 v0, -0x1

    iput v0, p0, Ljuz;->eE:I

    .line 5850
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6899
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6900
    sparse-switch v0, :sswitch_data_0

    .line 6904
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6905
    :sswitch_0
    return-object p0

    .line 6910
    :sswitch_1
    iget-object v0, p0, Ljuz;->a:Ljva;

    if-nez v0, :cond_1

    .line 6911
    new-instance v0, Ljva;

    invoke-direct {v0}, Ljva;-><init>()V

    iput-object v0, p0, Ljuz;->a:Ljva;

    .line 6913
    :cond_1
    iget-object v0, p0, Ljuz;->a:Ljva;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6917
    :sswitch_2
    iget-object v0, p0, Ljuz;->b:Ljva;

    if-nez v0, :cond_2

    .line 6918
    new-instance v0, Ljva;

    invoke-direct {v0}, Ljva;-><init>()V

    iput-object v0, p0, Ljuz;->b:Ljva;

    .line 6920
    :cond_2
    iget-object v0, p0, Ljuz;->b:Ljva;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6924
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6925
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6932
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljuz;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 6900
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 6925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 5864
    iget-object v0, p0, Ljuz;->a:Ljva;

    if-eqz v0, :cond_0

    .line 5865
    const/4 v0, 0x1

    iget-object v1, p0, Ljuz;->a:Ljva;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5867
    :cond_0
    iget-object v0, p0, Ljuz;->b:Ljva;

    if-eqz v0, :cond_1

    .line 5868
    const/4 v0, 0x2

    iget-object v1, p0, Ljuz;->b:Ljva;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5870
    :cond_1
    iget-object v0, p0, Ljuz;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5871
    const/4 v0, 0x3

    iget-object v1, p0, Ljuz;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5873
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5874
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5878
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5879
    iget-object v1, p0, Ljuz;->a:Ljva;

    if-eqz v1, :cond_0

    .line 5880
    const/4 v1, 0x1

    iget-object v2, p0, Ljuz;->a:Ljva;

    .line 5881
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5883
    :cond_0
    iget-object v1, p0, Ljuz;->b:Ljva;

    if-eqz v1, :cond_1

    .line 5884
    const/4 v1, 0x2

    iget-object v2, p0, Ljuz;->b:Ljva;

    .line 5885
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5887
    :cond_1
    iget-object v1, p0, Ljuz;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 5888
    const/4 v1, 0x3

    iget-object v2, p0, Ljuz;->c:Ljava/lang/Integer;

    .line 5889
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5891
    :cond_2
    return v0
.end method
