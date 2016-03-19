.class public final Lmkz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmkz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Lmiv;

.field public d:Lmmo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1517
    iput-object v0, p0, Lmkz;->a:Ljava/lang/Integer;

    .line 1518
    iput-object v0, p0, Lmkz;->b:Ljava/lang/String;

    .line 1519
    iput-object v0, p0, Lmkz;->c:Lmiv;

    .line 1520
    iput-object v0, p0, Lmkz;->d:Lmmo;

    .line 1521
    iput-object v0, p0, Lmkz;->eD:Llyd;

    .line 1522
    const/4 v0, -0x1

    iput v0, p0, Lmkz;->eE:I

    .line 514
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1571
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1572
    sparse-switch v0, :sswitch_data_0

    .line 1576
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1577
    :sswitch_0
    return-object p0

    .line 1582
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1583
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1587
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmkz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1593
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmkz;->b:Ljava/lang/String;

    goto :goto_0

    .line 1597
    :sswitch_3
    iget-object v0, p0, Lmkz;->d:Lmmo;

    if-nez v0, :cond_1

    .line 1598
    new-instance v0, Lmmo;

    invoke-direct {v0}, Lmmo;-><init>()V

    iput-object v0, p0, Lmkz;->d:Lmmo;

    .line 1600
    :cond_1
    iget-object v0, p0, Lmkz;->d:Lmmo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1604
    :sswitch_4
    iget-object v0, p0, Lmkz;->c:Lmiv;

    if-nez v0, :cond_2

    .line 1605
    new-instance v0, Lmiv;

    invoke-direct {v0}, Lmiv;-><init>()V

    iput-object v0, p0, Lmkz;->c:Lmiv;

    .line 1607
    :cond_2
    iget-object v0, p0, Lmkz;->c:Lmiv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1572
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch

    .line 1583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lmkz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x1

    iget-object v1, p0, Lmkz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 532
    :cond_0
    iget-object v0, p0, Lmkz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 533
    const/4 v0, 0x4

    iget-object v1, p0, Lmkz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 535
    :cond_1
    iget-object v0, p0, Lmkz;->d:Lmmo;

    if-eqz v0, :cond_2

    .line 536
    const/4 v0, 0x5

    iget-object v1, p0, Lmkz;->d:Lmmo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 538
    :cond_2
    iget-object v0, p0, Lmkz;->c:Lmiv;

    if-eqz v0, :cond_3

    .line 539
    const/4 v0, 0x6

    iget-object v1, p0, Lmkz;->c:Lmiv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 541
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 542
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 546
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 547
    iget-object v1, p0, Lmkz;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 548
    const/4 v1, 0x1

    iget-object v2, p0, Lmkz;->a:Ljava/lang/Integer;

    .line 549
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 551
    :cond_0
    iget-object v1, p0, Lmkz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 552
    const/4 v1, 0x4

    iget-object v2, p0, Lmkz;->b:Ljava/lang/String;

    .line 553
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_1
    iget-object v1, p0, Lmkz;->d:Lmmo;

    if-eqz v1, :cond_2

    .line 556
    const/4 v1, 0x5

    iget-object v2, p0, Lmkz;->d:Lmmo;

    .line 557
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_2
    iget-object v1, p0, Lmkz;->c:Lmiv;

    if-eqz v1, :cond_3

    .line 560
    const/4 v1, 0x6

    iget-object v2, p0, Lmkz;->c:Lmiv;

    .line 561
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_3
    return v0
.end method
