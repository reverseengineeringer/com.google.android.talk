.class public final Lmgl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmgm;

.field public b:Lmgg;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1756
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2761
    iput-object v0, p0, Lmgl;->a:Lmgm;

    .line 2762
    iput-object v0, p0, Lmgl;->b:Lmgg;

    .line 2763
    iput-object v0, p0, Lmgl;->c:Ljava/lang/Long;

    .line 2764
    iput-object v0, p0, Lmgl;->d:Ljava/lang/Boolean;

    .line 2765
    iput-object v0, p0, Lmgl;->eD:Llyd;

    .line 2766
    const/4 v0, -0x1

    iput v0, p0, Lmgl;->eE:I

    .line 1758
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 3815
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3816
    sparse-switch v0, :sswitch_data_0

    .line 3820
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3821
    :sswitch_0
    return-object p0

    .line 3826
    :sswitch_1
    iget-object v0, p0, Lmgl;->a:Lmgm;

    if-nez v0, :cond_1

    .line 3827
    new-instance v0, Lmgm;

    invoke-direct {v0}, Lmgm;-><init>()V

    iput-object v0, p0, Lmgl;->a:Lmgm;

    .line 3829
    :cond_1
    iget-object v0, p0, Lmgl;->a:Lmgm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3833
    :sswitch_2
    iget-object v0, p0, Lmgl;->b:Lmgg;

    if-nez v0, :cond_2

    .line 3834
    new-instance v0, Lmgg;

    invoke-direct {v0}, Lmgg;-><init>()V

    iput-object v0, p0, Lmgl;->b:Lmgg;

    .line 3836
    :cond_2
    iget-object v0, p0, Lmgl;->b:Lmgg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3840
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmgl;->c:Ljava/lang/Long;

    goto :goto_0

    .line 3844
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgl;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 3816
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1773
    iget-object v0, p0, Lmgl;->a:Lmgm;

    if-eqz v0, :cond_0

    .line 1774
    const/4 v0, 0x1

    iget-object v1, p0, Lmgl;->a:Lmgm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1776
    :cond_0
    iget-object v0, p0, Lmgl;->b:Lmgg;

    if-eqz v0, :cond_1

    .line 1777
    const/4 v0, 0x2

    iget-object v1, p0, Lmgl;->b:Lmgg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1779
    :cond_1
    iget-object v0, p0, Lmgl;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 1780
    const/4 v0, 0x3

    iget-object v1, p0, Lmgl;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1782
    :cond_2
    iget-object v0, p0, Lmgl;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 1783
    const/4 v0, 0x4

    iget-object v1, p0, Lmgl;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1785
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1786
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1790
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1791
    iget-object v1, p0, Lmgl;->a:Lmgm;

    if-eqz v1, :cond_0

    .line 1792
    const/4 v1, 0x1

    iget-object v2, p0, Lmgl;->a:Lmgm;

    .line 1793
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1795
    :cond_0
    iget-object v1, p0, Lmgl;->b:Lmgg;

    if-eqz v1, :cond_1

    .line 1796
    const/4 v1, 0x2

    iget-object v2, p0, Lmgl;->b:Lmgg;

    .line 1797
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1799
    :cond_1
    iget-object v1, p0, Lmgl;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 1800
    const/4 v1, 0x3

    iget-object v2, p0, Lmgl;->c:Ljava/lang/Long;

    .line 1801
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1803
    :cond_2
    iget-object v1, p0, Lmgl;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 1804
    const/4 v1, 0x4

    iget-object v2, p0, Lmgl;->d:Ljava/lang/Boolean;

    .line 1805
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1805
    add-int/2addr v0, v1

    .line 1807
    :cond_3
    return v0
.end method
