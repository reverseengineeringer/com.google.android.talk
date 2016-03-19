.class public final Lldz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llec;

.field public b:Lleb;

.field public c:Lled;

.field public d:Llea;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 505
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1510
    iput-object v0, p0, Lldz;->a:Llec;

    .line 1511
    iput-object v0, p0, Lldz;->b:Lleb;

    .line 1512
    iput-object v0, p0, Lldz;->c:Lled;

    .line 1513
    iput-object v0, p0, Lldz;->d:Llea;

    .line 1514
    iput-object v0, p0, Lldz;->eD:Llyd;

    .line 1515
    const/4 v0, -0x1

    iput v0, p0, Lldz;->eE:I

    .line 507
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1564
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1565
    sparse-switch v0, :sswitch_data_0

    .line 1569
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1570
    :sswitch_0
    return-object p0

    .line 1575
    :sswitch_1
    iget-object v0, p0, Lldz;->a:Llec;

    if-nez v0, :cond_1

    .line 1576
    new-instance v0, Llec;

    invoke-direct {v0}, Llec;-><init>()V

    iput-object v0, p0, Lldz;->a:Llec;

    .line 1578
    :cond_1
    iget-object v0, p0, Lldz;->a:Llec;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1582
    :sswitch_2
    iget-object v0, p0, Lldz;->b:Lleb;

    if-nez v0, :cond_2

    .line 1583
    new-instance v0, Lleb;

    invoke-direct {v0}, Lleb;-><init>()V

    iput-object v0, p0, Lldz;->b:Lleb;

    .line 1585
    :cond_2
    iget-object v0, p0, Lldz;->b:Lleb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1589
    :sswitch_3
    iget-object v0, p0, Lldz;->c:Lled;

    if-nez v0, :cond_3

    .line 1590
    new-instance v0, Lled;

    invoke-direct {v0}, Lled;-><init>()V

    iput-object v0, p0, Lldz;->c:Lled;

    .line 1592
    :cond_3
    iget-object v0, p0, Lldz;->c:Lled;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1596
    :sswitch_4
    iget-object v0, p0, Lldz;->d:Llea;

    if-nez v0, :cond_4

    .line 1597
    new-instance v0, Llea;

    invoke-direct {v0}, Llea;-><init>()V

    iput-object v0, p0, Lldz;->d:Llea;

    .line 1599
    :cond_4
    iget-object v0, p0, Lldz;->d:Llea;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1565
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
    .line 522
    iget-object v0, p0, Lldz;->a:Llec;

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    iget-object v1, p0, Lldz;->a:Llec;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lldz;->b:Lleb;

    if-eqz v0, :cond_1

    .line 526
    const/4 v0, 0x2

    iget-object v1, p0, Lldz;->b:Lleb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 528
    :cond_1
    iget-object v0, p0, Lldz;->c:Lled;

    if-eqz v0, :cond_2

    .line 529
    const/4 v0, 0x3

    iget-object v1, p0, Lldz;->c:Lled;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 531
    :cond_2
    iget-object v0, p0, Lldz;->d:Llea;

    if-eqz v0, :cond_3

    .line 532
    const/4 v0, 0x4

    iget-object v1, p0, Lldz;->d:Llea;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 534
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 535
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 539
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 540
    iget-object v1, p0, Lldz;->a:Llec;

    if-eqz v1, :cond_0

    .line 541
    const/4 v1, 0x1

    iget-object v2, p0, Lldz;->a:Llec;

    .line 542
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 544
    :cond_0
    iget-object v1, p0, Lldz;->b:Lleb;

    if-eqz v1, :cond_1

    .line 545
    const/4 v1, 0x2

    iget-object v2, p0, Lldz;->b:Lleb;

    .line 546
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 548
    :cond_1
    iget-object v1, p0, Lldz;->c:Lled;

    if-eqz v1, :cond_2

    .line 549
    const/4 v1, 0x3

    iget-object v2, p0, Lldz;->c:Lled;

    .line 550
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 552
    :cond_2
    iget-object v1, p0, Lldz;->d:Llea;

    if-eqz v1, :cond_3

    .line 553
    const/4 v1, 0x4

    iget-object v2, p0, Lldz;->d:Llea;

    .line 554
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 556
    :cond_3
    return v0
.end method
