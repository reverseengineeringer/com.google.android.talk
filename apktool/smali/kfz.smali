.class public final Lkfz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkfy;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33912
    invoke-direct {p0}, Llyb;-><init>()V

    .line 34917
    iput-object v1, p0, Lkfz;->requestHeader:Lkdo;

    .line 34918
    invoke-static {}, Lkfy;->d()[Lkfy;

    move-result-object v0

    iput-object v0, p0, Lkfz;->a:[Lkfy;

    .line 34919
    iput-object v1, p0, Lkfz;->eD:Llyd;

    .line 34920
    const/4 v0, -0x1

    iput v0, p0, Lkfz;->eE:I

    .line 33914
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34965
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 34966
    sparse-switch v0, :sswitch_data_0

    .line 34970
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34971
    :sswitch_0
    return-object p0

    .line 34976
    :sswitch_1
    iget-object v0, p0, Lkfz;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 34977
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkfz;->requestHeader:Lkdo;

    .line 34979
    :cond_1
    iget-object v0, p0, Lkfz;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 34983
    :sswitch_2
    const/16 v0, 0x12

    .line 34984
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 34985
    iget-object v0, p0, Lkfz;->a:[Lkfy;

    if-nez v0, :cond_3

    move v0, v1

    .line 34986
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkfy;

    .line 34988
    if-eqz v0, :cond_2

    .line 34989
    iget-object v3, p0, Lkfz;->a:[Lkfy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34991
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 34992
    new-instance v3, Lkfy;

    invoke-direct {v3}, Lkfy;-><init>()V

    aput-object v3, v2, v0

    .line 34993
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 34994
    invoke-virtual {p1}, Llxy;->a()I

    .line 34991
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 34985
    :cond_3
    iget-object v0, p0, Lkfz;->a:[Lkfy;

    array-length v0, v0

    goto :goto_1

    .line 34997
    :cond_4
    new-instance v3, Lkfy;

    invoke-direct {v3}, Lkfy;-><init>()V

    aput-object v3, v2, v0

    .line 34998
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 34999
    iput-object v2, p0, Lkfz;->a:[Lkfy;

    goto :goto_0

    .line 34966
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
    .line 33927
    iget-object v0, p0, Lkfz;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 33928
    const/4 v0, 0x1

    iget-object v1, p0, Lkfz;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 33930
    :cond_0
    iget-object v0, p0, Lkfz;->a:[Lkfy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkfz;->a:[Lkfy;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 33931
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkfz;->a:[Lkfy;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 33932
    iget-object v1, p0, Lkfz;->a:[Lkfy;

    aget-object v1, v1, v0

    .line 33933
    if-eqz v1, :cond_1

    .line 33934
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 33931
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33938
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 33939
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 33943
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 33944
    iget-object v1, p0, Lkfz;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 33945
    const/4 v1, 0x1

    iget-object v2, p0, Lkfz;->requestHeader:Lkdo;

    .line 33946
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33948
    :cond_0
    iget-object v1, p0, Lkfz;->a:[Lkfy;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkfz;->a:[Lkfy;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 33949
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkfz;->a:[Lkfy;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 33950
    iget-object v2, p0, Lkfz;->a:[Lkfy;

    aget-object v2, v2, v0

    .line 33951
    if-eqz v2, :cond_1

    .line 33952
    const/4 v3, 0x2

    .line 33953
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 33949
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 33957
    :cond_3
    return v0
.end method
