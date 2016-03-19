.class public final Lmro;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmro;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmro;


# instance fields
.field public a:Lmrp;

.field public b:Lmrq;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 421
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1426
    iput-object v0, p0, Lmro;->a:Lmrp;

    .line 1427
    iput-object v0, p0, Lmro;->b:Lmrq;

    .line 1428
    iput-object v0, p0, Lmro;->c:Ljava/lang/Integer;

    .line 1429
    iput-object v0, p0, Lmro;->eD:Llyd;

    .line 1430
    const/4 v0, -0x1

    iput v0, p0, Lmro;->eE:I

    .line 423
    return-void
.end method

.method public static d()[Lmro;
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lmro;->d:[Lmro;

    if-nez v0, :cond_1

    .line 400
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    sget-object v0, Lmro;->d:[Lmro;

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    new-array v0, v0, [Lmro;

    sput-object v0, Lmro;->d:[Lmro;

    .line 405
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_1
    sget-object v0, Lmro;->d:[Lmro;

    return-object v0

    .line 405
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
    .line 1472
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1473
    sparse-switch v0, :sswitch_data_0

    .line 1477
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1478
    :sswitch_0
    return-object p0

    .line 1483
    :sswitch_1
    iget-object v0, p0, Lmro;->a:Lmrp;

    if-nez v0, :cond_1

    .line 1484
    new-instance v0, Lmrp;

    invoke-direct {v0}, Lmrp;-><init>()V

    iput-object v0, p0, Lmro;->a:Lmrp;

    .line 1486
    :cond_1
    iget-object v0, p0, Lmro;->a:Lmrp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1490
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1491
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1505
    :sswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmro;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1511
    :sswitch_4
    iget-object v0, p0, Lmro;->b:Lmrq;

    if-nez v0, :cond_2

    .line 1512
    new-instance v0, Lmrq;

    invoke-direct {v0}, Lmrq;-><init>()V

    iput-object v0, p0, Lmro;->b:Lmrq;

    .line 1514
    :cond_2
    iget-object v0, p0, Lmro;->b:Lmrq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1473
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 1491
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0x2d -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lmro;->a:Lmrp;

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    iget-object v1, p0, Lmro;->a:Lmrp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lmro;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 441
    const/4 v0, 0x2

    iget-object v1, p0, Lmro;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 443
    :cond_1
    iget-object v0, p0, Lmro;->b:Lmrq;

    if-eqz v0, :cond_2

    .line 444
    const/4 v0, 0x3

    iget-object v1, p0, Lmro;->b:Lmrq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 446
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 447
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 451
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 452
    iget-object v1, p0, Lmro;->a:Lmrp;

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, 0x1

    iget-object v2, p0, Lmro;->a:Lmrp;

    .line 454
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_0
    iget-object v1, p0, Lmro;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 457
    const/4 v1, 0x2

    iget-object v2, p0, Lmro;->c:Ljava/lang/Integer;

    .line 458
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_1
    iget-object v1, p0, Lmro;->b:Lmrq;

    if-eqz v1, :cond_2

    .line 461
    const/4 v1, 0x3

    iget-object v2, p0, Lmro;->b:Lmrq;

    .line 462
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_2
    return v0
.end method
