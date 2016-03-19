.class public final Lkfe;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfe;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcd;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21845
    invoke-direct {p0}, Llyb;-><init>()V

    .line 22850
    invoke-static {}, Lkcd;->d()[Lkcd;

    move-result-object v0

    iput-object v0, p0, Lkfe;->a:[Lkcd;

    .line 22851
    iput-object v1, p0, Lkfe;->b:Ljava/lang/Long;

    .line 22852
    iput-object v1, p0, Lkfe;->eD:Llyd;

    .line 22853
    const/4 v0, -0x1

    iput v0, p0, Lkfe;->eE:I

    .line 21847
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 22898
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 22899
    sparse-switch v0, :sswitch_data_0

    .line 22903
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22904
    :sswitch_0
    return-object p0

    .line 22909
    :sswitch_1
    const/16 v0, 0xa

    .line 22910
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 22911
    iget-object v0, p0, Lkfe;->a:[Lkcd;

    if-nez v0, :cond_2

    move v0, v1

    .line 22912
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcd;

    .line 22914
    if-eqz v0, :cond_1

    .line 22915
    iget-object v3, p0, Lkfe;->a:[Lkcd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22917
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 22918
    new-instance v3, Lkcd;

    invoke-direct {v3}, Lkcd;-><init>()V

    aput-object v3, v2, v0

    .line 22919
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 22920
    invoke-virtual {p1}, Llxy;->a()I

    .line 22917
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 22911
    :cond_2
    iget-object v0, p0, Lkfe;->a:[Lkcd;

    array-length v0, v0

    goto :goto_1

    .line 22923
    :cond_3
    new-instance v3, Lkcd;

    invoke-direct {v3}, Lkcd;-><init>()V

    aput-object v3, v2, v0

    .line 22924
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 22925
    iput-object v2, p0, Lkfe;->a:[Lkcd;

    goto :goto_0

    .line 22929
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfe;->b:Ljava/lang/Long;

    goto :goto_0

    .line 22899
    nop

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
    .line 21860
    iget-object v0, p0, Lkfe;->a:[Lkcd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkfe;->a:[Lkcd;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 21861
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkfe;->a:[Lkcd;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 21862
    iget-object v1, p0, Lkfe;->a:[Lkcd;

    aget-object v1, v1, v0

    .line 21863
    if-eqz v1, :cond_0

    .line 21864
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 21861
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21868
    :cond_1
    iget-object v0, p0, Lkfe;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 21869
    const/4 v0, 0x2

    iget-object v1, p0, Lkfe;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 21871
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 21872
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 21876
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 21877
    iget-object v0, p0, Lkfe;->a:[Lkcd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkfe;->a:[Lkcd;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 21878
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lkfe;->a:[Lkcd;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 21879
    iget-object v2, p0, Lkfe;->a:[Lkcd;

    aget-object v2, v2, v0

    .line 21880
    if-eqz v2, :cond_0

    .line 21881
    const/4 v3, 0x1

    .line 21882
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 21878
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21886
    :cond_1
    iget-object v0, p0, Lkfe;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 21887
    const/4 v0, 0x2

    iget-object v2, p0, Lkfe;->b:Ljava/lang/Long;

    .line 21888
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Llxz;->d(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 21890
    :cond_2
    return v1
.end method
