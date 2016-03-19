.class public final Lkbu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkbv;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38926
    invoke-direct {p0}, Llyb;-><init>()V

    .line 39931
    iput-object v1, p0, Lkbu;->requestHeader:Lkdo;

    .line 39932
    invoke-static {}, Lkbv;->d()[Lkbv;

    move-result-object v0

    iput-object v0, p0, Lkbu;->a:[Lkbv;

    .line 39933
    iput-object v1, p0, Lkbu;->eD:Llyd;

    .line 39934
    const/4 v0, -0x1

    iput v0, p0, Lkbu;->eE:I

    .line 38928
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 39979
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 39980
    sparse-switch v0, :sswitch_data_0

    .line 39984
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39985
    :sswitch_0
    return-object p0

    .line 39990
    :sswitch_1
    iget-object v0, p0, Lkbu;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 39991
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkbu;->requestHeader:Lkdo;

    .line 39993
    :cond_1
    iget-object v0, p0, Lkbu;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 39997
    :sswitch_2
    const/16 v0, 0x12

    .line 39998
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 39999
    iget-object v0, p0, Lkbu;->a:[Lkbv;

    if-nez v0, :cond_3

    move v0, v1

    .line 40000
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbv;

    .line 40002
    if-eqz v0, :cond_2

    .line 40003
    iget-object v3, p0, Lkbu;->a:[Lkbv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40005
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 40006
    new-instance v3, Lkbv;

    invoke-direct {v3}, Lkbv;-><init>()V

    aput-object v3, v2, v0

    .line 40007
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 40008
    invoke-virtual {p1}, Llxy;->a()I

    .line 40005
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 39999
    :cond_3
    iget-object v0, p0, Lkbu;->a:[Lkbv;

    array-length v0, v0

    goto :goto_1

    .line 40011
    :cond_4
    new-instance v3, Lkbv;

    invoke-direct {v3}, Lkbv;-><init>()V

    aput-object v3, v2, v0

    .line 40012
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 40013
    iput-object v2, p0, Lkbu;->a:[Lkbv;

    goto :goto_0

    .line 39980
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
    .line 38941
    iget-object v0, p0, Lkbu;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 38942
    const/4 v0, 0x1

    iget-object v1, p0, Lkbu;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 38944
    :cond_0
    iget-object v0, p0, Lkbu;->a:[Lkbv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkbu;->a:[Lkbv;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 38945
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkbu;->a:[Lkbv;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 38946
    iget-object v1, p0, Lkbu;->a:[Lkbv;

    aget-object v1, v1, v0

    .line 38947
    if-eqz v1, :cond_1

    .line 38948
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 38945
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38952
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 38953
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 38957
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 38958
    iget-object v1, p0, Lkbu;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 38959
    const/4 v1, 0x1

    iget-object v2, p0, Lkbu;->requestHeader:Lkdo;

    .line 38960
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38962
    :cond_0
    iget-object v1, p0, Lkbu;->a:[Lkbv;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkbu;->a:[Lkbv;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 38963
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkbu;->a:[Lkbv;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 38964
    iget-object v2, p0, Lkbu;->a:[Lkbv;

    aget-object v2, v2, v0

    .line 38965
    if-eqz v2, :cond_1

    .line 38966
    const/4 v3, 0x2

    .line 38967
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 38963
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 38971
    :cond_3
    return v0
.end method
