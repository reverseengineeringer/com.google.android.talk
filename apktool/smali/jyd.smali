.class public final Ljyd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23627
    invoke-direct {p0}, Llyb;-><init>()V

    .line 24632
    iput-object v0, p0, Ljyd;->a:Ljxw;

    .line 24633
    iput-object v0, p0, Ljyd;->b:Ljava/lang/Integer;

    .line 24634
    iput-object v0, p0, Ljyd;->c:Ljava/lang/Integer;

    .line 24635
    iput-object v0, p0, Ljyd;->eD:Llyd;

    .line 24636
    const/4 v0, -0x1

    iput v0, p0, Ljyd;->eE:I

    .line 23629
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 24678
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 24679
    sparse-switch v0, :sswitch_data_0

    .line 24683
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24684
    :sswitch_0
    return-object p0

    .line 24689
    :sswitch_1
    iget-object v0, p0, Ljyd;->a:Ljxw;

    if-nez v0, :cond_1

    .line 24690
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljyd;->a:Ljxw;

    .line 24692
    :cond_1
    iget-object v0, p0, Ljyd;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24696
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 24697
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 24701
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljyd;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 24707
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 24708
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 24712
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljyd;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 24679
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 24697
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 24708
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 23643
    iget-object v0, p0, Ljyd;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 23644
    const/4 v0, 0x1

    iget-object v1, p0, Ljyd;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 23646
    :cond_0
    iget-object v0, p0, Ljyd;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 23647
    const/4 v0, 0x2

    iget-object v1, p0, Ljyd;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 23649
    :cond_1
    iget-object v0, p0, Ljyd;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 23650
    const/4 v0, 0x3

    iget-object v1, p0, Ljyd;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 23652
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 23653
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 23657
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 23658
    iget-object v1, p0, Ljyd;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 23659
    const/4 v1, 0x1

    iget-object v2, p0, Ljyd;->a:Ljxw;

    .line 23660
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23662
    :cond_0
    iget-object v1, p0, Ljyd;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 23663
    const/4 v1, 0x2

    iget-object v2, p0, Ljyd;->b:Ljava/lang/Integer;

    .line 23664
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23666
    :cond_1
    iget-object v1, p0, Ljyd;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 23667
    const/4 v1, 0x3

    iget-object v2, p0, Ljyd;->c:Ljava/lang/Integer;

    .line 23668
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23670
    :cond_2
    return v0
.end method
