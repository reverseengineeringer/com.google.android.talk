.class public final Ljnc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljng;

.field public b:Ljnm;

.field public c:Ljnl;

.field public d:Ljnj;

.field public e:Ljne;

.field public f:Ljnd;

.field public g:Ljnj;

.field public h:Ljni;

.field public i:Ljnk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1340
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1341
    iput-object v0, p0, Ljnc;->a:Ljng;

    .line 1342
    iput-object v0, p0, Ljnc;->b:Ljnm;

    .line 1343
    iput-object v0, p0, Ljnc;->c:Ljnl;

    .line 1344
    iput-object v0, p0, Ljnc;->d:Ljnj;

    .line 1345
    iput-object v0, p0, Ljnc;->e:Ljne;

    .line 1346
    iput-object v0, p0, Ljnc;->f:Ljnd;

    .line 1347
    iput-object v0, p0, Ljnc;->g:Ljnj;

    .line 1348
    iput-object v0, p0, Ljnc;->h:Ljni;

    .line 1349
    iput-object v0, p0, Ljnc;->i:Ljnk;

    .line 1350
    iput-object v0, p0, Ljnc;->eD:Llyd;

    .line 1351
    const/4 v0, -0x1

    iput v0, p0, Ljnc;->eE:I

    .line 1352
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2434
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2435
    sparse-switch v0, :sswitch_data_0

    .line 2439
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2440
    :sswitch_0
    return-object p0

    .line 2445
    :sswitch_1
    iget-object v0, p0, Ljnc;->a:Ljng;

    if-nez v0, :cond_1

    .line 2446
    new-instance v0, Ljng;

    invoke-direct {v0}, Ljng;-><init>()V

    iput-object v0, p0, Ljnc;->a:Ljng;

    .line 2448
    :cond_1
    iget-object v0, p0, Ljnc;->a:Ljng;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2452
    :sswitch_2
    iget-object v0, p0, Ljnc;->b:Ljnm;

    if-nez v0, :cond_2

    .line 2453
    new-instance v0, Ljnm;

    invoke-direct {v0}, Ljnm;-><init>()V

    iput-object v0, p0, Ljnc;->b:Ljnm;

    .line 2455
    :cond_2
    iget-object v0, p0, Ljnc;->b:Ljnm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2459
    :sswitch_3
    iget-object v0, p0, Ljnc;->c:Ljnl;

    if-nez v0, :cond_3

    .line 2460
    new-instance v0, Ljnl;

    invoke-direct {v0}, Ljnl;-><init>()V

    iput-object v0, p0, Ljnc;->c:Ljnl;

    .line 2462
    :cond_3
    iget-object v0, p0, Ljnc;->c:Ljnl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2466
    :sswitch_4
    iget-object v0, p0, Ljnc;->d:Ljnj;

    if-nez v0, :cond_4

    .line 2467
    new-instance v0, Ljnj;

    invoke-direct {v0}, Ljnj;-><init>()V

    iput-object v0, p0, Ljnc;->d:Ljnj;

    .line 2469
    :cond_4
    iget-object v0, p0, Ljnc;->d:Ljnj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2473
    :sswitch_5
    iget-object v0, p0, Ljnc;->e:Ljne;

    if-nez v0, :cond_5

    .line 2474
    new-instance v0, Ljne;

    invoke-direct {v0}, Ljne;-><init>()V

    iput-object v0, p0, Ljnc;->e:Ljne;

    .line 2476
    :cond_5
    iget-object v0, p0, Ljnc;->e:Ljne;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2480
    :sswitch_6
    iget-object v0, p0, Ljnc;->g:Ljnj;

    if-nez v0, :cond_6

    .line 2481
    new-instance v0, Ljnj;

    invoke-direct {v0}, Ljnj;-><init>()V

    iput-object v0, p0, Ljnc;->g:Ljnj;

    .line 2483
    :cond_6
    iget-object v0, p0, Ljnc;->g:Ljnj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2487
    :sswitch_7
    iget-object v0, p0, Ljnc;->h:Ljni;

    if-nez v0, :cond_7

    .line 2488
    new-instance v0, Ljni;

    invoke-direct {v0}, Ljni;-><init>()V

    iput-object v0, p0, Ljnc;->h:Ljni;

    .line 2490
    :cond_7
    iget-object v0, p0, Ljnc;->h:Ljni;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2494
    :sswitch_8
    iget-object v0, p0, Ljnc;->i:Ljnk;

    if-nez v0, :cond_8

    .line 2495
    new-instance v0, Ljnk;

    invoke-direct {v0}, Ljnk;-><init>()V

    iput-object v0, p0, Ljnc;->i:Ljnk;

    .line 2497
    :cond_8
    iget-object v0, p0, Ljnc;->i:Ljnk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2501
    :sswitch_9
    iget-object v0, p0, Ljnc;->f:Ljnd;

    if-nez v0, :cond_9

    .line 2502
    new-instance v0, Ljnd;

    invoke-direct {v0}, Ljnd;-><init>()V

    iput-object v0, p0, Ljnc;->f:Ljnd;

    .line 2504
    :cond_9
    iget-object v0, p0, Ljnc;->f:Ljnd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2435
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
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1357
    iget-object v0, p0, Ljnc;->a:Ljng;

    if-eqz v0, :cond_0

    .line 1358
    const/4 v0, 0x1

    iget-object v1, p0, Ljnc;->a:Ljng;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1360
    :cond_0
    iget-object v0, p0, Ljnc;->b:Ljnm;

    if-eqz v0, :cond_1

    .line 1361
    const/4 v0, 0x2

    iget-object v1, p0, Ljnc;->b:Ljnm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1363
    :cond_1
    iget-object v0, p0, Ljnc;->c:Ljnl;

    if-eqz v0, :cond_2

    .line 1364
    const/4 v0, 0x3

    iget-object v1, p0, Ljnc;->c:Ljnl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1366
    :cond_2
    iget-object v0, p0, Ljnc;->d:Ljnj;

    if-eqz v0, :cond_3

    .line 1367
    const/4 v0, 0x4

    iget-object v1, p0, Ljnc;->d:Ljnj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1369
    :cond_3
    iget-object v0, p0, Ljnc;->e:Ljne;

    if-eqz v0, :cond_4

    .line 1370
    const/4 v0, 0x5

    iget-object v1, p0, Ljnc;->e:Ljne;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1372
    :cond_4
    iget-object v0, p0, Ljnc;->g:Ljnj;

    if-eqz v0, :cond_5

    .line 1373
    const/4 v0, 0x6

    iget-object v1, p0, Ljnc;->g:Ljnj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1375
    :cond_5
    iget-object v0, p0, Ljnc;->h:Ljni;

    if-eqz v0, :cond_6

    .line 1376
    const/4 v0, 0x7

    iget-object v1, p0, Ljnc;->h:Ljni;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1378
    :cond_6
    iget-object v0, p0, Ljnc;->i:Ljnk;

    if-eqz v0, :cond_7

    .line 1379
    const/16 v0, 0x9

    iget-object v1, p0, Ljnc;->i:Ljnk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1381
    :cond_7
    iget-object v0, p0, Ljnc;->f:Ljnd;

    if-eqz v0, :cond_8

    .line 1382
    const/16 v0, 0xa

    iget-object v1, p0, Ljnc;->f:Ljnd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1384
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1385
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1389
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1390
    iget-object v1, p0, Ljnc;->a:Ljng;

    if-eqz v1, :cond_0

    .line 1391
    const/4 v1, 0x1

    iget-object v2, p0, Ljnc;->a:Ljng;

    .line 1392
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1394
    :cond_0
    iget-object v1, p0, Ljnc;->b:Ljnm;

    if-eqz v1, :cond_1

    .line 1395
    const/4 v1, 0x2

    iget-object v2, p0, Ljnc;->b:Ljnm;

    .line 1396
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1398
    :cond_1
    iget-object v1, p0, Ljnc;->c:Ljnl;

    if-eqz v1, :cond_2

    .line 1399
    const/4 v1, 0x3

    iget-object v2, p0, Ljnc;->c:Ljnl;

    .line 1400
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1402
    :cond_2
    iget-object v1, p0, Ljnc;->d:Ljnj;

    if-eqz v1, :cond_3

    .line 1403
    const/4 v1, 0x4

    iget-object v2, p0, Ljnc;->d:Ljnj;

    .line 1404
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1406
    :cond_3
    iget-object v1, p0, Ljnc;->e:Ljne;

    if-eqz v1, :cond_4

    .line 1407
    const/4 v1, 0x5

    iget-object v2, p0, Ljnc;->e:Ljne;

    .line 1408
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1410
    :cond_4
    iget-object v1, p0, Ljnc;->g:Ljnj;

    if-eqz v1, :cond_5

    .line 1411
    const/4 v1, 0x6

    iget-object v2, p0, Ljnc;->g:Ljnj;

    .line 1412
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1414
    :cond_5
    iget-object v1, p0, Ljnc;->h:Ljni;

    if-eqz v1, :cond_6

    .line 1415
    const/4 v1, 0x7

    iget-object v2, p0, Ljnc;->h:Ljni;

    .line 1416
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1418
    :cond_6
    iget-object v1, p0, Ljnc;->i:Ljnk;

    if-eqz v1, :cond_7

    .line 1419
    const/16 v1, 0x9

    iget-object v2, p0, Ljnc;->i:Ljnk;

    .line 1420
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1422
    :cond_7
    iget-object v1, p0, Ljnc;->f:Ljnd;

    if-eqz v1, :cond_8

    .line 1423
    const/16 v1, 0xa

    iget-object v2, p0, Ljnc;->f:Ljnd;

    .line 1424
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1426
    :cond_8
    return v0
.end method
