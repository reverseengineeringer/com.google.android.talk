.class public final Llcd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llcd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Llcd;


# instance fields
.field public a:Llcf;

.field public b:Llch;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 428
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1433
    iput-object v0, p0, Llcd;->a:Llcf;

    .line 1434
    iput-object v0, p0, Llcd;->b:Llch;

    .line 1435
    iput-object v0, p0, Llcd;->c:Ljava/lang/String;

    .line 1436
    iput-object v0, p0, Llcd;->d:Ljava/lang/String;

    .line 1437
    iput-object v0, p0, Llcd;->eD:Llyd;

    .line 1438
    const/4 v0, -0x1

    iput v0, p0, Llcd;->eE:I

    .line 430
    return-void
.end method

.method public static d()[Llcd;
    .locals 2

    .prologue
    .line 403
    sget-object v0, Llcd;->e:[Llcd;

    if-nez v0, :cond_1

    .line 404
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    sget-object v0, Llcd;->e:[Llcd;

    if-nez v0, :cond_0

    .line 407
    const/4 v0, 0x0

    new-array v0, v0, [Llcd;

    sput-object v0, Llcd;->e:[Llcd;

    .line 409
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_1
    sget-object v0, Llcd;->e:[Llcd;

    return-object v0

    .line 409
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
    .locals 1

    .prologue
    .line 1487
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1488
    sparse-switch v0, :sswitch_data_0

    .line 1492
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1493
    :sswitch_0
    return-object p0

    .line 1498
    :sswitch_1
    iget-object v0, p0, Llcd;->a:Llcf;

    if-nez v0, :cond_1

    .line 1499
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Llcd;->a:Llcf;

    .line 1501
    :cond_1
    iget-object v0, p0, Llcd;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1505
    :sswitch_2
    iget-object v0, p0, Llcd;->b:Llch;

    if-nez v0, :cond_2

    .line 1506
    new-instance v0, Llch;

    invoke-direct {v0}, Llch;-><init>()V

    iput-object v0, p0, Llcd;->b:Llch;

    .line 1508
    :cond_2
    iget-object v0, p0, Llcd;->b:Llch;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1512
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llcd;->c:Ljava/lang/String;

    goto :goto_0

    .line 1516
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llcd;->d:Ljava/lang/String;

    goto :goto_0

    .line 1488
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
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Llcd;->a:Llcf;

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x1

    iget-object v1, p0, Llcd;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 448
    :cond_0
    iget-object v0, p0, Llcd;->b:Llch;

    if-eqz v0, :cond_1

    .line 449
    const/4 v0, 0x2

    iget-object v1, p0, Llcd;->b:Llch;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 451
    :cond_1
    iget-object v0, p0, Llcd;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 452
    const/4 v0, 0x3

    iget-object v1, p0, Llcd;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 454
    :cond_2
    iget-object v0, p0, Llcd;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 455
    const/4 v0, 0x4

    iget-object v1, p0, Llcd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 457
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 458
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 462
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 463
    iget-object v1, p0, Llcd;->a:Llcf;

    if-eqz v1, :cond_0

    .line 464
    const/4 v1, 0x1

    iget-object v2, p0, Llcd;->a:Llcf;

    .line 465
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 467
    :cond_0
    iget-object v1, p0, Llcd;->b:Llch;

    if-eqz v1, :cond_1

    .line 468
    const/4 v1, 0x2

    iget-object v2, p0, Llcd;->b:Llch;

    .line 469
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    :cond_1
    iget-object v1, p0, Llcd;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 472
    const/4 v1, 0x3

    iget-object v2, p0, Llcd;->c:Ljava/lang/String;

    .line 473
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    :cond_2
    iget-object v1, p0, Llcd;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 476
    const/4 v1, 0x4

    iget-object v2, p0, Llcd;->d:Ljava/lang/String;

    .line 477
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    :cond_3
    return v0
.end method
