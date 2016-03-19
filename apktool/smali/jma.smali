.class public final Ljma;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljma;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:[Llzu;

.field public e:Ljava/lang/Integer;

.field public f:[Lmac;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1061
    iput-object v1, p0, Ljma;->a:Ljava/lang/Integer;

    .line 1062
    iput-object v1, p0, Ljma;->b:Ljava/lang/Long;

    .line 1063
    iput-object v1, p0, Ljma;->c:Ljava/lang/Long;

    .line 2025
    sget-object v0, Llzu;->b:[Llzu;

    .line 1064
    iput-object v0, p0, Ljma;->d:[Llzu;

    .line 1065
    iput-object v1, p0, Ljma;->e:Ljava/lang/Integer;

    .line 1066
    invoke-static {}, Lmac;->d()[Lmac;

    move-result-object v0

    iput-object v0, p0, Ljma;->f:[Lmac;

    .line 1067
    iput-object v1, p0, Ljma;->eD:Llyd;

    .line 1068
    const/4 v0, -0x1

    iput v0, p0, Ljma;->eE:I

    .line 58
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2152
    sparse-switch v0, :sswitch_data_0

    .line 2156
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2157
    :sswitch_0
    return-object p0

    .line 2162
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2163
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2169
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljma;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 2175
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljma;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2179
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljma;->c:Ljava/lang/Long;

    goto :goto_0

    .line 2183
    :sswitch_4
    const/16 v0, 0x22

    .line 2184
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2185
    iget-object v0, p0, Ljma;->d:[Llzu;

    if-nez v0, :cond_2

    move v0, v1

    .line 2186
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llzu;

    .line 2188
    if-eqz v0, :cond_1

    .line 2189
    iget-object v3, p0, Ljma;->d:[Llzu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2191
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2192
    new-instance v3, Llzu;

    invoke-direct {v3}, Llzu;-><init>()V

    aput-object v3, v2, v0

    .line 2193
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2194
    invoke-virtual {p1}, Llxy;->a()I

    .line 2191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2185
    :cond_2
    iget-object v0, p0, Ljma;->d:[Llzu;

    array-length v0, v0

    goto :goto_1

    .line 2197
    :cond_3
    new-instance v3, Llzu;

    invoke-direct {v3}, Llzu;-><init>()V

    aput-object v3, v2, v0

    .line 2198
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2199
    iput-object v2, p0, Ljma;->d:[Llzu;

    goto :goto_0

    .line 2203
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljma;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 2207
    :sswitch_6
    const/16 v0, 0x32

    .line 2208
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2209
    iget-object v0, p0, Ljma;->f:[Lmac;

    if-nez v0, :cond_5

    move v0, v1

    .line 2210
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmac;

    .line 2212
    if-eqz v0, :cond_4

    .line 2213
    iget-object v3, p0, Ljma;->f:[Lmac;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2215
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2216
    new-instance v3, Lmac;

    invoke-direct {v3}, Lmac;-><init>()V

    aput-object v3, v2, v0

    .line 2217
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2218
    invoke-virtual {p1}, Llxy;->a()I

    .line 2215
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2209
    :cond_5
    iget-object v0, p0, Ljma;->f:[Lmac;

    array-length v0, v0

    goto :goto_3

    .line 2221
    :cond_6
    new-instance v3, Lmac;

    invoke-direct {v3}, Lmac;-><init>()V

    aput-object v3, v2, v0

    .line 2222
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2223
    iput-object v2, p0, Ljma;->f:[Lmac;

    goto/16 :goto_0

    .line 2152
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 2163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Ljma;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iget-object v2, p0, Ljma;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 78
    :cond_0
    iget-object v0, p0, Ljma;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x2

    iget-object v2, p0, Ljma;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 81
    :cond_1
    iget-object v0, p0, Ljma;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 82
    const/4 v0, 0x3

    iget-object v2, p0, Ljma;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 84
    :cond_2
    iget-object v0, p0, Ljma;->d:[Llzu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljma;->d:[Llzu;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 85
    :goto_0
    iget-object v2, p0, Ljma;->d:[Llzu;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 86
    iget-object v2, p0, Ljma;->d:[Llzu;

    aget-object v2, v2, v0

    .line 87
    if-eqz v2, :cond_3

    .line 88
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Ljma;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 93
    const/4 v0, 0x5

    iget-object v2, p0, Ljma;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 95
    :cond_5
    iget-object v0, p0, Ljma;->f:[Lmac;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljma;->f:[Lmac;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 96
    :goto_1
    iget-object v0, p0, Ljma;->f:[Lmac;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 97
    iget-object v0, p0, Ljma;->f:[Lmac;

    aget-object v0, v0, v1

    .line 98
    if-eqz v0, :cond_6

    .line 99
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 96
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 104
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 109
    iget-object v2, p0, Ljma;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 110
    const/4 v2, 0x1

    iget-object v3, p0, Ljma;->a:Ljava/lang/Integer;

    .line 111
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 113
    :cond_0
    iget-object v2, p0, Ljma;->b:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 114
    const/4 v2, 0x2

    iget-object v3, p0, Ljma;->b:Ljava/lang/Long;

    .line 115
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 117
    :cond_1
    iget-object v2, p0, Ljma;->c:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 118
    const/4 v2, 0x3

    iget-object v3, p0, Ljma;->c:Ljava/lang/Long;

    .line 119
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Llxz;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 121
    :cond_2
    iget-object v2, p0, Ljma;->d:[Llzu;

    if-eqz v2, :cond_5

    iget-object v2, p0, Ljma;->d:[Llzu;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 122
    :goto_0
    iget-object v3, p0, Ljma;->d:[Llzu;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 123
    iget-object v3, p0, Ljma;->d:[Llzu;

    aget-object v3, v3, v0

    .line 124
    if-eqz v3, :cond_3

    .line 125
    const/4 v4, 0x4

    .line 126
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 130
    :cond_5
    iget-object v2, p0, Ljma;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 131
    const/4 v2, 0x5

    iget-object v3, p0, Ljma;->e:Ljava/lang/Integer;

    .line 132
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 134
    :cond_6
    iget-object v2, p0, Ljma;->f:[Lmac;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljma;->f:[Lmac;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 135
    :goto_1
    iget-object v2, p0, Ljma;->f:[Lmac;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 136
    iget-object v2, p0, Ljma;->f:[Lmac;

    aget-object v2, v2, v1

    .line 137
    if-eqz v2, :cond_7

    .line 138
    const/4 v3, 0x6

    .line 139
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 135
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_8
    return v0
.end method
