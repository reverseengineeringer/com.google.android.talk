.class public final Lmgi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmgi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:[Lmgj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 921
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1926
    iput-object v1, p0, Lmgi;->a:Ljava/lang/Boolean;

    .line 1927
    invoke-static {}, Lmgj;->d()[Lmgj;

    move-result-object v0

    iput-object v0, p0, Lmgi;->b:[Lmgj;

    .line 1928
    iput-object v1, p0, Lmgi;->eD:Llyd;

    .line 1929
    const/4 v0, -0x1

    iput v0, p0, Lmgi;->eE:I

    .line 923
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2974
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2975
    sparse-switch v0, :sswitch_data_0

    .line 2979
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2980
    :sswitch_0
    return-object p0

    .line 2985
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmgi;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2989
    :sswitch_2
    const/16 v0, 0x12

    .line 2990
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2991
    iget-object v0, p0, Lmgi;->b:[Lmgj;

    if-nez v0, :cond_2

    move v0, v1

    .line 2992
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmgj;

    .line 2994
    if-eqz v0, :cond_1

    .line 2995
    iget-object v3, p0, Lmgi;->b:[Lmgj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2997
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2998
    new-instance v3, Lmgj;

    invoke-direct {v3}, Lmgj;-><init>()V

    aput-object v3, v2, v0

    .line 2999
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3000
    invoke-virtual {p1}, Llxy;->a()I

    .line 2997
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2991
    :cond_2
    iget-object v0, p0, Lmgi;->b:[Lmgj;

    array-length v0, v0

    goto :goto_1

    .line 3003
    :cond_3
    new-instance v3, Lmgj;

    invoke-direct {v3}, Lmgj;-><init>()V

    aput-object v3, v2, v0

    .line 3004
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3005
    iput-object v2, p0, Lmgi;->b:[Lmgj;

    goto :goto_0

    .line 2975
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Lmgi;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 937
    const/4 v0, 0x1

    iget-object v1, p0, Lmgi;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 939
    :cond_0
    iget-object v0, p0, Lmgi;->b:[Lmgj;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmgi;->b:[Lmgj;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 940
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmgi;->b:[Lmgj;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 941
    iget-object v1, p0, Lmgi;->b:[Lmgj;

    aget-object v1, v1, v0

    .line 942
    if-eqz v1, :cond_1

    .line 943
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 940
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 947
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 948
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 952
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 953
    iget-object v1, p0, Lmgi;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 954
    const/4 v1, 0x1

    iget-object v2, p0, Lmgi;->a:Ljava/lang/Boolean;

    .line 955
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 955
    add-int/2addr v0, v1

    .line 957
    :cond_0
    iget-object v1, p0, Lmgi;->b:[Lmgj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmgi;->b:[Lmgj;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 958
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmgi;->b:[Lmgj;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 959
    iget-object v2, p0, Lmgi;->b:[Lmgj;

    aget-object v2, v2, v0

    .line 960
    if-eqz v2, :cond_1

    .line 961
    const/4 v3, 0x2

    .line 962
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 958
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 966
    :cond_3
    return v0
.end method
