.class public final Lkjx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkgw;

.field public b:[Lkjw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2368
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3373
    invoke-static {}, Lkgw;->d()[Lkgw;

    move-result-object v0

    iput-object v0, p0, Lkjx;->a:[Lkgw;

    .line 3374
    invoke-static {}, Lkjw;->d()[Lkjw;

    move-result-object v0

    iput-object v0, p0, Lkjx;->b:[Lkjw;

    .line 3375
    const/4 v0, 0x0

    iput-object v0, p0, Lkjx;->eD:Llyd;

    .line 3376
    const/4 v0, -0x1

    iput v0, p0, Lkjx;->eE:I

    .line 2370
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3431
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3432
    sparse-switch v0, :sswitch_data_0

    .line 3436
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3437
    :sswitch_0
    return-object p0

    .line 3442
    :sswitch_1
    const/16 v0, 0x12

    .line 3443
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3444
    iget-object v0, p0, Lkjx;->a:[Lkgw;

    if-nez v0, :cond_2

    move v0, v1

    .line 3445
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgw;

    .line 3447
    if-eqz v0, :cond_1

    .line 3448
    iget-object v3, p0, Lkjx;->a:[Lkgw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3450
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3451
    new-instance v3, Lkgw;

    invoke-direct {v3}, Lkgw;-><init>()V

    aput-object v3, v2, v0

    .line 3452
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3453
    invoke-virtual {p1}, Llxy;->a()I

    .line 3450
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3444
    :cond_2
    iget-object v0, p0, Lkjx;->a:[Lkgw;

    array-length v0, v0

    goto :goto_1

    .line 3456
    :cond_3
    new-instance v3, Lkgw;

    invoke-direct {v3}, Lkgw;-><init>()V

    aput-object v3, v2, v0

    .line 3457
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3458
    iput-object v2, p0, Lkjx;->a:[Lkgw;

    goto :goto_0

    .line 3462
    :sswitch_2
    const/16 v0, 0x1a

    .line 3463
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3464
    iget-object v0, p0, Lkjx;->b:[Lkjw;

    if-nez v0, :cond_5

    move v0, v1

    .line 3465
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkjw;

    .line 3467
    if-eqz v0, :cond_4

    .line 3468
    iget-object v3, p0, Lkjx;->b:[Lkjw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3470
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3471
    new-instance v3, Lkjw;

    invoke-direct {v3}, Lkjw;-><init>()V

    aput-object v3, v2, v0

    .line 3472
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3473
    invoke-virtual {p1}, Llxy;->a()I

    .line 3470
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3464
    :cond_5
    iget-object v0, p0, Lkjx;->b:[Lkjw;

    array-length v0, v0

    goto :goto_3

    .line 3476
    :cond_6
    new-instance v3, Lkjw;

    invoke-direct {v3}, Lkjw;-><init>()V

    aput-object v3, v2, v0

    .line 3477
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3478
    iput-object v2, p0, Lkjx;->b:[Lkjw;

    goto/16 :goto_0

    .line 3432
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2383
    iget-object v0, p0, Lkjx;->a:[Lkgw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkjx;->a:[Lkgw;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 2384
    :goto_0
    iget-object v2, p0, Lkjx;->a:[Lkgw;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2385
    iget-object v2, p0, Lkjx;->a:[Lkgw;

    aget-object v2, v2, v0

    .line 2386
    if-eqz v2, :cond_0

    .line 2387
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2384
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2391
    :cond_1
    iget-object v0, p0, Lkjx;->b:[Lkjw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkjx;->b:[Lkjw;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 2392
    :goto_1
    iget-object v0, p0, Lkjx;->b:[Lkjw;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 2393
    iget-object v0, p0, Lkjx;->b:[Lkjw;

    aget-object v0, v0, v1

    .line 2394
    if-eqz v0, :cond_2

    .line 2395
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 2392
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2399
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2400
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2404
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2405
    iget-object v2, p0, Lkjx;->a:[Lkgw;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkjx;->a:[Lkgw;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 2406
    :goto_0
    iget-object v3, p0, Lkjx;->a:[Lkgw;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2407
    iget-object v3, p0, Lkjx;->a:[Lkgw;

    aget-object v3, v3, v0

    .line 2408
    if-eqz v3, :cond_0

    .line 2409
    const/4 v4, 0x2

    .line 2410
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2406
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2414
    :cond_2
    iget-object v2, p0, Lkjx;->b:[Lkjw;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkjx;->b:[Lkjw;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 2415
    :goto_1
    iget-object v2, p0, Lkjx;->b:[Lkjw;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 2416
    iget-object v2, p0, Lkjx;->b:[Lkjw;

    aget-object v2, v2, v1

    .line 2417
    if-eqz v2, :cond_3

    .line 2418
    const/4 v3, 0x3

    .line 2419
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2415
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2423
    :cond_4
    return v0
.end method
