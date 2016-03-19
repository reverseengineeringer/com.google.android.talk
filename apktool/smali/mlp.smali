.class public final Lmlp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmlp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmlo;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1040
    invoke-static {}, Lmlo;->d()[Lmlo;

    move-result-object v0

    iput-object v0, p0, Lmlp;->a:[Lmlo;

    .line 1041
    iput-object v1, p0, Lmlp;->b:Ljava/lang/Boolean;

    .line 1042
    iput-object v1, p0, Lmlp;->eD:Llyd;

    .line 1043
    const/4 v0, -0x1

    iput v0, p0, Lmlp;->eE:I

    .line 37
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2088
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2089
    sparse-switch v0, :sswitch_data_0

    .line 2093
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2094
    :sswitch_0
    return-object p0

    .line 2099
    :sswitch_1
    const/16 v0, 0xa

    .line 2100
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2101
    iget-object v0, p0, Lmlp;->a:[Lmlo;

    if-nez v0, :cond_2

    move v0, v1

    .line 2102
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmlo;

    .line 2104
    if-eqz v0, :cond_1

    .line 2105
    iget-object v3, p0, Lmlp;->a:[Lmlo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2107
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2108
    new-instance v3, Lmlo;

    invoke-direct {v3}, Lmlo;-><init>()V

    aput-object v3, v2, v0

    .line 2109
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2110
    invoke-virtual {p1}, Llxy;->a()I

    .line 2107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2101
    :cond_2
    iget-object v0, p0, Lmlp;->a:[Lmlo;

    array-length v0, v0

    goto :goto_1

    .line 2113
    :cond_3
    new-instance v3, Lmlo;

    invoke-direct {v3}, Lmlo;-><init>()V

    aput-object v3, v2, v0

    .line 2114
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2115
    iput-object v2, p0, Lmlp;->a:[Lmlo;

    goto :goto_0

    .line 2119
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmlp;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 2089
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lmlp;->a:[Lmlo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmlp;->a:[Lmlo;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmlp;->a:[Lmlo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lmlp;->a:[Lmlo;

    aget-object v1, v1, v0

    .line 53
    if-eqz v1, :cond_0

    .line 54
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lmlp;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x2

    iget-object v1, p0, Lmlp;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 61
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 62
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 66
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 67
    iget-object v0, p0, Lmlp;->a:[Lmlo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmlp;->a:[Lmlo;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 68
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmlp;->a:[Lmlo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 69
    iget-object v2, p0, Lmlp;->a:[Lmlo;

    aget-object v2, v2, v0

    .line 70
    if-eqz v2, :cond_0

    .line 71
    const/4 v3, 0x1

    .line 72
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lmlp;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x2

    iget-object v2, p0, Lmlp;->b:Ljava/lang/Boolean;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v0}, Llxz;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 78
    add-int/2addr v1, v0

    .line 80
    :cond_2
    return v1
.end method
