.class public final Ljbp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2638
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3643
    iput-object v0, p0, Ljbp;->a:Ljbn;

    .line 3644
    iput-object v0, p0, Ljbp;->b:Ljava/lang/Integer;

    .line 3645
    iput-object v0, p0, Ljbp;->eD:Llyd;

    .line 3646
    const/4 v0, -0x1

    iput v0, p0, Ljbp;->eE:I

    .line 2640
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3681
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3682
    sparse-switch v0, :sswitch_data_0

    .line 3686
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3687
    :sswitch_0
    return-object p0

    .line 3692
    :sswitch_1
    iget-object v0, p0, Ljbp;->a:Ljbn;

    if-nez v0, :cond_1

    .line 3693
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbp;->a:Ljbn;

    .line 3695
    :cond_1
    iget-object v0, p0, Ljbp;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3699
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3700
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3704
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbp;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3682
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 3700
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2653
    iget-object v0, p0, Ljbp;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 2654
    const/4 v0, 0x1

    iget-object v1, p0, Ljbp;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2656
    :cond_0
    iget-object v0, p0, Ljbp;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2657
    const/4 v0, 0x2

    iget-object v1, p0, Ljbp;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2659
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2660
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2664
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2665
    iget-object v1, p0, Ljbp;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 2666
    const/4 v1, 0x1

    iget-object v2, p0, Ljbp;->a:Ljbn;

    .line 2667
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2669
    :cond_0
    iget-object v1, p0, Ljbp;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2670
    const/4 v1, 0x2

    iget-object v2, p0, Ljbp;->b:Ljava/lang/Integer;

    .line 2671
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2673
    :cond_1
    return v0
.end method
