.class public final Ljgt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljgt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ljgt;


# instance fields
.field public a:Ljava/lang/Double;

.field public b:Ljava/lang/String;

.field public c:[Ljgv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-direct {p0}, Llyb;-><init>()V

    .line 418
    iput-object v1, p0, Ljgt;->a:Ljava/lang/Double;

    .line 419
    iput-object v1, p0, Ljgt;->b:Ljava/lang/String;

    .line 420
    invoke-static {}, Ljgv;->d()[Ljgv;

    move-result-object v0

    iput-object v0, p0, Ljgt;->c:[Ljgv;

    .line 421
    iput-object v1, p0, Ljgt;->eD:Llyd;

    .line 422
    const/4 v0, -0x1

    iput v0, p0, Ljgt;->eE:I

    .line 423
    return-void
.end method

.method public static d()[Ljgt;
    .locals 2

    .prologue
    .line 395
    sget-object v0, Ljgt;->d:[Ljgt;

    if-nez v0, :cond_1

    .line 396
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    sget-object v0, Ljgt;->d:[Ljgt;

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x0

    new-array v0, v0, [Ljgt;

    sput-object v0, Ljgt;->d:[Ljgt;

    .line 401
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_1
    sget-object v0, Ljgt;->d:[Ljgt;

    return-object v0

    .line 401
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2469
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2470
    sparse-switch v0, :sswitch_data_0

    .line 2474
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2475
    :sswitch_0
    return-object p0

    .line 2480
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljgt;->a:Ljava/lang/Double;

    goto :goto_0

    .line 2484
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljgt;->b:Ljava/lang/String;

    goto :goto_0

    .line 2488
    :sswitch_3
    const/16 v0, 0x1a

    .line 2489
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2490
    iget-object v0, p0, Ljgt;->c:[Ljgv;

    if-nez v0, :cond_2

    move v0, v1

    .line 2491
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgv;

    .line 2493
    if-eqz v0, :cond_1

    .line 2494
    iget-object v3, p0, Ljgt;->c:[Ljgv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2496
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2497
    new-instance v3, Ljgv;

    invoke-direct {v3}, Ljgv;-><init>()V

    aput-object v3, v2, v0

    .line 2498
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2499
    invoke-virtual {p1}, Llxy;->a()I

    .line 2496
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2490
    :cond_2
    iget-object v0, p0, Ljgt;->c:[Ljgv;

    array-length v0, v0

    goto :goto_1

    .line 2502
    :cond_3
    new-instance v3, Ljgv;

    invoke-direct {v3}, Ljgv;-><init>()V

    aput-object v3, v2, v0

    .line 2503
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2504
    iput-object v2, p0, Ljgt;->c:[Ljgv;

    goto :goto_0

    .line 2470
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 428
    const/4 v0, 0x1

    iget-object v1, p0, Ljgt;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 429
    iget-object v0, p0, Ljgt;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x2

    iget-object v1, p0, Ljgt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 432
    :cond_0
    iget-object v0, p0, Ljgt;->c:[Ljgv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljgt;->c:[Ljgv;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 433
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljgt;->c:[Ljgv;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 434
    iget-object v1, p0, Ljgt;->c:[Ljgv;

    aget-object v1, v1, v0

    .line 435
    if-eqz v1, :cond_1

    .line 436
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 441
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 445
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 446
    const/4 v1, 0x1

    iget-object v2, p0, Ljgt;->a:Ljava/lang/Double;

    .line 447
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 447
    add-int/2addr v0, v1

    .line 448
    iget-object v1, p0, Ljgt;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 449
    const/4 v1, 0x2

    iget-object v2, p0, Ljgt;->b:Ljava/lang/String;

    .line 450
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_0
    iget-object v1, p0, Ljgt;->c:[Ljgv;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljgt;->c:[Ljgv;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 453
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljgt;->c:[Ljgv;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 454
    iget-object v2, p0, Ljgt;->c:[Ljgv;

    aget-object v2, v2, v0

    .line 455
    if-eqz v2, :cond_1

    .line 456
    const/4 v3, 0x3

    .line 457
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 453
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 461
    :cond_3
    return v0
.end method
