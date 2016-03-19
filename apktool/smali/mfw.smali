.class public final Lmfw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmfx;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 545
    invoke-direct {p0}, Llyb;-><init>()V

    .line 546
    invoke-static {}, Lmfx;->d()[Lmfx;

    move-result-object v0

    iput-object v0, p0, Lmfw;->a:[Lmfx;

    .line 547
    iput-object v1, p0, Lmfw;->b:Ljava/lang/Boolean;

    .line 548
    iput-object v1, p0, Lmfw;->eD:Llyd;

    .line 549
    const/4 v0, -0x1

    iput v0, p0, Lmfw;->eE:I

    .line 550
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2593
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2594
    sparse-switch v0, :sswitch_data_0

    .line 2598
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2599
    :sswitch_0
    return-object p0

    .line 2604
    :sswitch_1
    const/16 v0, 0xa

    .line 2605
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2606
    iget-object v0, p0, Lmfw;->a:[Lmfx;

    if-nez v0, :cond_2

    move v0, v1

    .line 2607
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmfx;

    .line 2609
    if-eqz v0, :cond_1

    .line 2610
    iget-object v3, p0, Lmfw;->a:[Lmfx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2612
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2613
    new-instance v3, Lmfx;

    invoke-direct {v3}, Lmfx;-><init>()V

    aput-object v3, v2, v0

    .line 2614
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2615
    invoke-virtual {p1}, Llxy;->a()I

    .line 2612
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2606
    :cond_2
    iget-object v0, p0, Lmfw;->a:[Lmfx;

    array-length v0, v0

    goto :goto_1

    .line 2618
    :cond_3
    new-instance v3, Lmfx;

    invoke-direct {v3}, Lmfx;-><init>()V

    aput-object v3, v2, v0

    .line 2619
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2620
    iput-object v2, p0, Lmfw;->a:[Lmfx;

    goto :goto_0

    .line 2624
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmfw;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 2594
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lmfw;->a:[Lmfx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmfw;->a:[Lmfx;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 556
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmfw;->a:[Lmfx;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 557
    iget-object v1, p0, Lmfw;->a:[Lmfx;

    aget-object v1, v1, v0

    .line 558
    if-eqz v1, :cond_0

    .line 559
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 556
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lmfw;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 564
    const/4 v0, 0x2

    iget-object v1, p0, Lmfw;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 566
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 567
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 571
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 572
    iget-object v0, p0, Lmfw;->a:[Lmfx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmfw;->a:[Lmfx;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 573
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmfw;->a:[Lmfx;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 574
    iget-object v2, p0, Lmfw;->a:[Lmfx;

    aget-object v2, v2, v0

    .line 575
    if-eqz v2, :cond_0

    .line 576
    const/4 v3, 0x1

    .line 577
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 573
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_1
    iget-object v0, p0, Lmfw;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 582
    const/4 v0, 0x2

    iget-object v2, p0, Lmfw;->b:Ljava/lang/Boolean;

    .line 583
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v0}, Llxz;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 583
    add-int/2addr v1, v0

    .line 585
    :cond_2
    return v1
.end method
