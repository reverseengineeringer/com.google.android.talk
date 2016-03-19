.class public final Lkbc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Long;

.field public c:[Ljyk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12827
    invoke-direct {p0}, Llyb;-><init>()V

    .line 13832
    iput-object v1, p0, Lkbc;->a:Ljava/lang/Integer;

    .line 13833
    iput-object v1, p0, Lkbc;->b:Ljava/lang/Long;

    .line 13834
    invoke-static {}, Ljyk;->d()[Ljyk;

    move-result-object v0

    iput-object v0, p0, Lkbc;->c:[Ljyk;

    .line 13835
    iput-object v1, p0, Lkbc;->eD:Llyd;

    .line 13836
    const/4 v0, -0x1

    iput v0, p0, Lkbc;->eE:I

    .line 12829
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13888
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 13889
    sparse-switch v0, :sswitch_data_0

    .line 13893
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13894
    :sswitch_0
    return-object p0

    .line 13899
    :sswitch_1
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkbc;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 13903
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkbc;->b:Ljava/lang/Long;

    goto :goto_0

    .line 13907
    :sswitch_3
    const/16 v0, 0x1a

    .line 13908
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 13909
    iget-object v0, p0, Lkbc;->c:[Ljyk;

    if-nez v0, :cond_2

    move v0, v1

    .line 13910
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljyk;

    .line 13912
    if-eqz v0, :cond_1

    .line 13913
    iget-object v3, p0, Lkbc;->c:[Ljyk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13915
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 13916
    new-instance v3, Ljyk;

    invoke-direct {v3}, Ljyk;-><init>()V

    aput-object v3, v2, v0

    .line 13917
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 13918
    invoke-virtual {p1}, Llxy;->a()I

    .line 13915
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13909
    :cond_2
    iget-object v0, p0, Lkbc;->c:[Ljyk;

    array-length v0, v0

    goto :goto_1

    .line 13921
    :cond_3
    new-instance v3, Ljyk;

    invoke-direct {v3}, Ljyk;-><init>()V

    aput-object v3, v2, v0

    .line 13922
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 13923
    iput-object v2, p0, Lkbc;->c:[Ljyk;

    goto :goto_0

    .line 13889
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 12843
    iget-object v0, p0, Lkbc;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 12844
    const/4 v0, 0x1

    iget-object v1, p0, Lkbc;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 12846
    :cond_0
    iget-object v0, p0, Lkbc;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 12847
    const/4 v0, 0x2

    iget-object v1, p0, Lkbc;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 12849
    :cond_1
    iget-object v0, p0, Lkbc;->c:[Ljyk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkbc;->c:[Ljyk;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 12850
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkbc;->c:[Ljyk;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 12851
    iget-object v1, p0, Lkbc;->c:[Ljyk;

    aget-object v1, v1, v0

    .line 12852
    if-eqz v1, :cond_2

    .line 12853
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 12850
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12857
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 12858
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 12862
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 12863
    iget-object v1, p0, Lkbc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 12864
    const/4 v1, 0x1

    iget-object v2, p0, Lkbc;->a:Ljava/lang/Integer;

    .line 12865
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12867
    :cond_0
    iget-object v1, p0, Lkbc;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 12868
    const/4 v1, 0x2

    iget-object v2, p0, Lkbc;->b:Ljava/lang/Long;

    .line 12869
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12871
    :cond_1
    iget-object v1, p0, Lkbc;->c:[Ljyk;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lkbc;->c:[Ljyk;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 12872
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkbc;->c:[Ljyk;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 12873
    iget-object v2, p0, Lkbc;->c:[Ljyk;

    aget-object v2, v2, v0

    .line 12874
    if-eqz v2, :cond_2

    .line 12875
    const/4 v3, 0x3

    .line 12876
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 12872
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 12880
    :cond_4
    return v0
.end method
