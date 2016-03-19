.class public final Lljv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lljv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lloq;

.field public c:Lljw;

.field public d:Llkf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 548
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1553
    iput-object v0, p0, Lljv;->a:Ljava/lang/Boolean;

    .line 1554
    iput-object v0, p0, Lljv;->b:Lloq;

    .line 1555
    iput-object v0, p0, Lljv;->c:Lljw;

    .line 1556
    iput-object v0, p0, Lljv;->d:Llkf;

    .line 1557
    iput-object v0, p0, Lljv;->eD:Llyd;

    .line 1558
    const/4 v0, -0x1

    iput v0, p0, Lljv;->eE:I

    .line 550
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2607
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2608
    sparse-switch v0, :sswitch_data_0

    .line 2612
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2613
    :sswitch_0
    return-object p0

    .line 2618
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lljv;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2622
    :sswitch_2
    iget-object v0, p0, Lljv;->b:Lloq;

    if-nez v0, :cond_1

    .line 2623
    new-instance v0, Lloq;

    invoke-direct {v0}, Lloq;-><init>()V

    iput-object v0, p0, Lljv;->b:Lloq;

    .line 2625
    :cond_1
    iget-object v0, p0, Lljv;->b:Lloq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2629
    :sswitch_3
    iget-object v0, p0, Lljv;->c:Lljw;

    if-nez v0, :cond_2

    .line 2630
    new-instance v0, Lljw;

    invoke-direct {v0}, Lljw;-><init>()V

    iput-object v0, p0, Lljv;->c:Lljw;

    .line 2632
    :cond_2
    iget-object v0, p0, Lljv;->c:Lljw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2636
    :sswitch_4
    iget-object v0, p0, Lljv;->d:Llkf;

    if-nez v0, :cond_3

    .line 2637
    new-instance v0, Llkf;

    invoke-direct {v0}, Llkf;-><init>()V

    iput-object v0, p0, Lljv;->d:Llkf;

    .line 2639
    :cond_3
    iget-object v0, p0, Lljv;->d:Llkf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2608
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lljv;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x1

    iget-object v1, p0, Lljv;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 568
    :cond_0
    iget-object v0, p0, Lljv;->b:Lloq;

    if-eqz v0, :cond_1

    .line 569
    const/4 v0, 0x2

    iget-object v1, p0, Lljv;->b:Lloq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 571
    :cond_1
    iget-object v0, p0, Lljv;->c:Lljw;

    if-eqz v0, :cond_2

    .line 572
    const/4 v0, 0x3

    iget-object v1, p0, Lljv;->c:Lljw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 574
    :cond_2
    iget-object v0, p0, Lljv;->d:Llkf;

    if-eqz v0, :cond_3

    .line 575
    const/4 v0, 0x4

    iget-object v1, p0, Lljv;->d:Llkf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 577
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 578
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 582
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 583
    iget-object v1, p0, Lljv;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 584
    const/4 v1, 0x1

    iget-object v2, p0, Lljv;->a:Ljava/lang/Boolean;

    .line 585
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 585
    add-int/2addr v0, v1

    .line 587
    :cond_0
    iget-object v1, p0, Lljv;->b:Lloq;

    if-eqz v1, :cond_1

    .line 588
    const/4 v1, 0x2

    iget-object v2, p0, Lljv;->b:Lloq;

    .line 589
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    :cond_1
    iget-object v1, p0, Lljv;->c:Lljw;

    if-eqz v1, :cond_2

    .line 592
    const/4 v1, 0x3

    iget-object v2, p0, Lljv;->c:Lljw;

    .line 593
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 595
    :cond_2
    iget-object v1, p0, Lljv;->d:Llkf;

    if-eqz v1, :cond_3

    .line 596
    const/4 v1, 0x4

    iget-object v2, p0, Lljv;->d:Llkf;

    .line 597
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 599
    :cond_3
    return v0
.end method
