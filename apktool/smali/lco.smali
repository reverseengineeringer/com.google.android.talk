.class public final Llco;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llco;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile k:[Llco;


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Llcl;

.field public c:Llcl;

.field public d:Llcl;

.field public e:Llcp;

.field public f:Llcp;

.field public g:Llcp;

.field public h:Llcn;

.field public i:Llcn;

.field public j:Llcn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1459
    iput-object v0, p0, Llco;->a:Ljava/lang/Float;

    .line 1460
    iput-object v0, p0, Llco;->b:Llcl;

    .line 1461
    iput-object v0, p0, Llco;->c:Llcl;

    .line 1462
    iput-object v0, p0, Llco;->d:Llcl;

    .line 1463
    iput-object v0, p0, Llco;->e:Llcp;

    .line 1464
    iput-object v0, p0, Llco;->f:Llcp;

    .line 1465
    iput-object v0, p0, Llco;->g:Llcp;

    .line 1466
    iput-object v0, p0, Llco;->h:Llcn;

    .line 1467
    iput-object v0, p0, Llco;->i:Llcn;

    .line 1468
    iput-object v0, p0, Llco;->j:Llcn;

    .line 1469
    iput-object v0, p0, Llco;->eD:Llyd;

    .line 1470
    const/4 v0, -0x1

    iput v0, p0, Llco;->eE:I

    .line 456
    return-void
.end method

.method public static d()[Llco;
    .locals 2

    .prologue
    .line 411
    sget-object v0, Llco;->k:[Llco;

    if-nez v0, :cond_1

    .line 412
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 414
    :try_start_0
    sget-object v0, Llco;->k:[Llco;

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    new-array v0, v0, [Llco;

    sput-object v0, Llco;->k:[Llco;

    .line 417
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_1
    sget-object v0, Llco;->k:[Llco;

    return-object v0

    .line 417
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
    .line 2561
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2562
    sparse-switch v0, :sswitch_data_0

    .line 2566
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2567
    :sswitch_0
    return-object p0

    .line 2572
    :sswitch_1
    invoke-virtual {p1}, Llxy;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Llco;->a:Ljava/lang/Float;

    goto :goto_0

    .line 2576
    :sswitch_2
    iget-object v0, p0, Llco;->b:Llcl;

    if-nez v0, :cond_1

    .line 2577
    new-instance v0, Llcl;

    invoke-direct {v0}, Llcl;-><init>()V

    iput-object v0, p0, Llco;->b:Llcl;

    .line 2579
    :cond_1
    iget-object v0, p0, Llco;->b:Llcl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2583
    :sswitch_3
    iget-object v0, p0, Llco;->c:Llcl;

    if-nez v0, :cond_2

    .line 2584
    new-instance v0, Llcl;

    invoke-direct {v0}, Llcl;-><init>()V

    iput-object v0, p0, Llco;->c:Llcl;

    .line 2586
    :cond_2
    iget-object v0, p0, Llco;->c:Llcl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2590
    :sswitch_4
    iget-object v0, p0, Llco;->d:Llcl;

    if-nez v0, :cond_3

    .line 2591
    new-instance v0, Llcl;

    invoke-direct {v0}, Llcl;-><init>()V

    iput-object v0, p0, Llco;->d:Llcl;

    .line 2593
    :cond_3
    iget-object v0, p0, Llco;->d:Llcl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2597
    :sswitch_5
    iget-object v0, p0, Llco;->e:Llcp;

    if-nez v0, :cond_4

    .line 2598
    new-instance v0, Llcp;

    invoke-direct {v0}, Llcp;-><init>()V

    iput-object v0, p0, Llco;->e:Llcp;

    .line 2600
    :cond_4
    iget-object v0, p0, Llco;->e:Llcp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2604
    :sswitch_6
    iget-object v0, p0, Llco;->f:Llcp;

    if-nez v0, :cond_5

    .line 2605
    new-instance v0, Llcp;

    invoke-direct {v0}, Llcp;-><init>()V

    iput-object v0, p0, Llco;->f:Llcp;

    .line 2607
    :cond_5
    iget-object v0, p0, Llco;->f:Llcp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2611
    :sswitch_7
    iget-object v0, p0, Llco;->g:Llcp;

    if-nez v0, :cond_6

    .line 2612
    new-instance v0, Llcp;

    invoke-direct {v0}, Llcp;-><init>()V

    iput-object v0, p0, Llco;->g:Llcp;

    .line 2614
    :cond_6
    iget-object v0, p0, Llco;->g:Llcp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2618
    :sswitch_8
    iget-object v0, p0, Llco;->h:Llcn;

    if-nez v0, :cond_7

    .line 2619
    new-instance v0, Llcn;

    invoke-direct {v0}, Llcn;-><init>()V

    iput-object v0, p0, Llco;->h:Llcn;

    .line 2621
    :cond_7
    iget-object v0, p0, Llco;->h:Llcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2625
    :sswitch_9
    iget-object v0, p0, Llco;->i:Llcn;

    if-nez v0, :cond_8

    .line 2626
    new-instance v0, Llcn;

    invoke-direct {v0}, Llcn;-><init>()V

    iput-object v0, p0, Llco;->i:Llcn;

    .line 2628
    :cond_8
    iget-object v0, p0, Llco;->i:Llcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2632
    :sswitch_a
    iget-object v0, p0, Llco;->j:Llcn;

    if-nez v0, :cond_9

    .line 2633
    new-instance v0, Llcn;

    invoke-direct {v0}, Llcn;-><init>()V

    iput-object v0, p0, Llco;->j:Llcn;

    .line 2635
    :cond_9
    iget-object v0, p0, Llco;->j:Llcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2562
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Llco;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x1

    iget-object v1, p0, Llco;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IF)V

    .line 480
    :cond_0
    iget-object v0, p0, Llco;->b:Llcl;

    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x2

    iget-object v1, p0, Llco;->b:Llcl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 483
    :cond_1
    iget-object v0, p0, Llco;->c:Llcl;

    if-eqz v0, :cond_2

    .line 484
    const/4 v0, 0x3

    iget-object v1, p0, Llco;->c:Llcl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 486
    :cond_2
    iget-object v0, p0, Llco;->d:Llcl;

    if-eqz v0, :cond_3

    .line 487
    const/4 v0, 0x4

    iget-object v1, p0, Llco;->d:Llcl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 489
    :cond_3
    iget-object v0, p0, Llco;->e:Llcp;

    if-eqz v0, :cond_4

    .line 490
    const/4 v0, 0x5

    iget-object v1, p0, Llco;->e:Llcp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 492
    :cond_4
    iget-object v0, p0, Llco;->f:Llcp;

    if-eqz v0, :cond_5

    .line 493
    const/4 v0, 0x6

    iget-object v1, p0, Llco;->f:Llcp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 495
    :cond_5
    iget-object v0, p0, Llco;->g:Llcp;

    if-eqz v0, :cond_6

    .line 496
    const/4 v0, 0x7

    iget-object v1, p0, Llco;->g:Llcp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 498
    :cond_6
    iget-object v0, p0, Llco;->h:Llcn;

    if-eqz v0, :cond_7

    .line 499
    const/16 v0, 0x8

    iget-object v1, p0, Llco;->h:Llcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 501
    :cond_7
    iget-object v0, p0, Llco;->i:Llcn;

    if-eqz v0, :cond_8

    .line 502
    const/16 v0, 0x9

    iget-object v1, p0, Llco;->i:Llcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 504
    :cond_8
    iget-object v0, p0, Llco;->j:Llcn;

    if-eqz v0, :cond_9

    .line 505
    const/16 v0, 0xa

    iget-object v1, p0, Llco;->j:Llcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 507
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 508
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 512
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 513
    iget-object v1, p0, Llco;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 514
    const/4 v1, 0x1

    iget-object v2, p0, Llco;->a:Ljava/lang/Float;

    .line 515
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1569
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 515
    add-int/2addr v0, v1

    .line 517
    :cond_0
    iget-object v1, p0, Llco;->b:Llcl;

    if-eqz v1, :cond_1

    .line 518
    const/4 v1, 0x2

    iget-object v2, p0, Llco;->b:Llcl;

    .line 519
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 521
    :cond_1
    iget-object v1, p0, Llco;->c:Llcl;

    if-eqz v1, :cond_2

    .line 522
    const/4 v1, 0x3

    iget-object v2, p0, Llco;->c:Llcl;

    .line 523
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 525
    :cond_2
    iget-object v1, p0, Llco;->d:Llcl;

    if-eqz v1, :cond_3

    .line 526
    const/4 v1, 0x4

    iget-object v2, p0, Llco;->d:Llcl;

    .line 527
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 529
    :cond_3
    iget-object v1, p0, Llco;->e:Llcp;

    if-eqz v1, :cond_4

    .line 530
    const/4 v1, 0x5

    iget-object v2, p0, Llco;->e:Llcp;

    .line 531
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 533
    :cond_4
    iget-object v1, p0, Llco;->f:Llcp;

    if-eqz v1, :cond_5

    .line 534
    const/4 v1, 0x6

    iget-object v2, p0, Llco;->f:Llcp;

    .line 535
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 537
    :cond_5
    iget-object v1, p0, Llco;->g:Llcp;

    if-eqz v1, :cond_6

    .line 538
    const/4 v1, 0x7

    iget-object v2, p0, Llco;->g:Llcp;

    .line 539
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    :cond_6
    iget-object v1, p0, Llco;->h:Llcn;

    if-eqz v1, :cond_7

    .line 542
    const/16 v1, 0x8

    iget-object v2, p0, Llco;->h:Llcn;

    .line 543
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_7
    iget-object v1, p0, Llco;->i:Llcn;

    if-eqz v1, :cond_8

    .line 546
    const/16 v1, 0x9

    iget-object v2, p0, Llco;->i:Llcn;

    .line 547
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 549
    :cond_8
    iget-object v1, p0, Llco;->j:Llcn;

    if-eqz v1, :cond_9

    .line 550
    const/16 v1, 0xa

    iget-object v2, p0, Llco;->j:Llcn;

    .line 551
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_9
    return v0
.end method
