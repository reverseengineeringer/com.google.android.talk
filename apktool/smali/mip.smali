.class public final Lmip;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmip;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1046
    iput-object v1, p0, Lmip;->a:Ljava/lang/String;

    .line 1047
    iput-object v1, p0, Lmip;->b:Ljava/lang/String;

    .line 1048
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmip;->c:[Ljava/lang/String;

    .line 1049
    iput-object v1, p0, Lmip;->d:Ljava/lang/Boolean;

    .line 1050
    iput-object v1, p0, Lmip;->eD:Llyd;

    .line 1051
    const/4 v0, -0x1

    iput v0, p0, Lmip;->eE:I

    .line 43
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2116
    sparse-switch v0, :sswitch_data_0

    .line 2120
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2121
    :sswitch_0
    return-object p0

    .line 2126
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmip;->a:Ljava/lang/String;

    goto :goto_0

    .line 2130
    :sswitch_2
    const/16 v0, 0x12

    .line 2131
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2132
    iget-object v0, p0, Lmip;->c:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 2133
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2134
    if-eqz v0, :cond_1

    .line 2135
    iget-object v3, p0, Lmip;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2137
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2138
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2139
    invoke-virtual {p1}, Llxy;->a()I

    .line 2137
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2132
    :cond_2
    iget-object v0, p0, Lmip;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2142
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2143
    iput-object v2, p0, Lmip;->c:[Ljava/lang/String;

    goto :goto_0

    .line 2147
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmip;->b:Ljava/lang/String;

    goto :goto_0

    .line 2151
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmip;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 2116
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lmip;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Lmip;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lmip;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmip;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 62
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmip;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 63
    iget-object v1, p0, Lmip;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 64
    if-eqz v1, :cond_1

    .line 65
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lmip;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 70
    const/4 v0, 0x3

    iget-object v1, p0, Lmip;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lmip;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Lmip;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 75
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 76
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 81
    iget-object v2, p0, Lmip;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x1

    iget-object v3, p0, Lmip;->a:Ljava/lang/String;

    .line 83
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 85
    :cond_0
    iget-object v2, p0, Lmip;->c:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmip;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    .line 88
    :goto_0
    iget-object v4, p0, Lmip;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 89
    iget-object v4, p0, Lmip;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 90
    if-eqz v4, :cond_1

    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 93
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 88
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    add-int/2addr v0, v2

    .line 97
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 99
    :cond_3
    iget-object v1, p0, Lmip;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 100
    const/4 v1, 0x3

    iget-object v2, p0, Lmip;->b:Ljava/lang/String;

    .line 101
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_4
    iget-object v1, p0, Lmip;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 104
    const/4 v1, 0x4

    iget-object v2, p0, Lmip;->d:Ljava/lang/Boolean;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 105
    add-int/2addr v0, v1

    .line 107
    :cond_5
    return v0
.end method
