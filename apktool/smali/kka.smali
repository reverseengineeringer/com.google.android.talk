.class public final Lkka;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkka;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkii;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1871
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2876
    iput-object v0, p0, Lkka;->a:Lkii;

    .line 2877
    iput-object v0, p0, Lkka;->b:Ljava/lang/Long;

    .line 2878
    iput-object v0, p0, Lkka;->c:Ljava/lang/String;

    .line 2879
    iput-object v0, p0, Lkka;->eD:Llyd;

    .line 2880
    const/4 v0, -0x1

    iput v0, p0, Lkka;->eE:I

    .line 1873
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2922
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2923
    sparse-switch v0, :sswitch_data_0

    .line 2927
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2928
    :sswitch_0
    return-object p0

    .line 2933
    :sswitch_1
    iget-object v0, p0, Lkka;->a:Lkii;

    if-nez v0, :cond_1

    .line 2934
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkka;->a:Lkii;

    .line 2936
    :cond_1
    iget-object v0, p0, Lkka;->a:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2940
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkka;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2944
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkka;->c:Ljava/lang/String;

    goto :goto_0

    .line 2923
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1887
    iget-object v0, p0, Lkka;->a:Lkii;

    if-eqz v0, :cond_0

    .line 1888
    const/4 v0, 0x1

    iget-object v1, p0, Lkka;->a:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1890
    :cond_0
    iget-object v0, p0, Lkka;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1891
    const/4 v0, 0x2

    iget-object v1, p0, Lkka;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 1893
    :cond_1
    iget-object v0, p0, Lkka;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1894
    const/4 v0, 0x3

    iget-object v1, p0, Lkka;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1896
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1897
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1901
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1902
    iget-object v1, p0, Lkka;->a:Lkii;

    if-eqz v1, :cond_0

    .line 1903
    const/4 v1, 0x1

    iget-object v2, p0, Lkka;->a:Lkii;

    .line 1904
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1906
    :cond_0
    iget-object v1, p0, Lkka;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 1907
    const/4 v1, 0x2

    iget-object v2, p0, Lkka;->b:Ljava/lang/Long;

    .line 1908
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1910
    :cond_1
    iget-object v1, p0, Lkka;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1911
    const/4 v1, 0x3

    iget-object v2, p0, Lkka;->c:Ljava/lang/String;

    .line 1912
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1914
    :cond_2
    return v0
.end method
