.class public final Ljvq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljvq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljvr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1891
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2896
    invoke-static {}, Ljvr;->d()[Ljvr;

    move-result-object v0

    iput-object v0, p0, Ljvq;->a:[Ljvr;

    .line 2897
    const/4 v0, 0x0

    iput-object v0, p0, Ljvq;->eD:Llyd;

    .line 2898
    const/4 v0, -0x1

    iput v0, p0, Ljvq;->eE:I

    .line 1893
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2936
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2937
    sparse-switch v0, :sswitch_data_0

    .line 2941
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2942
    :sswitch_0
    return-object p0

    .line 2947
    :sswitch_1
    const/16 v0, 0xa

    .line 2948
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2949
    iget-object v0, p0, Ljvq;->a:[Ljvr;

    if-nez v0, :cond_2

    move v0, v1

    .line 2950
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljvr;

    .line 2952
    if-eqz v0, :cond_1

    .line 2953
    iget-object v3, p0, Ljvq;->a:[Ljvr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2955
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2956
    new-instance v3, Ljvr;

    invoke-direct {v3}, Ljvr;-><init>()V

    aput-object v3, v2, v0

    .line 2957
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2958
    invoke-virtual {p1}, Llxy;->a()I

    .line 2955
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2949
    :cond_2
    iget-object v0, p0, Ljvq;->a:[Ljvr;

    array-length v0, v0

    goto :goto_1

    .line 2961
    :cond_3
    new-instance v3, Ljvr;

    invoke-direct {v3}, Ljvr;-><init>()V

    aput-object v3, v2, v0

    .line 2962
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2963
    iput-object v2, p0, Ljvq;->a:[Ljvr;

    goto :goto_0

    .line 2937
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1905
    iget-object v0, p0, Ljvq;->a:[Ljvr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljvq;->a:[Ljvr;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1906
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljvq;->a:[Ljvr;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1907
    iget-object v1, p0, Ljvq;->a:[Ljvr;

    aget-object v1, v1, v0

    .line 1908
    if-eqz v1, :cond_0

    .line 1909
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1906
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1913
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1914
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1918
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 1919
    iget-object v0, p0, Ljvq;->a:[Ljvr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljvq;->a:[Ljvr;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1920
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljvq;->a:[Ljvr;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1921
    iget-object v2, p0, Ljvq;->a:[Ljvr;

    aget-object v2, v2, v0

    .line 1922
    if-eqz v2, :cond_0

    .line 1923
    const/4 v3, 0x1

    .line 1924
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1920
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1928
    :cond_1
    return v1
.end method
