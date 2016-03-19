.class public final Lldk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lldn;

.field public b:Lldm;

.field public c:Lldo;

.field public d:Lldl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-direct {p0}, Llyb;-><init>()V

    .line 482
    iput-object v0, p0, Lldk;->a:Lldn;

    .line 483
    iput-object v0, p0, Lldk;->b:Lldm;

    .line 484
    iput-object v0, p0, Lldk;->c:Lldo;

    .line 485
    iput-object v0, p0, Lldk;->d:Lldl;

    .line 486
    iput-object v0, p0, Lldk;->eD:Llyd;

    .line 487
    const/4 v0, -0x1

    iput v0, p0, Lldk;->eE:I

    .line 488
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1535
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1536
    sparse-switch v0, :sswitch_data_0

    .line 1540
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1541
    :sswitch_0
    return-object p0

    .line 1546
    :sswitch_1
    iget-object v0, p0, Lldk;->a:Lldn;

    if-nez v0, :cond_1

    .line 1547
    new-instance v0, Lldn;

    invoke-direct {v0}, Lldn;-><init>()V

    iput-object v0, p0, Lldk;->a:Lldn;

    .line 1549
    :cond_1
    iget-object v0, p0, Lldk;->a:Lldn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1553
    :sswitch_2
    iget-object v0, p0, Lldk;->b:Lldm;

    if-nez v0, :cond_2

    .line 1554
    new-instance v0, Lldm;

    invoke-direct {v0}, Lldm;-><init>()V

    iput-object v0, p0, Lldk;->b:Lldm;

    .line 1556
    :cond_2
    iget-object v0, p0, Lldk;->b:Lldm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1560
    :sswitch_3
    iget-object v0, p0, Lldk;->c:Lldo;

    if-nez v0, :cond_3

    .line 1561
    new-instance v0, Lldo;

    invoke-direct {v0}, Lldo;-><init>()V

    iput-object v0, p0, Lldk;->c:Lldo;

    .line 1563
    :cond_3
    iget-object v0, p0, Lldk;->c:Lldo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1567
    :sswitch_4
    iget-object v0, p0, Lldk;->d:Lldl;

    if-nez v0, :cond_4

    .line 1568
    new-instance v0, Lldl;

    invoke-direct {v0}, Lldl;-><init>()V

    iput-object v0, p0, Lldk;->d:Lldl;

    .line 1570
    :cond_4
    iget-object v0, p0, Lldk;->d:Lldl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1536
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
    .line 493
    iget-object v0, p0, Lldk;->a:Lldn;

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x1

    iget-object v1, p0, Lldk;->a:Lldn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lldk;->b:Lldm;

    if-eqz v0, :cond_1

    .line 497
    const/4 v0, 0x2

    iget-object v1, p0, Lldk;->b:Lldm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 499
    :cond_1
    iget-object v0, p0, Lldk;->c:Lldo;

    if-eqz v0, :cond_2

    .line 500
    const/4 v0, 0x3

    iget-object v1, p0, Lldk;->c:Lldo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 502
    :cond_2
    iget-object v0, p0, Lldk;->d:Lldl;

    if-eqz v0, :cond_3

    .line 503
    const/4 v0, 0x4

    iget-object v1, p0, Lldk;->d:Lldl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 505
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 506
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 510
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 511
    iget-object v1, p0, Lldk;->a:Lldn;

    if-eqz v1, :cond_0

    .line 512
    const/4 v1, 0x1

    iget-object v2, p0, Lldk;->a:Lldn;

    .line 513
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    :cond_0
    iget-object v1, p0, Lldk;->b:Lldm;

    if-eqz v1, :cond_1

    .line 516
    const/4 v1, 0x2

    iget-object v2, p0, Lldk;->b:Lldm;

    .line 517
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_1
    iget-object v1, p0, Lldk;->c:Lldo;

    if-eqz v1, :cond_2

    .line 520
    const/4 v1, 0x3

    iget-object v2, p0, Lldk;->c:Lldo;

    .line 521
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_2
    iget-object v1, p0, Lldk;->d:Lldl;

    if-eqz v1, :cond_3

    .line 524
    const/4 v1, 0x4

    iget-object v2, p0, Lldk;->d:Lldl;

    .line 525
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_3
    return v0
.end method
