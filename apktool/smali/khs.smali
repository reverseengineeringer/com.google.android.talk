.class public final Lkhs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:Ljava/lang/Integer;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5649
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6654
    iput-object v0, p0, Lkhs;->responseHeader:Lkdp;

    .line 6655
    iput-object v0, p0, Lkhs;->a:Lkii;

    .line 6656
    iput-object v0, p0, Lkhs;->b:Ljava/lang/Integer;

    .line 6657
    iput-object v0, p0, Lkhs;->eD:Llyd;

    .line 6658
    const/4 v0, -0x1

    iput v0, p0, Lkhs;->eE:I

    .line 5651
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6700
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6701
    sparse-switch v0, :sswitch_data_0

    .line 6705
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6706
    :sswitch_0
    return-object p0

    .line 6711
    :sswitch_1
    iget-object v0, p0, Lkhs;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 6712
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkhs;->responseHeader:Lkdp;

    .line 6714
    :cond_1
    iget-object v0, p0, Lkhs;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6718
    :sswitch_2
    iget-object v0, p0, Lkhs;->a:Lkii;

    if-nez v0, :cond_2

    .line 6719
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhs;->a:Lkii;

    .line 6721
    :cond_2
    iget-object v0, p0, Lkhs;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6725
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6726
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6738
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkhs;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 6701
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 6726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 5665
    iget-object v0, p0, Lkhs;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 5666
    const/4 v0, 0x1

    iget-object v1, p0, Lkhs;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5668
    :cond_0
    iget-object v0, p0, Lkhs;->a:Lkii;

    if-eqz v0, :cond_1

    .line 5669
    const/4 v0, 0x2

    iget-object v1, p0, Lkhs;->a:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5671
    :cond_1
    iget-object v0, p0, Lkhs;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 5672
    const/4 v0, 0x3

    iget-object v1, p0, Lkhs;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5674
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5675
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5679
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5680
    iget-object v1, p0, Lkhs;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 5681
    const/4 v1, 0x1

    iget-object v2, p0, Lkhs;->responseHeader:Lkdp;

    .line 5682
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5684
    :cond_0
    iget-object v1, p0, Lkhs;->a:Lkii;

    if-eqz v1, :cond_1

    .line 5685
    const/4 v1, 0x2

    iget-object v2, p0, Lkhs;->a:Lkii;

    .line 5686
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5688
    :cond_1
    iget-object v1, p0, Lkhs;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 5689
    const/4 v1, 0x3

    iget-object v2, p0, Lkhs;->b:Ljava/lang/Integer;

    .line 5690
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5692
    :cond_2
    return v0
.end method
