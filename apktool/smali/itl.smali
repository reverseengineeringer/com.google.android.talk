.class public final Litl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Litl;",
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

    .line 657
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1662
    iput-object v0, p0, Litl;->a:Ljava/lang/String;

    .line 1663
    iput-object v0, p0, Litl;->b:Ljava/lang/String;

    .line 1664
    iput-object v0, p0, Litl;->c:Ljava/lang/String;

    .line 1665
    iput-object v0, p0, Litl;->d:Ljava/lang/String;

    .line 1666
    iput-object v0, p0, Litl;->eD:Llyd;

    .line 1667
    const/4 v0, -0x1

    iput v0, p0, Litl;->eE:I

    .line 659
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1716
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1717
    sparse-switch v0, :sswitch_data_0

    .line 1721
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1722
    :sswitch_0
    return-object p0

    .line 1727
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litl;->a:Ljava/lang/String;

    goto :goto_0

    .line 1731
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litl;->b:Ljava/lang/String;

    goto :goto_0

    .line 1735
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litl;->c:Ljava/lang/String;

    goto :goto_0

    .line 1739
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litl;->d:Ljava/lang/String;

    goto :goto_0

    .line 1717
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
    .line 674
    iget-object v0, p0, Litl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x1

    iget-object v1, p0, Litl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 677
    :cond_0
    iget-object v0, p0, Litl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 678
    const/4 v0, 0x2

    iget-object v1, p0, Litl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 680
    :cond_1
    iget-object v0, p0, Litl;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 681
    const/4 v0, 0x3

    iget-object v1, p0, Litl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 683
    :cond_2
    iget-object v0, p0, Litl;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 684
    const/4 v0, 0x4

    iget-object v1, p0, Litl;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 686
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 687
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 691
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 692
    iget-object v1, p0, Litl;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 693
    const/4 v1, 0x1

    iget-object v2, p0, Litl;->a:Ljava/lang/String;

    .line 694
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 696
    :cond_0
    iget-object v1, p0, Litl;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 697
    const/4 v1, 0x2

    iget-object v2, p0, Litl;->b:Ljava/lang/String;

    .line 698
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 700
    :cond_1
    iget-object v1, p0, Litl;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 701
    const/4 v1, 0x3

    iget-object v2, p0, Litl;->c:Ljava/lang/String;

    .line 702
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 704
    :cond_2
    iget-object v1, p0, Litl;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 705
    const/4 v1, 0x4

    iget-object v2, p0, Litl;->d:Ljava/lang/String;

    .line 706
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 708
    :cond_3
    return v0
.end method
