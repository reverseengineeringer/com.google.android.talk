.class public final Ljpf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljmp;

.field public b:Ljlc;

.field public c:Ljmr;

.field public d:Ljmf;

.field public e:Ljpi;

.field public f:Ljlo;

.field public g:Ljnr;

.field public h:Ljii;

.field public i:Ljnq;

.field public j:Ljll;

.field public k:Ljma;

.field public l:Ljly;

.field public m:Ljlz;

.field public n:Ljmb;

.field public o:Ljli;

.field public p:Ljmk;

.field public q:Ljnu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1308
    iput-object v0, p0, Ljpf;->a:Ljmp;

    .line 1309
    iput-object v0, p0, Ljpf;->b:Ljlc;

    .line 1310
    iput-object v0, p0, Ljpf;->c:Ljmr;

    .line 1311
    iput-object v0, p0, Ljpf;->d:Ljmf;

    .line 1312
    iput-object v0, p0, Ljpf;->e:Ljpi;

    .line 1313
    iput-object v0, p0, Ljpf;->f:Ljlo;

    .line 1314
    iput-object v0, p0, Ljpf;->g:Ljnr;

    .line 1315
    iput-object v0, p0, Ljpf;->h:Ljii;

    .line 1316
    iput-object v0, p0, Ljpf;->i:Ljnq;

    .line 1317
    iput-object v0, p0, Ljpf;->j:Ljll;

    .line 1318
    iput-object v0, p0, Ljpf;->k:Ljma;

    .line 1319
    iput-object v0, p0, Ljpf;->l:Ljly;

    .line 1320
    iput-object v0, p0, Ljpf;->m:Ljlz;

    .line 1321
    iput-object v0, p0, Ljpf;->n:Ljmb;

    .line 1322
    iput-object v0, p0, Ljpf;->o:Ljli;

    .line 1323
    iput-object v0, p0, Ljpf;->p:Ljmk;

    .line 1324
    iput-object v0, p0, Ljpf;->q:Ljnu;

    .line 1325
    iput-object v0, p0, Ljpf;->eD:Llyd;

    .line 1326
    const/4 v0, -0x1

    iput v0, p0, Ljpf;->eE:I

    .line 305
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1466
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1467
    sparse-switch v0, :sswitch_data_0

    .line 1471
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    :sswitch_0
    return-object p0

    .line 1477
    :sswitch_1
    iget-object v0, p0, Ljpf;->a:Ljmp;

    if-nez v0, :cond_1

    .line 1478
    new-instance v0, Ljmp;

    invoke-direct {v0}, Ljmp;-><init>()V

    iput-object v0, p0, Ljpf;->a:Ljmp;

    .line 1480
    :cond_1
    iget-object v0, p0, Ljpf;->a:Ljmp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1484
    :sswitch_2
    iget-object v0, p0, Ljpf;->b:Ljlc;

    if-nez v0, :cond_2

    .line 1485
    new-instance v0, Ljlc;

    invoke-direct {v0}, Ljlc;-><init>()V

    iput-object v0, p0, Ljpf;->b:Ljlc;

    .line 1487
    :cond_2
    iget-object v0, p0, Ljpf;->b:Ljlc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1491
    :sswitch_3
    iget-object v0, p0, Ljpf;->c:Ljmr;

    if-nez v0, :cond_3

    .line 1492
    new-instance v0, Ljmr;

    invoke-direct {v0}, Ljmr;-><init>()V

    iput-object v0, p0, Ljpf;->c:Ljmr;

    .line 1494
    :cond_3
    iget-object v0, p0, Ljpf;->c:Ljmr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1498
    :sswitch_4
    iget-object v0, p0, Ljpf;->d:Ljmf;

    if-nez v0, :cond_4

    .line 1499
    new-instance v0, Ljmf;

    invoke-direct {v0}, Ljmf;-><init>()V

    iput-object v0, p0, Ljpf;->d:Ljmf;

    .line 1501
    :cond_4
    iget-object v0, p0, Ljpf;->d:Ljmf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1505
    :sswitch_5
    iget-object v0, p0, Ljpf;->e:Ljpi;

    if-nez v0, :cond_5

    .line 1506
    new-instance v0, Ljpi;

    invoke-direct {v0}, Ljpi;-><init>()V

    iput-object v0, p0, Ljpf;->e:Ljpi;

    .line 1508
    :cond_5
    iget-object v0, p0, Ljpf;->e:Ljpi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1512
    :sswitch_6
    iget-object v0, p0, Ljpf;->f:Ljlo;

    if-nez v0, :cond_6

    .line 1513
    new-instance v0, Ljlo;

    invoke-direct {v0}, Ljlo;-><init>()V

    iput-object v0, p0, Ljpf;->f:Ljlo;

    .line 1515
    :cond_6
    iget-object v0, p0, Ljpf;->f:Ljlo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1519
    :sswitch_7
    iget-object v0, p0, Ljpf;->g:Ljnr;

    if-nez v0, :cond_7

    .line 1520
    new-instance v0, Ljnr;

    invoke-direct {v0}, Ljnr;-><init>()V

    iput-object v0, p0, Ljpf;->g:Ljnr;

    .line 1522
    :cond_7
    iget-object v0, p0, Ljpf;->g:Ljnr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1526
    :sswitch_8
    iget-object v0, p0, Ljpf;->h:Ljii;

    if-nez v0, :cond_8

    .line 1527
    new-instance v0, Ljii;

    invoke-direct {v0}, Ljii;-><init>()V

    iput-object v0, p0, Ljpf;->h:Ljii;

    .line 1529
    :cond_8
    iget-object v0, p0, Ljpf;->h:Ljii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1533
    :sswitch_9
    iget-object v0, p0, Ljpf;->i:Ljnq;

    if-nez v0, :cond_9

    .line 1534
    new-instance v0, Ljnq;

    invoke-direct {v0}, Ljnq;-><init>()V

    iput-object v0, p0, Ljpf;->i:Ljnq;

    .line 1536
    :cond_9
    iget-object v0, p0, Ljpf;->i:Ljnq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1540
    :sswitch_a
    iget-object v0, p0, Ljpf;->j:Ljll;

    if-nez v0, :cond_a

    .line 1541
    new-instance v0, Ljll;

    invoke-direct {v0}, Ljll;-><init>()V

    iput-object v0, p0, Ljpf;->j:Ljll;

    .line 1543
    :cond_a
    iget-object v0, p0, Ljpf;->j:Ljll;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1547
    :sswitch_b
    iget-object v0, p0, Ljpf;->k:Ljma;

    if-nez v0, :cond_b

    .line 1548
    new-instance v0, Ljma;

    invoke-direct {v0}, Ljma;-><init>()V

    iput-object v0, p0, Ljpf;->k:Ljma;

    .line 1550
    :cond_b
    iget-object v0, p0, Ljpf;->k:Ljma;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1554
    :sswitch_c
    iget-object v0, p0, Ljpf;->l:Ljly;

    if-nez v0, :cond_c

    .line 1555
    new-instance v0, Ljly;

    invoke-direct {v0}, Ljly;-><init>()V

    iput-object v0, p0, Ljpf;->l:Ljly;

    .line 1557
    :cond_c
    iget-object v0, p0, Ljpf;->l:Ljly;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1561
    :sswitch_d
    iget-object v0, p0, Ljpf;->m:Ljlz;

    if-nez v0, :cond_d

    .line 1562
    new-instance v0, Ljlz;

    invoke-direct {v0}, Ljlz;-><init>()V

    iput-object v0, p0, Ljpf;->m:Ljlz;

    .line 1564
    :cond_d
    iget-object v0, p0, Ljpf;->m:Ljlz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1568
    :sswitch_e
    iget-object v0, p0, Ljpf;->n:Ljmb;

    if-nez v0, :cond_e

    .line 1569
    new-instance v0, Ljmb;

    invoke-direct {v0}, Ljmb;-><init>()V

    iput-object v0, p0, Ljpf;->n:Ljmb;

    .line 1571
    :cond_e
    iget-object v0, p0, Ljpf;->n:Ljmb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1575
    :sswitch_f
    iget-object v0, p0, Ljpf;->o:Ljli;

    if-nez v0, :cond_f

    .line 1576
    new-instance v0, Ljli;

    invoke-direct {v0}, Ljli;-><init>()V

    iput-object v0, p0, Ljpf;->o:Ljli;

    .line 1578
    :cond_f
    iget-object v0, p0, Ljpf;->o:Ljli;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1582
    :sswitch_10
    iget-object v0, p0, Ljpf;->p:Ljmk;

    if-nez v0, :cond_10

    .line 1583
    new-instance v0, Ljmk;

    invoke-direct {v0}, Ljmk;-><init>()V

    iput-object v0, p0, Ljpf;->p:Ljmk;

    .line 1585
    :cond_10
    iget-object v0, p0, Ljpf;->p:Ljmk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1589
    :sswitch_11
    iget-object v0, p0, Ljpf;->q:Ljnu;

    if-nez v0, :cond_11

    .line 1590
    new-instance v0, Ljnu;

    invoke-direct {v0}, Ljnu;-><init>()V

    iput-object v0, p0, Ljpf;->q:Ljnu;

    .line 1592
    :cond_11
    iget-object v0, p0, Ljpf;->q:Ljnu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1467
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
        0x8a -> :sswitch_10
        0x92 -> :sswitch_11
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Ljpf;->a:Ljmp;

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    iget-object v1, p0, Ljpf;->a:Ljmp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 336
    :cond_0
    iget-object v0, p0, Ljpf;->b:Ljlc;

    if-eqz v0, :cond_1

    .line 337
    const/4 v0, 0x2

    iget-object v1, p0, Ljpf;->b:Ljlc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 339
    :cond_1
    iget-object v0, p0, Ljpf;->c:Ljmr;

    if-eqz v0, :cond_2

    .line 340
    const/4 v0, 0x3

    iget-object v1, p0, Ljpf;->c:Ljmr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 342
    :cond_2
    iget-object v0, p0, Ljpf;->d:Ljmf;

    if-eqz v0, :cond_3

    .line 343
    const/4 v0, 0x4

    iget-object v1, p0, Ljpf;->d:Ljmf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 345
    :cond_3
    iget-object v0, p0, Ljpf;->e:Ljpi;

    if-eqz v0, :cond_4

    .line 346
    const/4 v0, 0x5

    iget-object v1, p0, Ljpf;->e:Ljpi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 348
    :cond_4
    iget-object v0, p0, Ljpf;->f:Ljlo;

    if-eqz v0, :cond_5

    .line 349
    const/4 v0, 0x6

    iget-object v1, p0, Ljpf;->f:Ljlo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 351
    :cond_5
    iget-object v0, p0, Ljpf;->g:Ljnr;

    if-eqz v0, :cond_6

    .line 352
    const/4 v0, 0x7

    iget-object v1, p0, Ljpf;->g:Ljnr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 354
    :cond_6
    iget-object v0, p0, Ljpf;->h:Ljii;

    if-eqz v0, :cond_7

    .line 355
    const/16 v0, 0x8

    iget-object v1, p0, Ljpf;->h:Ljii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 357
    :cond_7
    iget-object v0, p0, Ljpf;->i:Ljnq;

    if-eqz v0, :cond_8

    .line 358
    const/16 v0, 0x9

    iget-object v1, p0, Ljpf;->i:Ljnq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 360
    :cond_8
    iget-object v0, p0, Ljpf;->j:Ljll;

    if-eqz v0, :cond_9

    .line 361
    const/16 v0, 0xb

    iget-object v1, p0, Ljpf;->j:Ljll;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 363
    :cond_9
    iget-object v0, p0, Ljpf;->k:Ljma;

    if-eqz v0, :cond_a

    .line 364
    const/16 v0, 0xc

    iget-object v1, p0, Ljpf;->k:Ljma;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 366
    :cond_a
    iget-object v0, p0, Ljpf;->l:Ljly;

    if-eqz v0, :cond_b

    .line 367
    const/16 v0, 0xd

    iget-object v1, p0, Ljpf;->l:Ljly;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 369
    :cond_b
    iget-object v0, p0, Ljpf;->m:Ljlz;

    if-eqz v0, :cond_c

    .line 370
    const/16 v0, 0xe

    iget-object v1, p0, Ljpf;->m:Ljlz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 372
    :cond_c
    iget-object v0, p0, Ljpf;->n:Ljmb;

    if-eqz v0, :cond_d

    .line 373
    const/16 v0, 0xf

    iget-object v1, p0, Ljpf;->n:Ljmb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 375
    :cond_d
    iget-object v0, p0, Ljpf;->o:Ljli;

    if-eqz v0, :cond_e

    .line 376
    const/16 v0, 0x10

    iget-object v1, p0, Ljpf;->o:Ljli;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 378
    :cond_e
    iget-object v0, p0, Ljpf;->p:Ljmk;

    if-eqz v0, :cond_f

    .line 379
    const/16 v0, 0x11

    iget-object v1, p0, Ljpf;->p:Ljmk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 381
    :cond_f
    iget-object v0, p0, Ljpf;->q:Ljnu;

    if-eqz v0, :cond_10

    .line 382
    const/16 v0, 0x12

    iget-object v1, p0, Ljpf;->q:Ljnu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 384
    :cond_10
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 385
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 390
    iget-object v1, p0, Ljpf;->a:Ljmp;

    if-eqz v1, :cond_0

    .line 391
    const/4 v1, 0x1

    iget-object v2, p0, Ljpf;->a:Ljmp;

    .line 392
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_0
    iget-object v1, p0, Ljpf;->b:Ljlc;

    if-eqz v1, :cond_1

    .line 395
    const/4 v1, 0x2

    iget-object v2, p0, Ljpf;->b:Ljlc;

    .line 396
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_1
    iget-object v1, p0, Ljpf;->c:Ljmr;

    if-eqz v1, :cond_2

    .line 399
    const/4 v1, 0x3

    iget-object v2, p0, Ljpf;->c:Ljmr;

    .line 400
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    :cond_2
    iget-object v1, p0, Ljpf;->d:Ljmf;

    if-eqz v1, :cond_3

    .line 403
    const/4 v1, 0x4

    iget-object v2, p0, Ljpf;->d:Ljmf;

    .line 404
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_3
    iget-object v1, p0, Ljpf;->e:Ljpi;

    if-eqz v1, :cond_4

    .line 407
    const/4 v1, 0x5

    iget-object v2, p0, Ljpf;->e:Ljpi;

    .line 408
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    :cond_4
    iget-object v1, p0, Ljpf;->f:Ljlo;

    if-eqz v1, :cond_5

    .line 411
    const/4 v1, 0x6

    iget-object v2, p0, Ljpf;->f:Ljlo;

    .line 412
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 414
    :cond_5
    iget-object v1, p0, Ljpf;->g:Ljnr;

    if-eqz v1, :cond_6

    .line 415
    const/4 v1, 0x7

    iget-object v2, p0, Ljpf;->g:Ljnr;

    .line 416
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    :cond_6
    iget-object v1, p0, Ljpf;->h:Ljii;

    if-eqz v1, :cond_7

    .line 419
    const/16 v1, 0x8

    iget-object v2, p0, Ljpf;->h:Ljii;

    .line 420
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 422
    :cond_7
    iget-object v1, p0, Ljpf;->i:Ljnq;

    if-eqz v1, :cond_8

    .line 423
    const/16 v1, 0x9

    iget-object v2, p0, Ljpf;->i:Ljnq;

    .line 424
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    :cond_8
    iget-object v1, p0, Ljpf;->j:Ljll;

    if-eqz v1, :cond_9

    .line 427
    const/16 v1, 0xb

    iget-object v2, p0, Ljpf;->j:Ljll;

    .line 428
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_9
    iget-object v1, p0, Ljpf;->k:Ljma;

    if-eqz v1, :cond_a

    .line 431
    const/16 v1, 0xc

    iget-object v2, p0, Ljpf;->k:Ljma;

    .line 432
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_a
    iget-object v1, p0, Ljpf;->l:Ljly;

    if-eqz v1, :cond_b

    .line 435
    const/16 v1, 0xd

    iget-object v2, p0, Ljpf;->l:Ljly;

    .line 436
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_b
    iget-object v1, p0, Ljpf;->m:Ljlz;

    if-eqz v1, :cond_c

    .line 439
    const/16 v1, 0xe

    iget-object v2, p0, Ljpf;->m:Ljlz;

    .line 440
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_c
    iget-object v1, p0, Ljpf;->n:Ljmb;

    if-eqz v1, :cond_d

    .line 443
    const/16 v1, 0xf

    iget-object v2, p0, Ljpf;->n:Ljmb;

    .line 444
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 446
    :cond_d
    iget-object v1, p0, Ljpf;->o:Ljli;

    if-eqz v1, :cond_e

    .line 447
    const/16 v1, 0x10

    iget-object v2, p0, Ljpf;->o:Ljli;

    .line 448
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_e
    iget-object v1, p0, Ljpf;->p:Ljmk;

    if-eqz v1, :cond_f

    .line 451
    const/16 v1, 0x11

    iget-object v2, p0, Ljpf;->p:Ljmk;

    .line 452
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :cond_f
    iget-object v1, p0, Ljpf;->q:Ljnu;

    if-eqz v1, :cond_10

    .line 455
    const/16 v1, 0x12

    iget-object v2, p0, Ljpf;->q:Ljnu;

    .line 456
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    :cond_10
    return v0
.end method
