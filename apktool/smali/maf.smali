.class public final Lmaf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmaf;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lmaf;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1461
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2466
    iput-object v0, p0, Lmaf;->a:Ljava/lang/String;

    .line 2467
    iput-object v0, p0, Lmaf;->b:Ljava/lang/Integer;

    .line 2468
    iput-object v0, p0, Lmaf;->eD:Llyd;

    .line 2469
    const/4 v0, -0x1

    iput v0, p0, Lmaf;->eE:I

    .line 1463
    return-void
.end method

.method public static d()[Lmaf;
    .locals 2

    .prologue
    .line 1442
    sget-object v0, Lmaf;->c:[Lmaf;

    if-nez v0, :cond_1

    .line 1443
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1445
    :try_start_0
    sget-object v0, Lmaf;->c:[Lmaf;

    if-nez v0, :cond_0

    .line 1446
    const/4 v0, 0x0

    new-array v0, v0, [Lmaf;

    sput-object v0, Lmaf;->c:[Lmaf;

    .line 1448
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    :cond_1
    sget-object v0, Lmaf;->c:[Lmaf;

    return-object v0

    .line 1448
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
    .line 2504
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2505
    sparse-switch v0, :sswitch_data_0

    .line 2509
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2510
    :sswitch_0
    return-object p0

    .line 2515
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmaf;->a:Ljava/lang/String;

    goto :goto_0

    .line 2519
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmaf;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2505
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1476
    iget-object v0, p0, Lmaf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1477
    const/4 v0, 0x1

    iget-object v1, p0, Lmaf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1479
    :cond_0
    iget-object v0, p0, Lmaf;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1480
    const/4 v0, 0x2

    iget-object v1, p0, Lmaf;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1482
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1483
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1487
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1488
    iget-object v1, p0, Lmaf;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1489
    const/4 v1, 0x1

    iget-object v2, p0, Lmaf;->a:Ljava/lang/String;

    .line 1490
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1492
    :cond_0
    iget-object v1, p0, Lmaf;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1493
    const/4 v1, 0x2

    iget-object v2, p0, Lmaf;->b:Ljava/lang/Integer;

    .line 1494
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1496
    :cond_1
    return v0
.end method
