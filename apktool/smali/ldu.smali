.class public final Lldu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldu;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lldu;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lldz;

.field public c:Lldv;

.field public d:Lldw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1435
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2440
    iput-object v0, p0, Lldu;->a:Ljava/lang/Integer;

    .line 2441
    iput-object v0, p0, Lldu;->b:Lldz;

    .line 2442
    iput-object v0, p0, Lldu;->c:Lldv;

    .line 2443
    iput-object v0, p0, Lldu;->d:Lldw;

    .line 2444
    iput-object v0, p0, Lldu;->eD:Llyd;

    .line 2445
    const/4 v0, -0x1

    iput v0, p0, Lldu;->eE:I

    .line 1437
    return-void
.end method

.method public static d()[Lldu;
    .locals 2

    .prologue
    .line 1410
    sget-object v0, Lldu;->e:[Lldu;

    if-nez v0, :cond_1

    .line 1411
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1413
    :try_start_0
    sget-object v0, Lldu;->e:[Lldu;

    if-nez v0, :cond_0

    .line 1414
    const/4 v0, 0x0

    new-array v0, v0, [Lldu;

    sput-object v0, Lldu;->e:[Lldu;

    .line 1416
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    :cond_1
    sget-object v0, Lldu;->e:[Lldu;

    return-object v0

    .line 1416
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
    .line 2494
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2495
    sparse-switch v0, :sswitch_data_0

    .line 2499
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2500
    :sswitch_0
    return-object p0

    .line 2505
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2506
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2515
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lldu;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2521
    :sswitch_2
    iget-object v0, p0, Lldu;->b:Lldz;

    if-nez v0, :cond_1

    .line 2522
    new-instance v0, Lldz;

    invoke-direct {v0}, Lldz;-><init>()V

    iput-object v0, p0, Lldu;->b:Lldz;

    .line 2524
    :cond_1
    iget-object v0, p0, Lldu;->b:Lldz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2528
    :sswitch_3
    iget-object v0, p0, Lldu;->c:Lldv;

    if-nez v0, :cond_2

    .line 2529
    new-instance v0, Lldv;

    invoke-direct {v0}, Lldv;-><init>()V

    iput-object v0, p0, Lldu;->c:Lldv;

    .line 2531
    :cond_2
    iget-object v0, p0, Lldu;->c:Lldv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2535
    :sswitch_4
    iget-object v0, p0, Lldu;->d:Lldw;

    if-nez v0, :cond_3

    .line 2536
    new-instance v0, Lldw;

    invoke-direct {v0}, Lldw;-><init>()V

    iput-object v0, p0, Lldu;->d:Lldw;

    .line 2538
    :cond_3
    iget-object v0, p0, Lldu;->d:Lldw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2495
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 2506
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1452
    iget-object v0, p0, Lldu;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1453
    const/4 v0, 0x1

    iget-object v1, p0, Lldu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1455
    :cond_0
    iget-object v0, p0, Lldu;->b:Lldz;

    if-eqz v0, :cond_1

    .line 1456
    const/4 v0, 0x2

    iget-object v1, p0, Lldu;->b:Lldz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1458
    :cond_1
    iget-object v0, p0, Lldu;->c:Lldv;

    if-eqz v0, :cond_2

    .line 1459
    const/4 v0, 0x3

    iget-object v1, p0, Lldu;->c:Lldv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1461
    :cond_2
    iget-object v0, p0, Lldu;->d:Lldw;

    if-eqz v0, :cond_3

    .line 1462
    const/4 v0, 0x4

    iget-object v1, p0, Lldu;->d:Lldw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1464
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1465
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1469
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1470
    iget-object v1, p0, Lldu;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1471
    const/4 v1, 0x1

    iget-object v2, p0, Lldu;->a:Ljava/lang/Integer;

    .line 1472
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_0
    iget-object v1, p0, Lldu;->b:Lldz;

    if-eqz v1, :cond_1

    .line 1475
    const/4 v1, 0x2

    iget-object v2, p0, Lldu;->b:Lldz;

    .line 1476
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_1
    iget-object v1, p0, Lldu;->c:Lldv;

    if-eqz v1, :cond_2

    .line 1479
    const/4 v1, 0x3

    iget-object v2, p0, Lldu;->c:Lldv;

    .line 1480
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1482
    :cond_2
    iget-object v1, p0, Lldu;->d:Lldw;

    if-eqz v1, :cond_3

    .line 1483
    const/4 v1, 0x4

    iget-object v2, p0, Lldu;->d:Lldw;

    .line 1484
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1486
    :cond_3
    return v0
.end method
