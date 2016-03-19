.class public final Ljwi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljwi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljwc;

.field public b:[J

.field public c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Llyb;-><init>()V

    .line 35
    invoke-static {}, Ljwc;->d()[Ljwc;

    move-result-object v0

    iput-object v0, p0, Ljwi;->a:[Ljwc;

    .line 36
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Ljwi;->b:[J

    .line 37
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Ljwi;->c:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Ljwi;->eD:Llyd;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ljwi;->eE:I

    .line 40
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2113
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2114
    sparse-switch v0, :sswitch_data_0

    .line 2118
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2119
    :sswitch_0
    return-object p0

    .line 2124
    :sswitch_1
    const/16 v0, 0xa

    .line 2125
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2126
    iget-object v0, p0, Ljwi;->a:[Ljwc;

    if-nez v0, :cond_2

    move v0, v1

    .line 2127
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljwc;

    .line 2129
    if-eqz v0, :cond_1

    .line 2130
    iget-object v3, p0, Ljwi;->a:[Ljwc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2132
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2133
    new-instance v3, Ljwc;

    invoke-direct {v3}, Ljwc;-><init>()V

    aput-object v3, v2, v0

    .line 2134
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2135
    invoke-virtual {p1}, Llxy;->a()I

    .line 2132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2126
    :cond_2
    iget-object v0, p0, Ljwi;->a:[Ljwc;

    array-length v0, v0

    goto :goto_1

    .line 2138
    :cond_3
    new-instance v3, Ljwc;

    invoke-direct {v3}, Ljwc;-><init>()V

    aput-object v3, v2, v0

    .line 2139
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2140
    iput-object v2, p0, Ljwi;->a:[Ljwc;

    goto :goto_0

    .line 2144
    :sswitch_2
    const/16 v0, 0x10

    .line 2145
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2146
    iget-object v0, p0, Ljwi;->b:[J

    if-nez v0, :cond_5

    move v0, v1

    .line 2147
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 2148
    if-eqz v0, :cond_4

    .line 2149
    iget-object v3, p0, Ljwi;->b:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2151
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2152
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2153
    invoke-virtual {p1}, Llxy;->a()I

    .line 2151
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2146
    :cond_5
    iget-object v0, p0, Ljwi;->b:[J

    array-length v0, v0

    goto :goto_3

    .line 2156
    :cond_6
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2157
    iput-object v2, p0, Ljwi;->b:[J

    goto :goto_0

    .line 2161
    :sswitch_3
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
    :goto_5
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_7

    .line 2167
    invoke-virtual {p1}, Llxy;->e()J

    .line 2168
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2170
    :cond_7
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2171
    iget-object v2, p0, Ljwi;->b:[J

    if-nez v2, :cond_9

    move v2, v1

    .line 2172
    :goto_6
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 2173
    if-eqz v2, :cond_8

    .line 2174
    iget-object v4, p0, Ljwi;->b:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2176
    :cond_8
    :goto_7
    array-length v4, v0

    if-ge v2, v4, :cond_a

    .line 2177
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 2176
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2171
    :cond_9
    iget-object v2, p0, Ljwi;->b:[J

    array-length v2, v2

    goto :goto_6

    .line 2179
    :cond_a
    iput-object v0, p0, Ljwi;->b:[J

    .line 2180
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2184
    :sswitch_4
    const/16 v0, 0x1a

    .line 2185
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2186
    iget-object v0, p0, Ljwi;->c:[Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    .line 2187
    :goto_8
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2188
    if-eqz v0, :cond_b

    .line 2189
    iget-object v3, p0, Ljwi;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2191
    :cond_b
    :goto_9
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 2192
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2193
    invoke-virtual {p1}, Llxy;->a()I

    .line 2191
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2186
    :cond_c
    iget-object v0, p0, Ljwi;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_8

    .line 2196
    :cond_d
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2197
    iput-object v2, p0, Ljwi;->c:[Ljava/lang/String;

    goto/16 :goto_0

    .line 2114
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Ljwi;->a:[Ljwc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljwi;->a:[Ljwc;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 46
    :goto_0
    iget-object v2, p0, Ljwi;->a:[Ljwc;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 47
    iget-object v2, p0, Ljwi;->a:[Ljwc;

    aget-object v2, v2, v0

    .line 48
    if-eqz v2, :cond_0

    .line 49
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Ljwi;->b:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljwi;->b:[J

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 54
    :goto_1
    iget-object v2, p0, Ljwi;->b:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 55
    const/4 v2, 0x2

    iget-object v3, p0, Ljwi;->b:[J

    aget-wide v4, v3, v0

    invoke-virtual {p1, v2, v4, v5}, Llxz;->b(IJ)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Ljwi;->c:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljwi;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 59
    :goto_2
    iget-object v0, p0, Ljwi;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 60
    iget-object v0, p0, Ljwi;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 61
    if-eqz v0, :cond_3

    .line 62
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 66
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 67
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 72
    iget-object v2, p0, Ljwi;->a:[Ljwc;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljwi;->a:[Ljwc;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 73
    :goto_0
    iget-object v3, p0, Ljwi;->a:[Ljwc;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 74
    iget-object v3, p0, Ljwi;->a:[Ljwc;

    aget-object v3, v3, v0

    .line 75
    if-eqz v3, :cond_0

    .line 76
    const/4 v4, 0x1

    .line 77
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 81
    :cond_2
    iget-object v2, p0, Ljwi;->b:[J

    if-eqz v2, :cond_4

    iget-object v2, p0, Ljwi;->b:[J

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 83
    :goto_1
    iget-object v4, p0, Ljwi;->b:[J

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 84
    iget-object v4, p0, Ljwi;->b:[J

    aget-wide v4, v4, v2

    .line 1765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v4

    .line 86
    add-int/2addr v3, v4

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_3
    add-int/2addr v0, v3

    .line 89
    iget-object v2, p0, Ljwi;->b:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 91
    :cond_4
    iget-object v2, p0, Ljwi;->c:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljwi;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    move v3, v1

    .line 94
    :goto_2
    iget-object v4, p0, Ljwi;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 95
    iget-object v4, p0, Ljwi;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 96
    if-eqz v4, :cond_5

    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 99
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 94
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    :cond_6
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 105
    :cond_7
    return v0
.end method
