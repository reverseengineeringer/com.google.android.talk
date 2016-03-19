.class public final Lkfq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcr;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28930
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29935
    iput-object v1, p0, Lkfq;->requestHeader:Lkdo;

    .line 29936
    invoke-static {}, Lkcr;->d()[Lkcr;

    move-result-object v0

    iput-object v0, p0, Lkfq;->a:[Lkcr;

    .line 29937
    iput-object v1, p0, Lkfq;->eD:Llyd;

    .line 29938
    const/4 v0, -0x1

    iput v0, p0, Lkfq;->eE:I

    .line 28932
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29983
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 29984
    sparse-switch v0, :sswitch_data_0

    .line 29988
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29989
    :sswitch_0
    return-object p0

    .line 29994
    :sswitch_1
    iget-object v0, p0, Lkfq;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 29995
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkfq;->requestHeader:Lkdo;

    .line 29997
    :cond_1
    iget-object v0, p0, Lkfq;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 30001
    :sswitch_2
    const/16 v0, 0x12

    .line 30002
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 30003
    iget-object v0, p0, Lkfq;->a:[Lkcr;

    if-nez v0, :cond_3

    move v0, v1

    .line 30004
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcr;

    .line 30006
    if-eqz v0, :cond_2

    .line 30007
    iget-object v3, p0, Lkfq;->a:[Lkcr;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30009
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 30010
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 30011
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 30012
    invoke-virtual {p1}, Llxy;->a()I

    .line 30009
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 30003
    :cond_3
    iget-object v0, p0, Lkfq;->a:[Lkcr;

    array-length v0, v0

    goto :goto_1

    .line 30015
    :cond_4
    new-instance v3, Lkcr;

    invoke-direct {v3}, Lkcr;-><init>()V

    aput-object v3, v2, v0

    .line 30016
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 30017
    iput-object v2, p0, Lkfq;->a:[Lkcr;

    goto :goto_0

    .line 29984
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 28945
    iget-object v0, p0, Lkfq;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 28946
    const/4 v0, 0x1

    iget-object v1, p0, Lkfq;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 28948
    :cond_0
    iget-object v0, p0, Lkfq;->a:[Lkcr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkfq;->a:[Lkcr;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 28949
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkfq;->a:[Lkcr;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 28950
    iget-object v1, p0, Lkfq;->a:[Lkcr;

    aget-object v1, v1, v0

    .line 28951
    if-eqz v1, :cond_1

    .line 28952
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 28949
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28956
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 28957
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 28961
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 28962
    iget-object v1, p0, Lkfq;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 28963
    const/4 v1, 0x1

    iget-object v2, p0, Lkfq;->requestHeader:Lkdo;

    .line 28964
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28966
    :cond_0
    iget-object v1, p0, Lkfq;->a:[Lkcr;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkfq;->a:[Lkcr;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 28967
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkfq;->a:[Lkcr;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 28968
    iget-object v2, p0, Lkfq;->a:[Lkcr;

    aget-object v2, v2, v0

    .line 28969
    if-eqz v2, :cond_1

    .line 28970
    const/4 v3, 0x2

    .line 28971
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 28967
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 28975
    :cond_3
    return v0
.end method
