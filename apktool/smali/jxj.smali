.class public final Ljxj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxj;",
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

    .line 678
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1683
    iput-object v0, p0, Ljxj;->a:Ljava/lang/String;

    .line 1684
    iput-object v0, p0, Ljxj;->b:Ljava/lang/String;

    .line 1685
    iput-object v0, p0, Ljxj;->c:Ljava/lang/String;

    .line 1686
    iput-object v0, p0, Ljxj;->d:Ljava/lang/String;

    .line 1687
    iput-object v0, p0, Ljxj;->eD:Llyd;

    .line 1688
    const/4 v0, -0x1

    iput v0, p0, Ljxj;->eE:I

    .line 680
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1737
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1738
    sparse-switch v0, :sswitch_data_0

    .line 1742
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1743
    :sswitch_0
    return-object p0

    .line 1748
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxj;->a:Ljava/lang/String;

    goto :goto_0

    .line 1752
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxj;->b:Ljava/lang/String;

    goto :goto_0

    .line 1756
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxj;->c:Ljava/lang/String;

    goto :goto_0

    .line 1760
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxj;->d:Ljava/lang/String;

    goto :goto_0

    .line 1738
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
    .line 695
    iget-object v0, p0, Ljxj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 696
    const/4 v0, 0x1

    iget-object v1, p0, Ljxj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 698
    :cond_0
    iget-object v0, p0, Ljxj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 699
    const/4 v0, 0x2

    iget-object v1, p0, Ljxj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 701
    :cond_1
    iget-object v0, p0, Ljxj;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 702
    const/4 v0, 0x3

    iget-object v1, p0, Ljxj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 704
    :cond_2
    iget-object v0, p0, Ljxj;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 705
    const/4 v0, 0x4

    iget-object v1, p0, Ljxj;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 707
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 708
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 712
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 713
    iget-object v1, p0, Ljxj;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 714
    const/4 v1, 0x1

    iget-object v2, p0, Ljxj;->a:Ljava/lang/String;

    .line 715
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 717
    :cond_0
    iget-object v1, p0, Ljxj;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 718
    const/4 v1, 0x2

    iget-object v2, p0, Ljxj;->b:Ljava/lang/String;

    .line 719
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 721
    :cond_1
    iget-object v1, p0, Ljxj;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 722
    const/4 v1, 0x3

    iget-object v2, p0, Ljxj;->c:Ljava/lang/String;

    .line 723
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 725
    :cond_2
    iget-object v1, p0, Ljxj;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 726
    const/4 v1, 0x4

    iget-object v2, p0, Ljxj;->d:Ljava/lang/String;

    .line 727
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 729
    :cond_3
    return v0
.end method
