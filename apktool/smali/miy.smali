.class public final Lmiy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmiy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Lmiz;

.field public c:[Lmiz;

.field public d:Ljava/lang/Boolean;

.field public e:Lmho;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1151
    iput-object v1, p0, Lmiy;->a:Ljava/lang/String;

    .line 1152
    invoke-static {}, Lmiz;->d()[Lmiz;

    move-result-object v0

    iput-object v0, p0, Lmiy;->b:[Lmiz;

    .line 1153
    invoke-static {}, Lmiz;->d()[Lmiz;

    move-result-object v0

    iput-object v0, p0, Lmiy;->c:[Lmiz;

    .line 1154
    iput-object v1, p0, Lmiy;->d:Ljava/lang/Boolean;

    .line 1155
    iput-object v1, p0, Lmiy;->e:Lmho;

    .line 1156
    iput-object v1, p0, Lmiy;->eD:Llyd;

    .line 1157
    const/4 v0, -0x1

    iput v0, p0, Lmiy;->eE:I

    .line 148
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2233
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2234
    sparse-switch v0, :sswitch_data_0

    .line 2238
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2239
    :sswitch_0
    return-object p0

    .line 2244
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiy;->a:Ljava/lang/String;

    goto :goto_0

    .line 2248
    :sswitch_2
    const/16 v0, 0x12

    .line 2249
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2250
    iget-object v0, p0, Lmiy;->b:[Lmiz;

    if-nez v0, :cond_2

    move v0, v1

    .line 2251
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmiz;

    .line 2253
    if-eqz v0, :cond_1

    .line 2254
    iget-object v3, p0, Lmiy;->b:[Lmiz;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2256
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2257
    new-instance v3, Lmiz;

    invoke-direct {v3}, Lmiz;-><init>()V

    aput-object v3, v2, v0

    .line 2258
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2259
    invoke-virtual {p1}, Llxy;->a()I

    .line 2256
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2250
    :cond_2
    iget-object v0, p0, Lmiy;->b:[Lmiz;

    array-length v0, v0

    goto :goto_1

    .line 2262
    :cond_3
    new-instance v3, Lmiz;

    invoke-direct {v3}, Lmiz;-><init>()V

    aput-object v3, v2, v0

    .line 2263
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2264
    iput-object v2, p0, Lmiy;->b:[Lmiz;

    goto :goto_0

    .line 2268
    :sswitch_3
    const/16 v0, 0x1a

    .line 2269
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2270
    iget-object v0, p0, Lmiy;->c:[Lmiz;

    if-nez v0, :cond_5

    move v0, v1

    .line 2271
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmiz;

    .line 2273
    if-eqz v0, :cond_4

    .line 2274
    iget-object v3, p0, Lmiy;->c:[Lmiz;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2276
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2277
    new-instance v3, Lmiz;

    invoke-direct {v3}, Lmiz;-><init>()V

    aput-object v3, v2, v0

    .line 2278
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2279
    invoke-virtual {p1}, Llxy;->a()I

    .line 2276
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2270
    :cond_5
    iget-object v0, p0, Lmiy;->c:[Lmiz;

    array-length v0, v0

    goto :goto_3

    .line 2282
    :cond_6
    new-instance v3, Lmiz;

    invoke-direct {v3}, Lmiz;-><init>()V

    aput-object v3, v2, v0

    .line 2283
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2284
    iput-object v2, p0, Lmiy;->c:[Lmiz;

    goto/16 :goto_0

    .line 2288
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmiy;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2292
    :sswitch_5
    iget-object v0, p0, Lmiy;->e:Lmho;

    if-nez v0, :cond_7

    .line 2293
    new-instance v0, Lmho;

    invoke-direct {v0}, Lmho;-><init>()V

    iput-object v0, p0, Lmiy;->e:Lmho;

    .line 2295
    :cond_7
    iget-object v0, p0, Lmiy;->e:Lmho;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2234
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lmiy;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    iget-object v2, p0, Lmiy;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lmiy;->b:[Lmiz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiy;->b:[Lmiz;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 168
    :goto_0
    iget-object v2, p0, Lmiy;->b:[Lmiz;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 169
    iget-object v2, p0, Lmiy;->b:[Lmiz;

    aget-object v2, v2, v0

    .line 170
    if-eqz v2, :cond_1

    .line 171
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 168
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lmiy;->c:[Lmiz;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiy;->c:[Lmiz;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 176
    :goto_1
    iget-object v0, p0, Lmiy;->c:[Lmiz;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 177
    iget-object v0, p0, Lmiy;->c:[Lmiz;

    aget-object v0, v0, v1

    .line 178
    if-eqz v0, :cond_3

    .line 179
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 176
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_4
    iget-object v0, p0, Lmiy;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 184
    const/4 v0, 0x4

    iget-object v1, p0, Lmiy;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 186
    :cond_5
    iget-object v0, p0, Lmiy;->e:Lmho;

    if-eqz v0, :cond_6

    .line 187
    const/4 v0, 0x5

    iget-object v1, p0, Lmiy;->e:Lmho;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 189
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 190
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 195
    iget-object v2, p0, Lmiy;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 196
    const/4 v2, 0x1

    iget-object v3, p0, Lmiy;->a:Ljava/lang/String;

    .line 197
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 199
    :cond_0
    iget-object v2, p0, Lmiy;->b:[Lmiz;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiy;->b:[Lmiz;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 200
    :goto_0
    iget-object v3, p0, Lmiy;->b:[Lmiz;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 201
    iget-object v3, p0, Lmiy;->b:[Lmiz;

    aget-object v3, v3, v0

    .line 202
    if-eqz v3, :cond_1

    .line 203
    const/4 v4, 0x2

    .line 204
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 208
    :cond_3
    iget-object v2, p0, Lmiy;->c:[Lmiz;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmiy;->c:[Lmiz;

    array-length v2, v2

    if-lez v2, :cond_5

    .line 209
    :goto_1
    iget-object v2, p0, Lmiy;->c:[Lmiz;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 210
    iget-object v2, p0, Lmiy;->c:[Lmiz;

    aget-object v2, v2, v1

    .line 211
    if-eqz v2, :cond_4

    .line 212
    const/4 v3, 0x3

    .line 213
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 209
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_5
    iget-object v1, p0, Lmiy;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 218
    const/4 v1, 0x4

    iget-object v2, p0, Lmiy;->d:Ljava/lang/Boolean;

    .line 219
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 219
    add-int/2addr v0, v1

    .line 221
    :cond_6
    iget-object v1, p0, Lmiy;->e:Lmho;

    if-eqz v1, :cond_7

    .line 222
    const/4 v1, 0x5

    iget-object v2, p0, Lmiy;->e:Lmho;

    .line 223
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_7
    return v0
.end method
