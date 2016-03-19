.class public final Llna;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llna;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lljq;

.field public c:Lljg;

.field public d:Lljh;

.field public e:Llji;

.field public f:Lljo;

.field public g:Llmy;

.field public h:Llmu;

.field public i:Llnj;

.field public j:Llnb;

.field public k:Llmz;

.field public l:Llnc;

.field public m:Llng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 389
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1394
    iput-object v0, p0, Llna;->a:Ljava/lang/Boolean;

    .line 1395
    iput-object v0, p0, Llna;->b:Lljq;

    .line 1396
    iput-object v0, p0, Llna;->c:Lljg;

    .line 1397
    iput-object v0, p0, Llna;->d:Lljh;

    .line 1398
    iput-object v0, p0, Llna;->e:Llji;

    .line 1399
    iput-object v0, p0, Llna;->f:Lljo;

    .line 1400
    iput-object v0, p0, Llna;->g:Llmy;

    .line 1401
    iput-object v0, p0, Llna;->h:Llmu;

    .line 1402
    iput-object v0, p0, Llna;->i:Llnj;

    .line 1403
    iput-object v0, p0, Llna;->j:Llnb;

    .line 1404
    iput-object v0, p0, Llna;->k:Llmz;

    .line 1405
    iput-object v0, p0, Llna;->l:Llnc;

    .line 1406
    iput-object v0, p0, Llna;->m:Llng;

    .line 1407
    iput-object v0, p0, Llna;->eD:Llyd;

    .line 1408
    const/4 v0, -0x1

    iput v0, p0, Llna;->eE:I

    .line 391
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2520
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2521
    sparse-switch v0, :sswitch_data_0

    .line 2525
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2526
    :sswitch_0
    return-object p0

    .line 2531
    :sswitch_1
    iget-object v0, p0, Llna;->b:Lljq;

    if-nez v0, :cond_1

    .line 2532
    new-instance v0, Lljq;

    invoke-direct {v0}, Lljq;-><init>()V

    iput-object v0, p0, Llna;->b:Lljq;

    .line 2534
    :cond_1
    iget-object v0, p0, Llna;->b:Lljq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2538
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llna;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2542
    :sswitch_3
    iget-object v0, p0, Llna;->c:Lljg;

    if-nez v0, :cond_2

    .line 2543
    new-instance v0, Lljg;

    invoke-direct {v0}, Lljg;-><init>()V

    iput-object v0, p0, Llna;->c:Lljg;

    .line 2545
    :cond_2
    iget-object v0, p0, Llna;->c:Lljg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2549
    :sswitch_4
    iget-object v0, p0, Llna;->d:Lljh;

    if-nez v0, :cond_3

    .line 2550
    new-instance v0, Lljh;

    invoke-direct {v0}, Lljh;-><init>()V

    iput-object v0, p0, Llna;->d:Lljh;

    .line 2552
    :cond_3
    iget-object v0, p0, Llna;->d:Lljh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2556
    :sswitch_5
    iget-object v0, p0, Llna;->e:Llji;

    if-nez v0, :cond_4

    .line 2557
    new-instance v0, Llji;

    invoke-direct {v0}, Llji;-><init>()V

    iput-object v0, p0, Llna;->e:Llji;

    .line 2559
    :cond_4
    iget-object v0, p0, Llna;->e:Llji;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2563
    :sswitch_6
    iget-object v0, p0, Llna;->f:Lljo;

    if-nez v0, :cond_5

    .line 2564
    new-instance v0, Lljo;

    invoke-direct {v0}, Lljo;-><init>()V

    iput-object v0, p0, Llna;->f:Lljo;

    .line 2566
    :cond_5
    iget-object v0, p0, Llna;->f:Lljo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2570
    :sswitch_7
    iget-object v0, p0, Llna;->g:Llmy;

    if-nez v0, :cond_6

    .line 2571
    new-instance v0, Llmy;

    invoke-direct {v0}, Llmy;-><init>()V

    iput-object v0, p0, Llna;->g:Llmy;

    .line 2573
    :cond_6
    iget-object v0, p0, Llna;->g:Llmy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2577
    :sswitch_8
    iget-object v0, p0, Llna;->h:Llmu;

    if-nez v0, :cond_7

    .line 2578
    new-instance v0, Llmu;

    invoke-direct {v0}, Llmu;-><init>()V

    iput-object v0, p0, Llna;->h:Llmu;

    .line 2580
    :cond_7
    iget-object v0, p0, Llna;->h:Llmu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2584
    :sswitch_9
    iget-object v0, p0, Llna;->i:Llnj;

    if-nez v0, :cond_8

    .line 2585
    new-instance v0, Llnj;

    invoke-direct {v0}, Llnj;-><init>()V

    iput-object v0, p0, Llna;->i:Llnj;

    .line 2587
    :cond_8
    iget-object v0, p0, Llna;->i:Llnj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2591
    :sswitch_a
    iget-object v0, p0, Llna;->j:Llnb;

    if-nez v0, :cond_9

    .line 2592
    new-instance v0, Llnb;

    invoke-direct {v0}, Llnb;-><init>()V

    iput-object v0, p0, Llna;->j:Llnb;

    .line 2594
    :cond_9
    iget-object v0, p0, Llna;->j:Llnb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2598
    :sswitch_b
    iget-object v0, p0, Llna;->k:Llmz;

    if-nez v0, :cond_a

    .line 2599
    new-instance v0, Llmz;

    invoke-direct {v0}, Llmz;-><init>()V

    iput-object v0, p0, Llna;->k:Llmz;

    .line 2601
    :cond_a
    iget-object v0, p0, Llna;->k:Llmz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2605
    :sswitch_c
    iget-object v0, p0, Llna;->l:Llnc;

    if-nez v0, :cond_b

    .line 2606
    new-instance v0, Llnc;

    invoke-direct {v0}, Llnc;-><init>()V

    iput-object v0, p0, Llna;->l:Llnc;

    .line 2608
    :cond_b
    iget-object v0, p0, Llna;->l:Llnc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2612
    :sswitch_d
    iget-object v0, p0, Llna;->m:Llng;

    if-nez v0, :cond_c

    .line 2613
    new-instance v0, Llng;

    invoke-direct {v0}, Llng;-><init>()V

    iput-object v0, p0, Llna;->m:Llng;

    .line 2615
    :cond_c
    iget-object v0, p0, Llna;->m:Llng;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2521
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x7a -> :sswitch_8
        0x82 -> :sswitch_9
        0x8a -> :sswitch_a
        0x9a -> :sswitch_b
        0xa2 -> :sswitch_c
        0xaa -> :sswitch_d
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Llna;->b:Lljq;

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x1

    iget-object v1, p0, Llna;->b:Lljq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 418
    :cond_0
    iget-object v0, p0, Llna;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 419
    const/4 v0, 0x2

    iget-object v1, p0, Llna;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 421
    :cond_1
    iget-object v0, p0, Llna;->c:Lljg;

    if-eqz v0, :cond_2

    .line 422
    const/4 v0, 0x3

    iget-object v1, p0, Llna;->c:Lljg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 424
    :cond_2
    iget-object v0, p0, Llna;->d:Lljh;

    if-eqz v0, :cond_3

    .line 425
    const/4 v0, 0x4

    iget-object v1, p0, Llna;->d:Lljh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 427
    :cond_3
    iget-object v0, p0, Llna;->e:Llji;

    if-eqz v0, :cond_4

    .line 428
    const/4 v0, 0x5

    iget-object v1, p0, Llna;->e:Llji;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 430
    :cond_4
    iget-object v0, p0, Llna;->f:Lljo;

    if-eqz v0, :cond_5

    .line 431
    const/4 v0, 0x6

    iget-object v1, p0, Llna;->f:Lljo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 433
    :cond_5
    iget-object v0, p0, Llna;->g:Llmy;

    if-eqz v0, :cond_6

    .line 434
    const/4 v0, 0x7

    iget-object v1, p0, Llna;->g:Llmy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 436
    :cond_6
    iget-object v0, p0, Llna;->h:Llmu;

    if-eqz v0, :cond_7

    .line 437
    const/16 v0, 0xf

    iget-object v1, p0, Llna;->h:Llmu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 439
    :cond_7
    iget-object v0, p0, Llna;->i:Llnj;

    if-eqz v0, :cond_8

    .line 440
    const/16 v0, 0x10

    iget-object v1, p0, Llna;->i:Llnj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 442
    :cond_8
    iget-object v0, p0, Llna;->j:Llnb;

    if-eqz v0, :cond_9

    .line 443
    const/16 v0, 0x11

    iget-object v1, p0, Llna;->j:Llnb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 445
    :cond_9
    iget-object v0, p0, Llna;->k:Llmz;

    if-eqz v0, :cond_a

    .line 446
    const/16 v0, 0x13

    iget-object v1, p0, Llna;->k:Llmz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 448
    :cond_a
    iget-object v0, p0, Llna;->l:Llnc;

    if-eqz v0, :cond_b

    .line 449
    const/16 v0, 0x14

    iget-object v1, p0, Llna;->l:Llnc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 451
    :cond_b
    iget-object v0, p0, Llna;->m:Llng;

    if-eqz v0, :cond_c

    .line 452
    const/16 v0, 0x15

    iget-object v1, p0, Llna;->m:Llng;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 454
    :cond_c
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 455
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 459
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 460
    iget-object v1, p0, Llna;->b:Lljq;

    if-eqz v1, :cond_0

    .line 461
    const/4 v1, 0x1

    iget-object v2, p0, Llna;->b:Lljq;

    .line 462
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_0
    iget-object v1, p0, Llna;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 465
    const/4 v1, 0x2

    iget-object v2, p0, Llna;->a:Ljava/lang/Boolean;

    .line 466
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 466
    add-int/2addr v0, v1

    .line 468
    :cond_1
    iget-object v1, p0, Llna;->c:Lljg;

    if-eqz v1, :cond_2

    .line 469
    const/4 v1, 0x3

    iget-object v2, p0, Llna;->c:Lljg;

    .line 470
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    :cond_2
    iget-object v1, p0, Llna;->d:Lljh;

    if-eqz v1, :cond_3

    .line 473
    const/4 v1, 0x4

    iget-object v2, p0, Llna;->d:Lljh;

    .line 474
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 476
    :cond_3
    iget-object v1, p0, Llna;->e:Llji;

    if-eqz v1, :cond_4

    .line 477
    const/4 v1, 0x5

    iget-object v2, p0, Llna;->e:Llji;

    .line 478
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 480
    :cond_4
    iget-object v1, p0, Llna;->f:Lljo;

    if-eqz v1, :cond_5

    .line 481
    const/4 v1, 0x6

    iget-object v2, p0, Llna;->f:Lljo;

    .line 482
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 484
    :cond_5
    iget-object v1, p0, Llna;->g:Llmy;

    if-eqz v1, :cond_6

    .line 485
    const/4 v1, 0x7

    iget-object v2, p0, Llna;->g:Llmy;

    .line 486
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 488
    :cond_6
    iget-object v1, p0, Llna;->h:Llmu;

    if-eqz v1, :cond_7

    .line 489
    const/16 v1, 0xf

    iget-object v2, p0, Llna;->h:Llmu;

    .line 490
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 492
    :cond_7
    iget-object v1, p0, Llna;->i:Llnj;

    if-eqz v1, :cond_8

    .line 493
    const/16 v1, 0x10

    iget-object v2, p0, Llna;->i:Llnj;

    .line 494
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :cond_8
    iget-object v1, p0, Llna;->j:Llnb;

    if-eqz v1, :cond_9

    .line 497
    const/16 v1, 0x11

    iget-object v2, p0, Llna;->j:Llnb;

    .line 498
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 500
    :cond_9
    iget-object v1, p0, Llna;->k:Llmz;

    if-eqz v1, :cond_a

    .line 501
    const/16 v1, 0x13

    iget-object v2, p0, Llna;->k:Llmz;

    .line 502
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    :cond_a
    iget-object v1, p0, Llna;->l:Llnc;

    if-eqz v1, :cond_b

    .line 505
    const/16 v1, 0x14

    iget-object v2, p0, Llna;->l:Llnc;

    .line 506
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    :cond_b
    iget-object v1, p0, Llna;->m:Llng;

    if-eqz v1, :cond_c

    .line 509
    const/16 v1, 0x15

    iget-object v2, p0, Llna;->m:Llng;

    .line 510
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_c
    return v0
.end method
