.class public final Lkji;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkji;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkja;

.field public b:Lkii;

.field public c:[Lkja;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4170
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5175
    iput-object v1, p0, Lkji;->requestHeader:Lkdo;

    .line 5176
    iput-object v1, p0, Lkji;->a:Lkja;

    .line 5177
    iput-object v1, p0, Lkji;->b:Lkii;

    .line 5178
    invoke-static {}, Lkja;->d()[Lkja;

    move-result-object v0

    iput-object v0, p0, Lkji;->c:[Lkja;

    .line 5179
    iput-object v1, p0, Lkji;->eD:Llyd;

    .line 5180
    const/4 v0, -0x1

    iput v0, p0, Lkji;->eE:I

    .line 4172
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5240
    sparse-switch v0, :sswitch_data_0

    .line 5244
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5245
    :sswitch_0
    return-object p0

    .line 5250
    :sswitch_1
    iget-object v0, p0, Lkji;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 5251
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkji;->requestHeader:Lkdo;

    .line 5253
    :cond_1
    iget-object v0, p0, Lkji;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5257
    :sswitch_2
    iget-object v0, p0, Lkji;->a:Lkja;

    if-nez v0, :cond_2

    .line 5258
    new-instance v0, Lkja;

    invoke-direct {v0}, Lkja;-><init>()V

    iput-object v0, p0, Lkji;->a:Lkja;

    .line 5260
    :cond_2
    iget-object v0, p0, Lkji;->a:Lkja;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5264
    :sswitch_3
    iget-object v0, p0, Lkji;->b:Lkii;

    if-nez v0, :cond_3

    .line 5265
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkji;->b:Lkii;

    .line 5267
    :cond_3
    iget-object v0, p0, Lkji;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5271
    :sswitch_4
    const/16 v0, 0x22

    .line 5272
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 5273
    iget-object v0, p0, Lkji;->c:[Lkja;

    if-nez v0, :cond_5

    move v0, v1

    .line 5274
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkja;

    .line 5276
    if-eqz v0, :cond_4

    .line 5277
    iget-object v3, p0, Lkji;->c:[Lkja;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5279
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 5280
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 5281
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 5282
    invoke-virtual {p1}, Llxy;->a()I

    .line 5279
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5273
    :cond_5
    iget-object v0, p0, Lkji;->c:[Lkja;

    array-length v0, v0

    goto :goto_1

    .line 5285
    :cond_6
    new-instance v3, Lkja;

    invoke-direct {v3}, Lkja;-><init>()V

    aput-object v3, v2, v0

    .line 5286
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 5287
    iput-object v2, p0, Lkji;->c:[Lkja;

    goto :goto_0

    .line 5240
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 4187
    iget-object v0, p0, Lkji;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 4188
    const/4 v0, 0x1

    iget-object v1, p0, Lkji;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4190
    :cond_0
    iget-object v0, p0, Lkji;->a:Lkja;

    if-eqz v0, :cond_1

    .line 4191
    const/4 v0, 0x2

    iget-object v1, p0, Lkji;->a:Lkja;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4193
    :cond_1
    iget-object v0, p0, Lkji;->b:Lkii;

    if-eqz v0, :cond_2

    .line 4194
    const/4 v0, 0x3

    iget-object v1, p0, Lkji;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4196
    :cond_2
    iget-object v0, p0, Lkji;->c:[Lkja;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkji;->c:[Lkja;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 4197
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkji;->c:[Lkja;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 4198
    iget-object v1, p0, Lkji;->c:[Lkja;

    aget-object v1, v1, v0

    .line 4199
    if-eqz v1, :cond_3

    .line 4200
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 4197
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4204
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4205
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 4209
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4210
    iget-object v1, p0, Lkji;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 4211
    const/4 v1, 0x1

    iget-object v2, p0, Lkji;->requestHeader:Lkdo;

    .line 4212
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4214
    :cond_0
    iget-object v1, p0, Lkji;->a:Lkja;

    if-eqz v1, :cond_1

    .line 4215
    const/4 v1, 0x2

    iget-object v2, p0, Lkji;->a:Lkja;

    .line 4216
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4218
    :cond_1
    iget-object v1, p0, Lkji;->b:Lkii;

    if-eqz v1, :cond_2

    .line 4219
    const/4 v1, 0x3

    iget-object v2, p0, Lkji;->b:Lkii;

    .line 4220
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4222
    :cond_2
    iget-object v1, p0, Lkji;->c:[Lkja;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkji;->c:[Lkja;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 4223
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkji;->c:[Lkja;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 4224
    iget-object v2, p0, Lkji;->c:[Lkja;

    aget-object v2, v2, v0

    .line 4225
    if-eqz v2, :cond_3

    .line 4226
    const/4 v3, 0x4

    .line 4227
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 4223
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 4231
    :cond_5
    return v0
.end method
