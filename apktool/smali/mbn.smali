.class public final Lmbn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmbn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-direct {p0}, Llyb;-><init>()V

    .line 550
    iput-object v0, p0, Lmbn;->a:Ljava/lang/String;

    .line 551
    iput-object v0, p0, Lmbn;->b:Ljava/lang/String;

    .line 552
    iput-object v0, p0, Lmbn;->c:Ljava/lang/String;

    .line 553
    iput-object v0, p0, Lmbn;->d:Ljava/lang/String;

    .line 554
    iput-object v0, p0, Lmbn;->eD:Llyd;

    .line 555
    const/4 v0, -0x1

    iput v0, p0, Lmbn;->eE:I

    .line 556
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1603
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1604
    sparse-switch v0, :sswitch_data_0

    .line 1608
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    :sswitch_0
    return-object p0

    .line 1614
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbn;->a:Ljava/lang/String;

    goto :goto_0

    .line 1618
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbn;->b:Ljava/lang/String;

    goto :goto_0

    .line 1622
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbn;->c:Ljava/lang/String;

    goto :goto_0

    .line 1626
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbn;->d:Ljava/lang/String;

    goto :goto_0

    .line 1604
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
    .line 561
    iget-object v0, p0, Lmbn;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x1

    iget-object v1, p0, Lmbn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 564
    :cond_0
    iget-object v0, p0, Lmbn;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 565
    const/4 v0, 0x2

    iget-object v1, p0, Lmbn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 567
    :cond_1
    iget-object v0, p0, Lmbn;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 568
    const/4 v0, 0x3

    iget-object v1, p0, Lmbn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 570
    :cond_2
    iget-object v0, p0, Lmbn;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 571
    const/4 v0, 0x4

    iget-object v1, p0, Lmbn;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 573
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 574
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 578
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 579
    iget-object v1, p0, Lmbn;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 580
    const/4 v1, 0x1

    iget-object v2, p0, Lmbn;->a:Ljava/lang/String;

    .line 581
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_0
    iget-object v1, p0, Lmbn;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 584
    const/4 v1, 0x2

    iget-object v2, p0, Lmbn;->b:Ljava/lang/String;

    .line 585
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    :cond_1
    iget-object v1, p0, Lmbn;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 588
    const/4 v1, 0x3

    iget-object v2, p0, Lmbn;->c:Ljava/lang/String;

    .line 589
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    :cond_2
    iget-object v1, p0, Lmbn;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 592
    const/4 v1, 0x4

    iget-object v2, p0, Lmbn;->d:Ljava/lang/String;

    .line 593
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 595
    :cond_3
    return v0
.end method
