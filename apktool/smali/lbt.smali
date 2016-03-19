.class public final Llbt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llbt;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[F

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lmsu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1052
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Llbt;->a:[I

    .line 1053
    sget-object v0, Llyo;->c:[F

    iput-object v0, p0, Llbt;->b:[F

    .line 1054
    iput-object v1, p0, Llbt;->c:Ljava/lang/Boolean;

    .line 1055
    iput-object v1, p0, Llbt;->d:Ljava/lang/String;

    .line 1056
    iput-object v1, p0, Llbt;->e:Ljava/lang/String;

    .line 1057
    iput-object v1, p0, Llbt;->f:Lmsu;

    .line 1058
    iput-object v1, p0, Llbt;->eD:Llyd;

    .line 1059
    const/4 v0, -0x1

    iput v0, p0, Llbt;->eE:I

    .line 49
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2134
    sparse-switch v0, :sswitch_data_0

    .line 2138
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2139
    :sswitch_0
    return-object p0

    .line 2144
    :sswitch_1
    const/16 v0, 0x8

    .line 2145
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2146
    iget-object v0, p0, Llbt;->a:[I

    if-nez v0, :cond_2

    move v0, v1

    .line 2147
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 2148
    if-eqz v0, :cond_1

    .line 2149
    iget-object v3, p0, Llbt;->a:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2151
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2152
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 2153
    invoke-virtual {p1}, Llxy;->a()I

    .line 2151
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2146
    :cond_2
    iget-object v0, p0, Llbt;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 2156
    :cond_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 2157
    iput-object v2, p0, Llbt;->a:[I

    goto :goto_0

    .line 2161
    :sswitch_2
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2162
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2165
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2166
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_4

    .line 2167
    invoke-virtual {p1}, Llxy;->f()I

    .line 2168
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2170
    :cond_4
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2171
    iget-object v2, p0, Llbt;->a:[I

    if-nez v2, :cond_6

    move v2, v1

    .line 2172
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 2173
    if-eqz v2, :cond_5

    .line 2174
    iget-object v4, p0, Llbt;->a:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2176
    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 2177
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 2176
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2171
    :cond_6
    iget-object v2, p0, Llbt;->a:[I

    array-length v2, v2

    goto :goto_4

    .line 2179
    :cond_7
    iput-object v0, p0, Llbt;->a:[I

    .line 2180
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2184
    :sswitch_3
    const/16 v0, 0x15

    .line 2185
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2186
    iget-object v0, p0, Llbt;->b:[F

    if-nez v0, :cond_9

    move v0, v1

    .line 2187
    :goto_6
    add-int/2addr v2, v0

    new-array v2, v2, [F

    .line 2188
    if-eqz v0, :cond_8

    .line 2189
    iget-object v3, p0, Llbt;->b:[F

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2191
    :cond_8
    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 2192
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 2193
    invoke-virtual {p1}, Llxy;->a()I

    .line 2191
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2186
    :cond_9
    iget-object v0, p0, Llbt;->b:[F

    array-length v0, v0

    goto :goto_6

    .line 2196
    :cond_a
    invoke-virtual {p1}, Llxy;->c()F

    move-result v3

    aput v3, v2, v0

    .line 2197
    iput-object v2, p0, Llbt;->b:[F

    goto/16 :goto_0

    .line 2201
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2202
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v2

    .line 2203
    div-int/lit8 v3, v0, 0x4

    .line 2204
    iget-object v0, p0, Llbt;->b:[F

    if-nez v0, :cond_c

    move v0, v1

    .line 2205
    :goto_8
    add-int/2addr v3, v0

    new-array v3, v3, [F

    .line 2206
    if-eqz v0, :cond_b

    .line 2207
    iget-object v4, p0, Llbt;->b:[F

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2209
    :cond_b
    :goto_9
    array-length v4, v3

    if-ge v0, v4, :cond_d

    .line 2210
    invoke-virtual {p1}, Llxy;->c()F

    move-result v4

    aput v4, v3, v0

    .line 2209
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2204
    :cond_c
    iget-object v0, p0, Llbt;->b:[F

    array-length v0, v0

    goto :goto_8

    .line 2212
    :cond_d
    iput-object v3, p0, Llbt;->b:[F

    .line 2213
    invoke-virtual {p1, v2}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2217
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llbt;->c:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2221
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbt;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 2225
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llbt;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 2229
    :sswitch_8
    iget-object v0, p0, Llbt;->f:Lmsu;

    if-nez v0, :cond_e

    .line 2230
    new-instance v0, Lmsu;

    invoke-direct {v0}, Lmsu;-><init>()V

    iput-object v0, p0, Llbt;->f:Lmsu;

    .line 2232
    :cond_e
    iget-object v0, p0, Llbt;->f:Lmsu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2134
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_4
        0x15 -> :sswitch_3
        0x18 -> :sswitch_5
        0x22 -> :sswitch_6
        0x2a -> :sswitch_7
        0x7a -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Llbt;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Llbt;->a:[I

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 67
    :goto_0
    iget-object v2, p0, Llbt;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 68
    const/4 v2, 0x1

    iget-object v3, p0, Llbt;->a:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Llbt;->b:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Llbt;->b:[F

    array-length v0, v0

    if-lez v0, :cond_1

    .line 72
    :goto_1
    iget-object v0, p0, Llbt;->b:[F

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 73
    const/4 v0, 0x2

    iget-object v2, p0, Llbt;->b:[F

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(IF)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_1
    iget-object v0, p0, Llbt;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x3

    iget-object v1, p0, Llbt;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 79
    :cond_2
    iget-object v0, p0, Llbt;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 80
    const/4 v0, 0x4

    iget-object v1, p0, Llbt;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 82
    :cond_3
    iget-object v0, p0, Llbt;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 83
    const/4 v0, 0x5

    iget-object v1, p0, Llbt;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 85
    :cond_4
    iget-object v0, p0, Llbt;->f:Lmsu;

    if-eqz v0, :cond_5

    .line 86
    const/16 v0, 0xf

    iget-object v1, p0, Llbt;->f:Lmsu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 88
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 89
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-super {p0}, Llyb;->b()I

    move-result v2

    .line 94
    iget-object v1, p0, Llbt;->a:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Llbt;->a:[I

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    .line 96
    :goto_0
    iget-object v3, p0, Llbt;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 97
    iget-object v3, p0, Llbt;->a:[I

    aget v3, v3, v0

    .line 99
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    add-int v0, v2, v1

    .line 102
    iget-object v1, p0, Llbt;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 104
    :goto_1
    iget-object v1, p0, Llbt;->b:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Llbt;->b:[F

    array-length v1, v1

    if-lez v1, :cond_1

    .line 105
    iget-object v1, p0, Llbt;->b:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 106
    add-int/2addr v0, v1

    .line 107
    iget-object v1, p0, Llbt;->b:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 109
    :cond_1
    iget-object v1, p0, Llbt;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 110
    const/4 v1, 0x3

    iget-object v2, p0, Llbt;->c:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 111
    add-int/2addr v0, v1

    .line 113
    :cond_2
    iget-object v1, p0, Llbt;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 114
    const/4 v1, 0x4

    iget-object v2, p0, Llbt;->d:Ljava/lang/String;

    .line 115
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_3
    iget-object v1, p0, Llbt;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 118
    const/4 v1, 0x5

    iget-object v2, p0, Llbt;->e:Ljava/lang/String;

    .line 119
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_4
    iget-object v1, p0, Llbt;->f:Lmsu;

    if-eqz v1, :cond_5

    .line 122
    const/16 v1, 0xf

    iget-object v2, p0, Llbt;->f:Lmsu;

    .line 123
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_5
    return v0

    :cond_6
    move v0, v2

    goto :goto_1
.end method
