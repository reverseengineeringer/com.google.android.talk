.class public final Llbz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llbz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llcc;

.field public b:Llcb;

.field public c:Llcb;

.field public d:Llca;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1439
    iput-object v0, p0, Llbz;->a:Llcc;

    .line 1440
    iput-object v0, p0, Llbz;->b:Llcb;

    .line 1441
    iput-object v0, p0, Llbz;->c:Llcb;

    .line 1442
    iput-object v0, p0, Llbz;->d:Llca;

    .line 1443
    iput-object v0, p0, Llbz;->eD:Llyd;

    .line 1444
    const/4 v0, -0x1

    iput v0, p0, Llbz;->eE:I

    .line 436
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1493
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1494
    sparse-switch v0, :sswitch_data_0

    .line 1498
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1499
    :sswitch_0
    return-object p0

    .line 1504
    :sswitch_1
    iget-object v0, p0, Llbz;->a:Llcc;

    if-nez v0, :cond_1

    .line 1505
    new-instance v0, Llcc;

    invoke-direct {v0}, Llcc;-><init>()V

    iput-object v0, p0, Llbz;->a:Llcc;

    .line 1507
    :cond_1
    iget-object v0, p0, Llbz;->a:Llcc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1511
    :sswitch_2
    iget-object v0, p0, Llbz;->b:Llcb;

    if-nez v0, :cond_2

    .line 1512
    new-instance v0, Llcb;

    invoke-direct {v0}, Llcb;-><init>()V

    iput-object v0, p0, Llbz;->b:Llcb;

    .line 1514
    :cond_2
    iget-object v0, p0, Llbz;->b:Llcb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1518
    :sswitch_3
    iget-object v0, p0, Llbz;->c:Llcb;

    if-nez v0, :cond_3

    .line 1519
    new-instance v0, Llcb;

    invoke-direct {v0}, Llcb;-><init>()V

    iput-object v0, p0, Llbz;->c:Llcb;

    .line 1521
    :cond_3
    iget-object v0, p0, Llbz;->c:Llcb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1525
    :sswitch_4
    iget-object v0, p0, Llbz;->d:Llca;

    if-nez v0, :cond_4

    .line 1526
    new-instance v0, Llca;

    invoke-direct {v0}, Llca;-><init>()V

    iput-object v0, p0, Llbz;->d:Llca;

    .line 1528
    :cond_4
    iget-object v0, p0, Llbz;->d:Llca;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1494
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
    .line 451
    iget-object v0, p0, Llbz;->a:Llcc;

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x1

    iget-object v1, p0, Llbz;->a:Llcc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 454
    :cond_0
    iget-object v0, p0, Llbz;->b:Llcb;

    if-eqz v0, :cond_1

    .line 455
    const/4 v0, 0x2

    iget-object v1, p0, Llbz;->b:Llcb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 457
    :cond_1
    iget-object v0, p0, Llbz;->c:Llcb;

    if-eqz v0, :cond_2

    .line 458
    const/4 v0, 0x3

    iget-object v1, p0, Llbz;->c:Llcb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 460
    :cond_2
    iget-object v0, p0, Llbz;->d:Llca;

    if-eqz v0, :cond_3

    .line 461
    const/4 v0, 0x4

    iget-object v1, p0, Llbz;->d:Llca;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 463
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 464
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 468
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 469
    iget-object v1, p0, Llbz;->a:Llcc;

    if-eqz v1, :cond_0

    .line 470
    const/4 v1, 0x1

    iget-object v2, p0, Llbz;->a:Llcc;

    .line 471
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_0
    iget-object v1, p0, Llbz;->b:Llcb;

    if-eqz v1, :cond_1

    .line 474
    const/4 v1, 0x2

    iget-object v2, p0, Llbz;->b:Llcb;

    .line 475
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :cond_1
    iget-object v1, p0, Llbz;->c:Llcb;

    if-eqz v1, :cond_2

    .line 478
    const/4 v1, 0x3

    iget-object v2, p0, Llbz;->c:Llcb;

    .line 479
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    :cond_2
    iget-object v1, p0, Llbz;->d:Llca;

    if-eqz v1, :cond_3

    .line 482
    const/4 v1, 0x4

    iget-object v2, p0, Llbz;->d:Llca;

    .line 483
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
    :cond_3
    return v0
.end method
