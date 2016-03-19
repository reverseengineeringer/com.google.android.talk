.class public final Lmgd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lmgd;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Lmge;

.field public f:Lmgg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1373
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2378
    iput-object v0, p0, Lmgd;->a:Ljava/lang/String;

    .line 2379
    iput-object v0, p0, Lmgd;->b:Ljava/lang/Boolean;

    .line 2380
    iput-object v0, p0, Lmgd;->c:Ljava/lang/Boolean;

    .line 2381
    iput-object v0, p0, Lmgd;->d:Ljava/lang/Boolean;

    .line 2382
    iput-object v0, p0, Lmgd;->e:Lmge;

    .line 2383
    iput-object v0, p0, Lmgd;->f:Lmgg;

    .line 2384
    iput-object v0, p0, Lmgd;->eD:Llyd;

    .line 2385
    const/4 v0, -0x1

    iput v0, p0, Lmgd;->eE:I

    .line 1375
    return-void
.end method

.method public static d()[Lmgd;
    .locals 2

    .prologue
    .line 1342
    sget-object v0, Lmgd;->g:[Lmgd;

    if-nez v0, :cond_1

    .line 1343
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1345
    :try_start_0
    sget-object v0, Lmgd;->g:[Lmgd;

    if-nez v0, :cond_0

    .line 1346
    const/4 v0, 0x0

    new-array v0, v0, [Lmgd;

    sput-object v0, Lmgd;->g:[Lmgd;

    .line 1348
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    :cond_1
    sget-object v0, Lmgd;->g:[Lmgd;

    return-object v0

    .line 1348
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
    .line 5448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5449
    sparse-switch v0, :sswitch_data_0

    .line 5453
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5454
    :sswitch_0
    return-object p0

    .line 5459
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmgd;->a:Ljava/lang/String;

    goto :goto_0

    .line 5463
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgd;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 5467
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgd;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 5471
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgd;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 5475
    :sswitch_5
    iget-object v0, p0, Lmgd;->e:Lmge;

    if-nez v0, :cond_1

    .line 5476
    new-instance v0, Lmge;

    invoke-direct {v0}, Lmge;-><init>()V

    iput-object v0, p0, Lmgd;->e:Lmge;

    .line 5478
    :cond_1
    iget-object v0, p0, Lmgd;->e:Lmge;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5482
    :sswitch_6
    iget-object v0, p0, Lmgd;->f:Lmgg;

    if-nez v0, :cond_2

    .line 5483
    new-instance v0, Lmgg;

    invoke-direct {v0}, Lmgg;-><init>()V

    iput-object v0, p0, Lmgd;->f:Lmgg;

    .line 5485
    :cond_2
    iget-object v0, p0, Lmgd;->f:Lmgg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5449
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x40 -> :sswitch_2
        0x50 -> :sswitch_3
        0x60 -> :sswitch_4
        0x6a -> :sswitch_5
        0x32a -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1392
    iget-object v0, p0, Lmgd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1393
    const/4 v0, 0x1

    iget-object v1, p0, Lmgd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1395
    :cond_0
    iget-object v0, p0, Lmgd;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1396
    const/16 v0, 0x8

    iget-object v1, p0, Lmgd;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1398
    :cond_1
    iget-object v0, p0, Lmgd;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1399
    const/16 v0, 0xa

    iget-object v1, p0, Lmgd;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1401
    :cond_2
    iget-object v0, p0, Lmgd;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 1402
    const/16 v0, 0xc

    iget-object v1, p0, Lmgd;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1404
    :cond_3
    iget-object v0, p0, Lmgd;->e:Lmge;

    if-eqz v0, :cond_4

    .line 1405
    const/16 v0, 0xd

    iget-object v1, p0, Lmgd;->e:Lmge;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1407
    :cond_4
    iget-object v0, p0, Lmgd;->f:Lmgg;

    if-eqz v0, :cond_5

    .line 1408
    const/16 v0, 0x65

    iget-object v1, p0, Lmgd;->f:Lmgg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1410
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1411
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1415
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1416
    iget-object v1, p0, Lmgd;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1417
    const/4 v1, 0x1

    iget-object v2, p0, Lmgd;->a:Ljava/lang/String;

    .line 1418
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1420
    :cond_0
    iget-object v1, p0, Lmgd;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1421
    const/16 v1, 0x8

    iget-object v2, p0, Lmgd;->b:Ljava/lang/Boolean;

    .line 1422
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1422
    add-int/2addr v0, v1

    .line 1424
    :cond_1
    iget-object v1, p0, Lmgd;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 1425
    const/16 v1, 0xa

    iget-object v2, p0, Lmgd;->c:Ljava/lang/Boolean;

    .line 1426
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1426
    add-int/2addr v0, v1

    .line 1428
    :cond_2
    iget-object v1, p0, Lmgd;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1429
    const/16 v1, 0xc

    iget-object v2, p0, Lmgd;->d:Ljava/lang/Boolean;

    .line 1430
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1430
    add-int/2addr v0, v1

    .line 1432
    :cond_3
    iget-object v1, p0, Lmgd;->e:Lmge;

    if-eqz v1, :cond_4

    .line 1433
    const/16 v1, 0xd

    iget-object v2, p0, Lmgd;->e:Lmge;

    .line 1434
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1436
    :cond_4
    iget-object v1, p0, Lmgd;->f:Lmgg;

    if-eqz v1, :cond_5

    .line 1437
    const/16 v1, 0x65

    iget-object v2, p0, Lmgd;->f:Lmgg;

    .line 1438
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1440
    :cond_5
    return v0
.end method
