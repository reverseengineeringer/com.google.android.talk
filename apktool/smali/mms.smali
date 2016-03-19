.class public final Lmms;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmms;


# instance fields
.field public a:Lmkr;

.field public b:Ljava/lang/String;

.field public c:[Lmmu;

.field public d:Ljava/lang/String;

.field public e:Lmks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1406
    iput-object v1, p0, Lmms;->a:Lmkr;

    .line 1407
    iput-object v1, p0, Lmms;->b:Ljava/lang/String;

    .line 1408
    invoke-static {}, Lmmu;->d()[Lmmu;

    move-result-object v0

    iput-object v0, p0, Lmms;->c:[Lmmu;

    .line 1409
    iput-object v1, p0, Lmms;->d:Ljava/lang/String;

    .line 1410
    iput-object v1, p0, Lmms;->e:Lmks;

    .line 1411
    iput-object v1, p0, Lmms;->eD:Llyd;

    .line 1412
    const/4 v0, -0x1

    iput v0, p0, Lmms;->eE:I

    .line 403
    return-void
.end method

.method public static d()[Lmms;
    .locals 2

    .prologue
    .line 373
    sget-object v0, Lmms;->f:[Lmms;

    if-nez v0, :cond_1

    .line 374
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    sget-object v0, Lmms;->f:[Lmms;

    if-nez v0, :cond_0

    .line 377
    const/4 v0, 0x0

    new-array v0, v0, [Lmms;

    sput-object v0, Lmms;->f:[Lmms;

    .line 379
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :cond_1
    sget-object v0, Lmms;->f:[Lmms;

    return-object v0

    .line 379
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

    .line 1478
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1479
    sparse-switch v0, :sswitch_data_0

    .line 1483
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    :sswitch_0
    return-object p0

    .line 1489
    :sswitch_1
    iget-object v0, p0, Lmms;->a:Lmkr;

    if-nez v0, :cond_1

    .line 1490
    new-instance v0, Lmkr;

    invoke-direct {v0}, Lmkr;-><init>()V

    iput-object v0, p0, Lmms;->a:Lmkr;

    .line 1492
    :cond_1
    iget-object v0, p0, Lmms;->a:Lmkr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1496
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmms;->b:Ljava/lang/String;

    goto :goto_0

    .line 1500
    :sswitch_3
    const/16 v0, 0x1a

    .line 1501
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1502
    iget-object v0, p0, Lmms;->c:[Lmmu;

    if-nez v0, :cond_3

    move v0, v1

    .line 1503
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmmu;

    .line 1505
    if-eqz v0, :cond_2

    .line 1506
    iget-object v3, p0, Lmms;->c:[Lmmu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1508
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1509
    new-instance v3, Lmmu;

    invoke-direct {v3}, Lmmu;-><init>()V

    aput-object v3, v2, v0

    .line 1510
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1511
    invoke-virtual {p1}, Llxy;->a()I

    .line 1508
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1502
    :cond_3
    iget-object v0, p0, Lmms;->c:[Lmmu;

    array-length v0, v0

    goto :goto_1

    .line 1514
    :cond_4
    new-instance v3, Lmmu;

    invoke-direct {v3}, Lmmu;-><init>()V

    aput-object v3, v2, v0

    .line 1515
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1516
    iput-object v2, p0, Lmms;->c:[Lmmu;

    goto :goto_0

    .line 1520
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmms;->d:Ljava/lang/String;

    goto :goto_0

    .line 1524
    :sswitch_5
    iget-object v0, p0, Lmms;->e:Lmks;

    if-nez v0, :cond_5

    .line 1525
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmms;->e:Lmks;

    .line 1527
    :cond_5
    iget-object v0, p0, Lmms;->e:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1479
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lmms;->a:Lmkr;

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    iget-object v1, p0, Lmms;->a:Lmkr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lmms;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 423
    const/4 v0, 0x2

    iget-object v1, p0, Lmms;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 425
    :cond_1
    iget-object v0, p0, Lmms;->c:[Lmmu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmms;->c:[Lmmu;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 426
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmms;->c:[Lmmu;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 427
    iget-object v1, p0, Lmms;->c:[Lmmu;

    aget-object v1, v1, v0

    .line 428
    if-eqz v1, :cond_2

    .line 429
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 426
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lmms;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 434
    const/4 v0, 0x4

    iget-object v1, p0, Lmms;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 436
    :cond_4
    iget-object v0, p0, Lmms;->e:Lmks;

    if-eqz v0, :cond_5

    .line 437
    const/4 v0, 0x5

    iget-object v1, p0, Lmms;->e:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 439
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 440
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 444
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 445
    iget-object v1, p0, Lmms;->a:Lmkr;

    if-eqz v1, :cond_0

    .line 446
    const/4 v1, 0x1

    iget-object v2, p0, Lmms;->a:Lmkr;

    .line 447
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_0
    iget-object v1, p0, Lmms;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 450
    const/4 v1, 0x2

    iget-object v2, p0, Lmms;->b:Ljava/lang/String;

    .line 451
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_1
    iget-object v1, p0, Lmms;->c:[Lmmu;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmms;->c:[Lmmu;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 454
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmms;->c:[Lmmu;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 455
    iget-object v2, p0, Lmms;->c:[Lmmu;

    aget-object v2, v2, v0

    .line 456
    if-eqz v2, :cond_2

    .line 457
    const/4 v3, 0x3

    .line 458
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 454
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 462
    :cond_4
    iget-object v1, p0, Lmms;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 463
    const/4 v1, 0x4

    iget-object v2, p0, Lmms;->d:Ljava/lang/String;

    .line 464
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_5
    iget-object v1, p0, Lmms;->e:Lmks;

    if-eqz v1, :cond_6

    .line 467
    const/4 v1, 0x5

    iget-object v2, p0, Lmms;->e:Lmks;

    .line 468
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_6
    return v0
.end method
