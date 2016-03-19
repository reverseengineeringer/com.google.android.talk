.class public final Ljbg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbg;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile j:[Ljbg;


# instance fields
.field public a:Ljbn;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Boolean;

.field public g:[Ljava/lang/String;

.field public h:[Ljcq;

.field public i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4393
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5398
    iput-object v1, p0, Ljbg;->a:Ljbn;

    .line 5399
    iput-object v1, p0, Ljbg;->b:Ljava/lang/String;

    .line 5400
    iput-object v1, p0, Ljbg;->c:Ljava/lang/String;

    .line 5401
    iput-object v1, p0, Ljbg;->d:Ljava/lang/String;

    .line 5402
    iput-object v1, p0, Ljbg;->e:Ljava/lang/String;

    .line 5403
    iput-object v1, p0, Ljbg;->f:Ljava/lang/Boolean;

    .line 5404
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljbg;->g:[Ljava/lang/String;

    .line 5405
    invoke-static {}, Ljcq;->d()[Ljcq;

    move-result-object v0

    iput-object v0, p0, Ljbg;->h:[Ljcq;

    .line 5406
    iput-object v1, p0, Ljbg;->i:Ljava/lang/Integer;

    .line 5407
    iput-object v1, p0, Ljbg;->eD:Llyd;

    .line 5408
    const/4 v0, -0x1

    iput v0, p0, Ljbg;->eE:I

    .line 4395
    return-void
.end method

.method public static d()[Ljbg;
    .locals 2

    .prologue
    .line 4353
    sget-object v0, Ljbg;->j:[Ljbg;

    if-nez v0, :cond_1

    .line 4354
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4356
    :try_start_0
    sget-object v0, Ljbg;->j:[Ljbg;

    if-nez v0, :cond_0

    .line 4357
    const/4 v0, 0x0

    new-array v0, v0, [Ljbg;

    sput-object v0, Ljbg;->j:[Ljbg;

    .line 4359
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4361
    :cond_1
    sget-object v0, Ljbg;->j:[Ljbg;

    return-object v0

    .line 4359
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

    .line 6517
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6518
    sparse-switch v0, :sswitch_data_0

    .line 6522
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6523
    :sswitch_0
    return-object p0

    .line 6528
    :sswitch_1
    iget-object v0, p0, Ljbg;->a:Ljbn;

    if-nez v0, :cond_1

    .line 6529
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbg;->a:Ljbn;

    .line 6531
    :cond_1
    iget-object v0, p0, Ljbg;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6535
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbg;->b:Ljava/lang/String;

    goto :goto_0

    .line 6539
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbg;->c:Ljava/lang/String;

    goto :goto_0

    .line 6543
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbg;->d:Ljava/lang/String;

    goto :goto_0

    .line 6547
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbg;->e:Ljava/lang/String;

    goto :goto_0

    .line 6551
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljbg;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 6555
    :sswitch_7
    const/16 v0, 0x3a

    .line 6556
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6557
    iget-object v0, p0, Ljbg;->g:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 6558
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 6559
    if-eqz v0, :cond_2

    .line 6560
    iget-object v3, p0, Ljbg;->g:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6562
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 6563
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6564
    invoke-virtual {p1}, Llxy;->a()I

    .line 6562
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6557
    :cond_3
    iget-object v0, p0, Ljbg;->g:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 6567
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 6568
    iput-object v2, p0, Ljbg;->g:[Ljava/lang/String;

    goto :goto_0

    .line 6572
    :sswitch_8
    const/16 v0, 0x42

    .line 6573
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6574
    iget-object v0, p0, Ljbg;->h:[Ljcq;

    if-nez v0, :cond_6

    move v0, v1

    .line 6575
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljcq;

    .line 6577
    if-eqz v0, :cond_5

    .line 6578
    iget-object v3, p0, Ljbg;->h:[Ljcq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6580
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 6581
    new-instance v3, Ljcq;

    invoke-direct {v3}, Ljcq;-><init>()V

    aput-object v3, v2, v0

    .line 6582
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6583
    invoke-virtual {p1}, Llxy;->a()I

    .line 6580
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6574
    :cond_6
    iget-object v0, p0, Ljbg;->h:[Ljcq;

    array-length v0, v0

    goto :goto_3

    .line 6586
    :cond_7
    new-instance v3, Ljcq;

    invoke-direct {v3}, Ljcq;-><init>()V

    aput-object v3, v2, v0

    .line 6587
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6588
    iput-object v2, p0, Ljbg;->h:[Ljcq;

    goto/16 :goto_0

    .line 6592
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6593
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 6598
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbg;->i:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 6518
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    .line 6593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4415
    iget-object v0, p0, Ljbg;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 4416
    const/4 v0, 0x1

    iget-object v2, p0, Ljbg;->a:Ljbn;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 4418
    :cond_0
    iget-object v0, p0, Ljbg;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4419
    const/4 v0, 0x2

    iget-object v2, p0, Ljbg;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4421
    :cond_1
    iget-object v0, p0, Ljbg;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4422
    const/4 v0, 0x3

    iget-object v2, p0, Ljbg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4424
    :cond_2
    iget-object v0, p0, Ljbg;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4425
    const/4 v0, 0x4

    iget-object v2, p0, Ljbg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4427
    :cond_3
    iget-object v0, p0, Ljbg;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4428
    const/4 v0, 0x5

    iget-object v2, p0, Ljbg;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4430
    :cond_4
    iget-object v0, p0, Ljbg;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 4431
    const/4 v0, 0x6

    iget-object v2, p0, Ljbg;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 4433
    :cond_5
    iget-object v0, p0, Ljbg;->g:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljbg;->g:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 4434
    :goto_0
    iget-object v2, p0, Ljbg;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 4435
    iget-object v2, p0, Ljbg;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 4436
    if-eqz v2, :cond_6

    .line 4437
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 4434
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4441
    :cond_7
    iget-object v0, p0, Ljbg;->h:[Ljcq;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljbg;->h:[Ljcq;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 4442
    :goto_1
    iget-object v0, p0, Ljbg;->h:[Ljcq;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 4443
    iget-object v0, p0, Ljbg;->h:[Ljcq;

    aget-object v0, v0, v1

    .line 4444
    if-eqz v0, :cond_8

    .line 4445
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 4442
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4449
    :cond_9
    iget-object v0, p0, Ljbg;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 4450
    const/16 v0, 0x9

    iget-object v1, p0, Ljbg;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 4452
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4453
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 4457
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4458
    iget-object v1, p0, Ljbg;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 4459
    const/4 v1, 0x1

    iget-object v3, p0, Ljbg;->a:Ljbn;

    .line 4460
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4462
    :cond_0
    iget-object v1, p0, Ljbg;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4463
    const/4 v1, 0x2

    iget-object v3, p0, Ljbg;->b:Ljava/lang/String;

    .line 4464
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4466
    :cond_1
    iget-object v1, p0, Ljbg;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4467
    const/4 v1, 0x3

    iget-object v3, p0, Ljbg;->c:Ljava/lang/String;

    .line 4468
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4470
    :cond_2
    iget-object v1, p0, Ljbg;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4471
    const/4 v1, 0x4

    iget-object v3, p0, Ljbg;->d:Ljava/lang/String;

    .line 4472
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4474
    :cond_3
    iget-object v1, p0, Ljbg;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 4475
    const/4 v1, 0x5

    iget-object v3, p0, Ljbg;->e:Ljava/lang/String;

    .line 4476
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4478
    :cond_4
    iget-object v1, p0, Ljbg;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 4479
    const/4 v1, 0x6

    iget-object v3, p0, Ljbg;->f:Ljava/lang/Boolean;

    .line 4480
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 4480
    add-int/2addr v0, v1

    .line 4482
    :cond_5
    iget-object v1, p0, Ljbg;->g:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Ljbg;->g:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v2

    move v3, v2

    move v4, v2

    .line 4485
    :goto_0
    iget-object v5, p0, Ljbg;->g:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_7

    .line 4486
    iget-object v5, p0, Ljbg;->g:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 4487
    if-eqz v5, :cond_6

    .line 4488
    add-int/lit8 v4, v4, 0x1

    .line 4490
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 4485
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4493
    :cond_7
    add-int/2addr v0, v3

    .line 4494
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 4496
    :cond_8
    iget-object v1, p0, Ljbg;->h:[Ljcq;

    if-eqz v1, :cond_a

    iget-object v1, p0, Ljbg;->h:[Ljcq;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 4497
    :goto_1
    iget-object v1, p0, Ljbg;->h:[Ljcq;

    array-length v1, v1

    if-ge v2, v1, :cond_a

    .line 4498
    iget-object v1, p0, Ljbg;->h:[Ljcq;

    aget-object v1, v1, v2

    .line 4499
    if-eqz v1, :cond_9

    .line 4500
    const/16 v3, 0x8

    .line 4501
    invoke-static {v3, v1}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4497
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4505
    :cond_a
    iget-object v1, p0, Ljbg;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 4506
    const/16 v1, 0x9

    iget-object v2, p0, Ljbg;->i:Ljava/lang/Integer;

    .line 4507
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4509
    :cond_b
    return v0
.end method
