.class public final Ljiw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljiw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 720
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1725
    iput-object v0, p0, Ljiw;->a:Ljava/lang/String;

    .line 1726
    iput-object v0, p0, Ljiw;->b:Ljava/lang/String;

    .line 1727
    iput-object v0, p0, Ljiw;->c:Ljava/lang/String;

    .line 1728
    iput-object v0, p0, Ljiw;->eD:Llyd;

    .line 1729
    const/4 v0, -0x1

    iput v0, p0, Ljiw;->eE:I

    .line 722
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1771
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1772
    sparse-switch v0, :sswitch_data_0

    .line 1776
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    :sswitch_0
    return-object p0

    .line 1782
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiw;->a:Ljava/lang/String;

    goto :goto_0

    .line 1786
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiw;->b:Ljava/lang/String;

    goto :goto_0

    .line 1790
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljiw;->c:Ljava/lang/String;

    goto :goto_0

    .line 1772
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Ljiw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 737
    const/4 v0, 0x1

    iget-object v1, p0, Ljiw;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 739
    :cond_0
    iget-object v0, p0, Ljiw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 740
    const/4 v0, 0x2

    iget-object v1, p0, Ljiw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 742
    :cond_1
    iget-object v0, p0, Ljiw;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 743
    const/4 v0, 0x3

    iget-object v1, p0, Ljiw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 745
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 746
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 750
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 751
    iget-object v1, p0, Ljiw;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 752
    const/4 v1, 0x1

    iget-object v2, p0, Ljiw;->a:Ljava/lang/String;

    .line 753
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_0
    iget-object v1, p0, Ljiw;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 756
    const/4 v1, 0x2

    iget-object v2, p0, Ljiw;->b:Ljava/lang/String;

    .line 757
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_1
    iget-object v1, p0, Ljiw;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 760
    const/4 v1, 0x3

    iget-object v2, p0, Ljiw;->c:Ljava/lang/String;

    .line 761
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    :cond_2
    return v0
.end method
