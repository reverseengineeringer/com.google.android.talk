.class public final Lkel;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Boolean;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9520
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10525
    iput-object v0, p0, Lkel;->requestHeader:Lkdo;

    .line 10526
    iput-object v0, p0, Lkel;->a:Ljxw;

    .line 10527
    iput-object v0, p0, Lkel;->b:Ljava/lang/Integer;

    .line 10528
    iput-object v0, p0, Lkel;->c:Ljava/lang/Integer;

    .line 10529
    iput-object v0, p0, Lkel;->d:Ljava/lang/Boolean;

    .line 10530
    iput-object v0, p0, Lkel;->eD:Llyd;

    .line 10531
    const/4 v0, -0x1

    iput v0, p0, Lkel;->eE:I

    .line 9522
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11588
    sparse-switch v0, :sswitch_data_0

    .line 11592
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11593
    :sswitch_0
    return-object p0

    .line 11598
    :sswitch_1
    iget-object v0, p0, Lkel;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 11599
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkel;->requestHeader:Lkdo;

    .line 11601
    :cond_1
    iget-object v0, p0, Lkel;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11605
    :sswitch_2
    iget-object v0, p0, Lkel;->a:Ljxw;

    if-nez v0, :cond_2

    .line 11606
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkel;->a:Ljxw;

    .line 11608
    :cond_2
    iget-object v0, p0, Lkel;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11612
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11613
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11616
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkel;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 11622
    :sswitch_4
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkel;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 11626
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkel;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 11588
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x30 -> :sswitch_5
    .end sparse-switch

    .line 11613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9538
    iget-object v0, p0, Lkel;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 9539
    const/4 v0, 0x1

    iget-object v1, p0, Lkel;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9541
    :cond_0
    iget-object v0, p0, Lkel;->a:Ljxw;

    if-eqz v0, :cond_1

    .line 9542
    const/4 v0, 0x2

    iget-object v1, p0, Lkel;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9544
    :cond_1
    iget-object v0, p0, Lkel;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 9545
    const/4 v0, 0x3

    iget-object v1, p0, Lkel;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9547
    :cond_2
    iget-object v0, p0, Lkel;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 9548
    const/4 v0, 0x4

    iget-object v1, p0, Lkel;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 9550
    :cond_3
    iget-object v0, p0, Lkel;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 9551
    const/4 v0, 0x6

    iget-object v1, p0, Lkel;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9553
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9554
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9558
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9559
    iget-object v1, p0, Lkel;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 9560
    const/4 v1, 0x1

    iget-object v2, p0, Lkel;->requestHeader:Lkdo;

    .line 9561
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9563
    :cond_0
    iget-object v1, p0, Lkel;->a:Ljxw;

    if-eqz v1, :cond_1

    .line 9564
    const/4 v1, 0x2

    iget-object v2, p0, Lkel;->a:Ljxw;

    .line 9565
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9567
    :cond_1
    iget-object v1, p0, Lkel;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 9568
    const/4 v1, 0x3

    iget-object v2, p0, Lkel;->b:Ljava/lang/Integer;

    .line 9569
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9571
    :cond_2
    iget-object v1, p0, Lkel;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9572
    const/4 v1, 0x4

    iget-object v2, p0, Lkel;->c:Ljava/lang/Integer;

    .line 9573
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9575
    :cond_3
    iget-object v1, p0, Lkel;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 9576
    const/4 v1, 0x6

    iget-object v2, p0, Lkel;->d:Ljava/lang/Boolean;

    .line 9577
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9577
    add-int/2addr v0, v1

    .line 9579
    :cond_4
    return v0
.end method
