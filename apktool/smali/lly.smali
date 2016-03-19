.class public final Llly;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llly;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmem;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1712
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2717
    iput-object v0, p0, Llly;->a:Lmem;

    .line 2718
    iput-object v0, p0, Llly;->b:Ljava/lang/Long;

    .line 2719
    iput-object v0, p0, Llly;->eD:Llyd;

    .line 2720
    const/4 v0, -0x1

    iput v0, p0, Llly;->eE:I

    .line 1714
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2755
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2756
    sparse-switch v0, :sswitch_data_0

    .line 2760
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2761
    :sswitch_0
    return-object p0

    .line 2766
    :sswitch_1
    iget-object v0, p0, Llly;->a:Lmem;

    if-nez v0, :cond_1

    .line 2767
    new-instance v0, Lmem;

    invoke-direct {v0}, Lmem;-><init>()V

    iput-object v0, p0, Llly;->a:Lmem;

    .line 2769
    :cond_1
    iget-object v0, p0, Llly;->a:Lmem;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2773
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llly;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2756
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1727
    iget-object v0, p0, Llly;->a:Lmem;

    if-eqz v0, :cond_0

    .line 1728
    const/4 v0, 0x1

    iget-object v1, p0, Llly;->a:Lmem;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1730
    :cond_0
    iget-object v0, p0, Llly;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1731
    const/4 v0, 0x2

    iget-object v1, p0, Llly;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1733
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1734
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1738
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1739
    iget-object v1, p0, Llly;->a:Lmem;

    if-eqz v1, :cond_0

    .line 1740
    const/4 v1, 0x1

    iget-object v2, p0, Llly;->a:Lmem;

    .line 1741
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1743
    :cond_0
    iget-object v1, p0, Llly;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 1744
    const/4 v1, 0x2

    iget-object v2, p0, Llly;->b:Ljava/lang/Long;

    .line 1745
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1747
    :cond_1
    return v0
.end method
