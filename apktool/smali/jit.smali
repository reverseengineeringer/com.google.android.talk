.class public final Ljit;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljit;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljiu;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 582
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1587
    iput-object v0, p0, Ljit;->a:Ljava/lang/String;

    .line 1588
    iput-object v0, p0, Ljit;->b:Ljava/lang/Integer;

    .line 1589
    iput-object v0, p0, Ljit;->c:Ljiu;

    .line 1590
    iput-object v0, p0, Ljit;->d:Ljava/lang/String;

    .line 1591
    iput-object v0, p0, Ljit;->eD:Llyd;

    .line 1592
    const/4 v0, -0x1

    iput v0, p0, Ljit;->eE:I

    .line 584
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1641
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1642
    sparse-switch v0, :sswitch_data_0

    .line 1646
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1647
    :sswitch_0
    return-object p0

    .line 1652
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljit;->a:Ljava/lang/String;

    goto :goto_0

    .line 1656
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1657
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1660
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljit;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1666
    :sswitch_3
    iget-object v0, p0, Ljit;->c:Ljiu;

    if-nez v0, :cond_1

    .line 1667
    new-instance v0, Ljiu;

    invoke-direct {v0}, Ljiu;-><init>()V

    iput-object v0, p0, Ljit;->c:Ljiu;

    .line 1669
    :cond_1
    iget-object v0, p0, Ljit;->c:Ljiu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1673
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljit;->d:Ljava/lang/String;

    goto :goto_0

    .line 1642
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 1657
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Ljit;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x1

    iget-object v1, p0, Ljit;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 602
    :cond_0
    iget-object v0, p0, Ljit;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 603
    const/4 v0, 0x2

    iget-object v1, p0, Ljit;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 605
    :cond_1
    iget-object v0, p0, Ljit;->c:Ljiu;

    if-eqz v0, :cond_2

    .line 606
    const/4 v0, 0x3

    iget-object v1, p0, Ljit;->c:Ljiu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 608
    :cond_2
    iget-object v0, p0, Ljit;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 609
    const/4 v0, 0x4

    iget-object v1, p0, Ljit;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 611
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 612
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 616
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 617
    iget-object v1, p0, Ljit;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 618
    const/4 v1, 0x1

    iget-object v2, p0, Ljit;->a:Ljava/lang/String;

    .line 619
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_0
    iget-object v1, p0, Ljit;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 622
    const/4 v1, 0x2

    iget-object v2, p0, Ljit;->b:Ljava/lang/Integer;

    .line 623
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 625
    :cond_1
    iget-object v1, p0, Ljit;->c:Ljiu;

    if-eqz v1, :cond_2

    .line 626
    const/4 v1, 0x3

    iget-object v2, p0, Ljit;->c:Ljiu;

    .line 627
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    :cond_2
    iget-object v1, p0, Ljit;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 630
    const/4 v1, 0x4

    iget-object v2, p0, Ljit;->d:Ljava/lang/String;

    .line 631
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 633
    :cond_3
    return v0
.end method
