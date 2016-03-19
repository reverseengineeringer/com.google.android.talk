.class public final Ljcj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljcj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljcj;


# instance fields
.field public a:Ljbn;

.field public b:Ljas;

.field public c:Ljava/lang/String;

.field public d:Ljbe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8431
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9436
    iput-object v0, p0, Ljcj;->a:Ljbn;

    .line 9437
    iput-object v0, p0, Ljcj;->b:Ljas;

    .line 9438
    iput-object v0, p0, Ljcj;->c:Ljava/lang/String;

    .line 9439
    iput-object v0, p0, Ljcj;->d:Ljbe;

    .line 9440
    iput-object v0, p0, Ljcj;->eD:Llyd;

    .line 9441
    const/4 v0, -0x1

    iput v0, p0, Ljcj;->eE:I

    .line 8433
    return-void
.end method

.method public static d()[Ljcj;
    .locals 2

    .prologue
    .line 8406
    sget-object v0, Ljcj;->e:[Ljcj;

    if-nez v0, :cond_1

    .line 8407
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 8409
    :try_start_0
    sget-object v0, Ljcj;->e:[Ljcj;

    if-nez v0, :cond_0

    .line 8410
    const/4 v0, 0x0

    new-array v0, v0, [Ljcj;

    sput-object v0, Ljcj;->e:[Ljcj;

    .line 8412
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8414
    :cond_1
    sget-object v0, Ljcj;->e:[Ljcj;

    return-object v0

    .line 8412
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
    .line 9490
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9491
    sparse-switch v0, :sswitch_data_0

    .line 9495
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9496
    :sswitch_0
    return-object p0

    .line 9501
    :sswitch_1
    iget-object v0, p0, Ljcj;->a:Ljbn;

    if-nez v0, :cond_1

    .line 9502
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljcj;->a:Ljbn;

    .line 9504
    :cond_1
    iget-object v0, p0, Ljcj;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9508
    :sswitch_2
    iget-object v0, p0, Ljcj;->b:Ljas;

    if-nez v0, :cond_2

    .line 9509
    new-instance v0, Ljas;

    invoke-direct {v0}, Ljas;-><init>()V

    iput-object v0, p0, Ljcj;->b:Ljas;

    .line 9511
    :cond_2
    iget-object v0, p0, Ljcj;->b:Ljas;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9515
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcj;->c:Ljava/lang/String;

    goto :goto_0

    .line 9519
    :sswitch_4
    iget-object v0, p0, Ljcj;->d:Ljbe;

    if-nez v0, :cond_3

    .line 9520
    new-instance v0, Ljbe;

    invoke-direct {v0}, Ljbe;-><init>()V

    iput-object v0, p0, Ljcj;->d:Ljbe;

    .line 9522
    :cond_3
    iget-object v0, p0, Ljcj;->d:Ljbe;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9491
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
    .line 8448
    iget-object v0, p0, Ljcj;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 8449
    const/4 v0, 0x1

    iget-object v1, p0, Ljcj;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8451
    :cond_0
    iget-object v0, p0, Ljcj;->b:Ljas;

    if-eqz v0, :cond_1

    .line 8452
    const/4 v0, 0x2

    iget-object v1, p0, Ljcj;->b:Ljas;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8454
    :cond_1
    iget-object v0, p0, Ljcj;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8455
    const/4 v0, 0x3

    iget-object v1, p0, Ljcj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8457
    :cond_2
    iget-object v0, p0, Ljcj;->d:Ljbe;

    if-eqz v0, :cond_3

    .line 8458
    const/4 v0, 0x4

    iget-object v1, p0, Ljcj;->d:Ljbe;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8460
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8461
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 8465
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8466
    iget-object v1, p0, Ljcj;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 8467
    const/4 v1, 0x1

    iget-object v2, p0, Ljcj;->a:Ljbn;

    .line 8468
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8470
    :cond_0
    iget-object v1, p0, Ljcj;->b:Ljas;

    if-eqz v1, :cond_1

    .line 8471
    const/4 v1, 0x2

    iget-object v2, p0, Ljcj;->b:Ljas;

    .line 8472
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8474
    :cond_1
    iget-object v1, p0, Ljcj;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8475
    const/4 v1, 0x3

    iget-object v2, p0, Ljcj;->c:Ljava/lang/String;

    .line 8476
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8478
    :cond_2
    iget-object v1, p0, Ljcj;->d:Ljbe;

    if-eqz v1, :cond_3

    .line 8479
    const/4 v1, 0x4

    iget-object v2, p0, Ljcj;->d:Ljbe;

    .line 8480
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8482
    :cond_3
    return v0
.end method
