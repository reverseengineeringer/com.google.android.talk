.class public final Lkeq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkeq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkdq;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20498
    invoke-direct {p0}, Llyb;-><init>()V

    .line 21503
    iput-object v1, p0, Lkeq;->responseHeader:Lkdp;

    .line 21504
    invoke-static {}, Lkdq;->d()[Lkdq;

    move-result-object v0

    iput-object v0, p0, Lkeq;->a:[Lkdq;

    .line 21505
    iput-object v1, p0, Lkeq;->eD:Llyd;

    .line 21506
    const/4 v0, -0x1

    iput v0, p0, Lkeq;->eE:I

    .line 20500
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 21551
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 21552
    sparse-switch v0, :sswitch_data_0

    .line 21556
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21557
    :sswitch_0
    return-object p0

    .line 21562
    :sswitch_1
    iget-object v0, p0, Lkeq;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 21563
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkeq;->responseHeader:Lkdp;

    .line 21565
    :cond_1
    iget-object v0, p0, Lkeq;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 21569
    :sswitch_2
    const/16 v0, 0x12

    .line 21570
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 21571
    iget-object v0, p0, Lkeq;->a:[Lkdq;

    if-nez v0, :cond_3

    move v0, v1

    .line 21572
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkdq;

    .line 21574
    if-eqz v0, :cond_2

    .line 21575
    iget-object v3, p0, Lkeq;->a:[Lkdq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21577
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 21578
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 21579
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 21580
    invoke-virtual {p1}, Llxy;->a()I

    .line 21577
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 21571
    :cond_3
    iget-object v0, p0, Lkeq;->a:[Lkdq;

    array-length v0, v0

    goto :goto_1

    .line 21583
    :cond_4
    new-instance v3, Lkdq;

    invoke-direct {v3}, Lkdq;-><init>()V

    aput-object v3, v2, v0

    .line 21584
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 21585
    iput-object v2, p0, Lkeq;->a:[Lkdq;

    goto :goto_0

    .line 21552
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 20513
    iget-object v0, p0, Lkeq;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 20514
    const/4 v0, 0x1

    iget-object v1, p0, Lkeq;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 20516
    :cond_0
    iget-object v0, p0, Lkeq;->a:[Lkdq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkeq;->a:[Lkdq;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 20517
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkeq;->a:[Lkdq;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 20518
    iget-object v1, p0, Lkeq;->a:[Lkdq;

    aget-object v1, v1, v0

    .line 20519
    if-eqz v1, :cond_1

    .line 20520
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 20517
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20524
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 20525
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 20529
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 20530
    iget-object v1, p0, Lkeq;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 20531
    const/4 v1, 0x1

    iget-object v2, p0, Lkeq;->responseHeader:Lkdp;

    .line 20532
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20534
    :cond_0
    iget-object v1, p0, Lkeq;->a:[Lkdq;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkeq;->a:[Lkdq;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 20535
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkeq;->a:[Lkdq;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 20536
    iget-object v2, p0, Lkeq;->a:[Lkdq;

    aget-object v2, v2, v0

    .line 20537
    if-eqz v2, :cond_1

    .line 20538
    const/4 v3, 0x2

    .line 20539
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 20535
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 20543
    :cond_3
    return v0
.end method
