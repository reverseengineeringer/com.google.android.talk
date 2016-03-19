.class public final Livn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Livn;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4467
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5472
    iput-object v0, p0, Livn;->a:Lixc;

    .line 5473
    iput-object v0, p0, Livn;->b:Ljava/lang/Long;

    .line 5474
    iput-object v0, p0, Livn;->c:Ljava/lang/Long;

    .line 5475
    iput-object v0, p0, Livn;->d:Ljava/lang/String;

    .line 5476
    iput-object v0, p0, Livn;->eD:Llyd;

    .line 5477
    const/4 v0, -0x1

    iput v0, p0, Livn;->eE:I

    .line 4469
    return-void
.end method

.method public static d()[Livn;
    .locals 2

    .prologue
    .line 4442
    sget-object v0, Livn;->e:[Livn;

    if-nez v0, :cond_1

    .line 4443
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4445
    :try_start_0
    sget-object v0, Livn;->e:[Livn;

    if-nez v0, :cond_0

    .line 4446
    const/4 v0, 0x0

    new-array v0, v0, [Livn;

    sput-object v0, Livn;->e:[Livn;

    .line 4448
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4450
    :cond_1
    sget-object v0, Livn;->e:[Livn;

    return-object v0

    .line 4448
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
    .line 5526
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5527
    sparse-switch v0, :sswitch_data_0

    .line 5531
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5532
    :sswitch_0
    return-object p0

    .line 5537
    :sswitch_1
    iget-object v0, p0, Livn;->a:Lixc;

    if-nez v0, :cond_1

    .line 5538
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Livn;->a:Lixc;

    .line 5540
    :cond_1
    iget-object v0, p0, Livn;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5544
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Livn;->b:Ljava/lang/Long;

    goto :goto_0

    .line 5548
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Livn;->c:Ljava/lang/Long;

    goto :goto_0

    .line 5552
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Livn;->d:Ljava/lang/String;

    goto :goto_0

    .line 5527
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 4484
    iget-object v0, p0, Livn;->a:Lixc;

    if-eqz v0, :cond_0

    .line 4485
    const/4 v0, 0x1

    iget-object v1, p0, Livn;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4487
    :cond_0
    iget-object v0, p0, Livn;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 4488
    const/4 v0, 0x2

    iget-object v1, p0, Livn;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 4490
    :cond_1
    iget-object v0, p0, Livn;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 4491
    const/4 v0, 0x3

    iget-object v1, p0, Livn;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 4493
    :cond_2
    iget-object v0, p0, Livn;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4494
    const/4 v0, 0x4

    iget-object v1, p0, Livn;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4496
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4497
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 4501
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4502
    iget-object v1, p0, Livn;->a:Lixc;

    if-eqz v1, :cond_0

    .line 4503
    const/4 v1, 0x1

    iget-object v2, p0, Livn;->a:Lixc;

    .line 4504
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4506
    :cond_0
    iget-object v1, p0, Livn;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 4507
    const/4 v1, 0x2

    iget-object v2, p0, Livn;->b:Ljava/lang/Long;

    .line 4508
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4510
    :cond_1
    iget-object v1, p0, Livn;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 4511
    const/4 v1, 0x3

    iget-object v2, p0, Livn;->c:Ljava/lang/Long;

    .line 4512
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4514
    :cond_2
    iget-object v1, p0, Livn;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4515
    const/4 v1, 0x4

    iget-object v2, p0, Livn;->d:Ljava/lang/String;

    .line 4516
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4518
    :cond_3
    return v0
.end method
