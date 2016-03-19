.class public final Lmfx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmfx;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmfx;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmfv;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-direct {p0}, Llyb;-><init>()V

    .line 441
    iput-object v0, p0, Lmfx;->a:Ljava/lang/String;

    .line 442
    iput-object v0, p0, Lmfx;->b:Lmfv;

    .line 443
    iput-object v0, p0, Lmfx;->c:Ljava/lang/Long;

    .line 444
    iput-object v0, p0, Lmfx;->eD:Llyd;

    .line 445
    const/4 v0, -0x1

    iput v0, p0, Lmfx;->eE:I

    .line 446
    return-void
.end method

.method public static d()[Lmfx;
    .locals 2

    .prologue
    .line 418
    sget-object v0, Lmfx;->d:[Lmfx;

    if-nez v0, :cond_1

    .line 419
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_0
    sget-object v0, Lmfx;->d:[Lmfx;

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    new-array v0, v0, [Lmfx;

    sput-object v0, Lmfx;->d:[Lmfx;

    .line 424
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_1
    sget-object v0, Lmfx;->d:[Lmfx;

    return-object v0

    .line 424
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
    .locals 2

    .prologue
    .line 1482
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1483
    sparse-switch v0, :sswitch_data_0

    .line 1487
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1488
    :sswitch_0
    return-object p0

    .line 1493
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmfx;->a:Ljava/lang/String;

    goto :goto_0

    .line 1497
    :sswitch_2
    iget-object v0, p0, Lmfx;->b:Lmfv;

    if-nez v0, :cond_1

    .line 1498
    new-instance v0, Lmfv;

    invoke-direct {v0}, Lmfv;-><init>()V

    iput-object v0, p0, Lmfx;->b:Lmfv;

    .line 1500
    :cond_1
    iget-object v0, p0, Lmfx;->b:Lmfv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1504
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmfx;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1483
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 451
    const/4 v0, 0x1

    iget-object v1, p0, Lmfx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 452
    iget-object v0, p0, Lmfx;->b:Lmfv;

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x2

    iget-object v1, p0, Lmfx;->b:Lmfv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lmfx;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 456
    const/4 v0, 0x3

    iget-object v1, p0, Lmfx;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 458
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 459
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 463
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 464
    const/4 v1, 0x1

    iget-object v2, p0, Lmfx;->a:Ljava/lang/String;

    .line 465
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    iget-object v1, p0, Lmfx;->b:Lmfv;

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x2

    iget-object v2, p0, Lmfx;->b:Lmfv;

    .line 468
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_0
    iget-object v1, p0, Lmfx;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 471
    const/4 v1, 0x3

    iget-object v2, p0, Lmfx;->c:Ljava/lang/Long;

    .line 472
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_1
    return v0
.end method
