.class public final Lmkn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmkl;

.field public b:Lmkl;

.field public c:Lmkt;

.field public d:Lmkt;

.field public e:Lmkk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1423
    iput-object v0, p0, Lmkn;->a:Lmkl;

    .line 1424
    iput-object v0, p0, Lmkn;->b:Lmkl;

    .line 1425
    iput-object v0, p0, Lmkn;->c:Lmkt;

    .line 1426
    iput-object v0, p0, Lmkn;->d:Lmkt;

    .line 1427
    iput-object v0, p0, Lmkn;->e:Lmkk;

    .line 1428
    iput-object v0, p0, Lmkn;->eD:Llyd;

    .line 1429
    const/4 v0, -0x1

    iput v0, p0, Lmkn;->eE:I

    .line 420
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1485
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1486
    sparse-switch v0, :sswitch_data_0

    .line 1490
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    :sswitch_0
    return-object p0

    .line 1496
    :sswitch_1
    iget-object v0, p0, Lmkn;->a:Lmkl;

    if-nez v0, :cond_1

    .line 1497
    new-instance v0, Lmkl;

    invoke-direct {v0}, Lmkl;-><init>()V

    iput-object v0, p0, Lmkn;->a:Lmkl;

    .line 1499
    :cond_1
    iget-object v0, p0, Lmkn;->a:Lmkl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1503
    :sswitch_2
    iget-object v0, p0, Lmkn;->b:Lmkl;

    if-nez v0, :cond_2

    .line 1504
    new-instance v0, Lmkl;

    invoke-direct {v0}, Lmkl;-><init>()V

    iput-object v0, p0, Lmkn;->b:Lmkl;

    .line 1506
    :cond_2
    iget-object v0, p0, Lmkn;->b:Lmkl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1510
    :sswitch_3
    iget-object v0, p0, Lmkn;->d:Lmkt;

    if-nez v0, :cond_3

    .line 1511
    new-instance v0, Lmkt;

    invoke-direct {v0}, Lmkt;-><init>()V

    iput-object v0, p0, Lmkn;->d:Lmkt;

    .line 1513
    :cond_3
    iget-object v0, p0, Lmkn;->d:Lmkt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1517
    :sswitch_4
    iget-object v0, p0, Lmkn;->e:Lmkk;

    if-nez v0, :cond_4

    .line 1518
    new-instance v0, Lmkk;

    invoke-direct {v0}, Lmkk;-><init>()V

    iput-object v0, p0, Lmkn;->e:Lmkk;

    .line 1520
    :cond_4
    iget-object v0, p0, Lmkn;->e:Lmkk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1524
    :sswitch_5
    iget-object v0, p0, Lmkn;->c:Lmkt;

    if-nez v0, :cond_5

    .line 1525
    new-instance v0, Lmkt;

    invoke-direct {v0}, Lmkt;-><init>()V

    iput-object v0, p0, Lmkn;->c:Lmkt;

    .line 1527
    :cond_5
    iget-object v0, p0, Lmkn;->c:Lmkt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1486
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lmkn;->a:Lmkl;

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x1

    iget-object v1, p0, Lmkn;->a:Lmkl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lmkn;->b:Lmkl;

    if-eqz v0, :cond_1

    .line 440
    const/4 v0, 0x2

    iget-object v1, p0, Lmkn;->b:Lmkl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 442
    :cond_1
    iget-object v0, p0, Lmkn;->d:Lmkt;

    if-eqz v0, :cond_2

    .line 443
    const/4 v0, 0x3

    iget-object v1, p0, Lmkn;->d:Lmkt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 445
    :cond_2
    iget-object v0, p0, Lmkn;->e:Lmkk;

    if-eqz v0, :cond_3

    .line 446
    const/4 v0, 0x4

    iget-object v1, p0, Lmkn;->e:Lmkk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 448
    :cond_3
    iget-object v0, p0, Lmkn;->c:Lmkt;

    if-eqz v0, :cond_4

    .line 449
    const/4 v0, 0x5

    iget-object v1, p0, Lmkn;->c:Lmkt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 451
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 452
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 456
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 457
    iget-object v1, p0, Lmkn;->a:Lmkl;

    if-eqz v1, :cond_0

    .line 458
    const/4 v1, 0x1

    iget-object v2, p0, Lmkn;->a:Lmkl;

    .line 459
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 461
    :cond_0
    iget-object v1, p0, Lmkn;->b:Lmkl;

    if-eqz v1, :cond_1

    .line 462
    const/4 v1, 0x2

    iget-object v2, p0, Lmkn;->b:Lmkl;

    .line 463
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    :cond_1
    iget-object v1, p0, Lmkn;->d:Lmkt;

    if-eqz v1, :cond_2

    .line 466
    const/4 v1, 0x3

    iget-object v2, p0, Lmkn;->d:Lmkt;

    .line 467
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 469
    :cond_2
    iget-object v1, p0, Lmkn;->e:Lmkk;

    if-eqz v1, :cond_3

    .line 470
    const/4 v1, 0x4

    iget-object v2, p0, Lmkn;->e:Lmkk;

    .line 471
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_3
    iget-object v1, p0, Lmkn;->c:Lmkt;

    if-eqz v1, :cond_4

    .line 474
    const/4 v1, 0x5

    iget-object v2, p0, Lmkn;->c:Lmkt;

    .line 475
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :cond_4
    return v0
.end method
