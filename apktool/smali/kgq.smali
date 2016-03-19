.class public final Lkgq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkgd;

.field public b:Lkii;

.field public c:[Lkgd;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2435
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3440
    iput-object v1, p0, Lkgq;->responseHeader:Lkdp;

    .line 3441
    iput-object v1, p0, Lkgq;->a:Lkgd;

    .line 3442
    iput-object v1, p0, Lkgq;->b:Lkii;

    .line 3443
    invoke-static {}, Lkgd;->d()[Lkgd;

    move-result-object v0

    iput-object v0, p0, Lkgq;->c:[Lkgd;

    .line 3444
    iput-object v1, p0, Lkgq;->eD:Llyd;

    .line 3445
    const/4 v0, -0x1

    iput v0, p0, Lkgq;->eE:I

    .line 2437
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3504
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3505
    sparse-switch v0, :sswitch_data_0

    .line 3509
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3510
    :sswitch_0
    return-object p0

    .line 3515
    :sswitch_1
    iget-object v0, p0, Lkgq;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 3516
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkgq;->responseHeader:Lkdp;

    .line 3518
    :cond_1
    iget-object v0, p0, Lkgq;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3522
    :sswitch_2
    iget-object v0, p0, Lkgq;->a:Lkgd;

    if-nez v0, :cond_2

    .line 3523
    new-instance v0, Lkgd;

    invoke-direct {v0}, Lkgd;-><init>()V

    iput-object v0, p0, Lkgq;->a:Lkgd;

    .line 3525
    :cond_2
    iget-object v0, p0, Lkgq;->a:Lkgd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3529
    :sswitch_3
    iget-object v0, p0, Lkgq;->b:Lkii;

    if-nez v0, :cond_3

    .line 3530
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkgq;->b:Lkii;

    .line 3532
    :cond_3
    iget-object v0, p0, Lkgq;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3536
    :sswitch_4
    const/16 v0, 0x22

    .line 3537
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3538
    iget-object v0, p0, Lkgq;->c:[Lkgd;

    if-nez v0, :cond_5

    move v0, v1

    .line 3539
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgd;

    .line 3541
    if-eqz v0, :cond_4

    .line 3542
    iget-object v3, p0, Lkgq;->c:[Lkgd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3544
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3545
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 3546
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3547
    invoke-virtual {p1}, Llxy;->a()I

    .line 3544
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3538
    :cond_5
    iget-object v0, p0, Lkgq;->c:[Lkgd;

    array-length v0, v0

    goto :goto_1

    .line 3550
    :cond_6
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 3551
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3552
    iput-object v2, p0, Lkgq;->c:[Lkgd;

    goto :goto_0

    .line 3505
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2452
    iget-object v0, p0, Lkgq;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 2453
    const/4 v0, 0x1

    iget-object v1, p0, Lkgq;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2455
    :cond_0
    iget-object v0, p0, Lkgq;->a:Lkgd;

    if-eqz v0, :cond_1

    .line 2456
    const/4 v0, 0x2

    iget-object v1, p0, Lkgq;->a:Lkgd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2458
    :cond_1
    iget-object v0, p0, Lkgq;->b:Lkii;

    if-eqz v0, :cond_2

    .line 2459
    const/4 v0, 0x3

    iget-object v1, p0, Lkgq;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2461
    :cond_2
    iget-object v0, p0, Lkgq;->c:[Lkgd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkgq;->c:[Lkgd;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 2462
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkgq;->c:[Lkgd;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2463
    iget-object v1, p0, Lkgq;->c:[Lkgd;

    aget-object v1, v1, v0

    .line 2464
    if-eqz v1, :cond_3

    .line 2465
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2462
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2469
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2470
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2474
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2475
    iget-object v1, p0, Lkgq;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 2476
    const/4 v1, 0x1

    iget-object v2, p0, Lkgq;->responseHeader:Lkdp;

    .line 2477
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2479
    :cond_0
    iget-object v1, p0, Lkgq;->a:Lkgd;

    if-eqz v1, :cond_1

    .line 2480
    const/4 v1, 0x2

    iget-object v2, p0, Lkgq;->a:Lkgd;

    .line 2481
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2483
    :cond_1
    iget-object v1, p0, Lkgq;->b:Lkii;

    if-eqz v1, :cond_2

    .line 2484
    const/4 v1, 0x3

    iget-object v2, p0, Lkgq;->b:Lkii;

    .line 2485
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2487
    :cond_2
    iget-object v1, p0, Lkgq;->c:[Lkgd;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkgq;->c:[Lkgd;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 2488
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkgq;->c:[Lkgd;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2489
    iget-object v2, p0, Lkgq;->c:[Lkgd;

    aget-object v2, v2, v0

    .line 2490
    if-eqz v2, :cond_3

    .line 2491
    const/4 v3, 0x4

    .line 2492
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2488
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2496
    :cond_5
    return v0
.end method
