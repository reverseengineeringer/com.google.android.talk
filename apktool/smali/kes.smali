.class public final Lkes;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkes;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Integer;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11719
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12724
    iput-object v0, p0, Lkes;->requestHeader:Lkdo;

    .line 12725
    iput-object v0, p0, Lkes;->a:Ljxw;

    .line 12726
    iput-object v0, p0, Lkes;->b:Ljava/lang/Integer;

    .line 12727
    iput-object v0, p0, Lkes;->eD:Llyd;

    .line 12728
    const/4 v0, -0x1

    iput v0, p0, Lkes;->eE:I

    .line 11721
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 12770
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12771
    sparse-switch v0, :sswitch_data_0

    .line 12775
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12776
    :sswitch_0
    return-object p0

    .line 12781
    :sswitch_1
    iget-object v0, p0, Lkes;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 12782
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkes;->requestHeader:Lkdo;

    .line 12784
    :cond_1
    iget-object v0, p0, Lkes;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12788
    :sswitch_2
    iget-object v0, p0, Lkes;->a:Ljxw;

    if-nez v0, :cond_2

    .line 12789
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkes;->a:Ljxw;

    .line 12791
    :cond_2
    iget-object v0, p0, Lkes;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12795
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 12796
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12800
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkes;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 12771
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 12796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 11735
    iget-object v0, p0, Lkes;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 11736
    const/4 v0, 0x1

    iget-object v1, p0, Lkes;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11738
    :cond_0
    iget-object v0, p0, Lkes;->a:Ljxw;

    if-eqz v0, :cond_1

    .line 11739
    const/4 v0, 0x2

    iget-object v1, p0, Lkes;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11741
    :cond_1
    iget-object v0, p0, Lkes;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 11742
    const/4 v0, 0x3

    iget-object v1, p0, Lkes;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 11744
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11745
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 11749
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11750
    iget-object v1, p0, Lkes;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 11751
    const/4 v1, 0x1

    iget-object v2, p0, Lkes;->requestHeader:Lkdo;

    .line 11752
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11754
    :cond_0
    iget-object v1, p0, Lkes;->a:Ljxw;

    if-eqz v1, :cond_1

    .line 11755
    const/4 v1, 0x2

    iget-object v2, p0, Lkes;->a:Ljxw;

    .line 11756
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11758
    :cond_1
    iget-object v1, p0, Lkes;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 11759
    const/4 v1, 0x3

    iget-object v2, p0, Lkes;->b:Ljava/lang/Integer;

    .line 11760
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11762
    :cond_2
    return v0
.end method
