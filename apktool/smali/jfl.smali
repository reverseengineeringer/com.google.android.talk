.class public final Ljfl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljfl;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljfx;

.field public c:[Ljgb;

.field public d:[Ljey;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5136
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5137
    iput-object v1, p0, Ljfl;->a:Ljava/lang/String;

    .line 5138
    invoke-static {}, Ljfx;->d()[Ljfx;

    move-result-object v0

    iput-object v0, p0, Ljfl;->b:[Ljfx;

    .line 5139
    invoke-static {}, Ljgb;->d()[Ljgb;

    move-result-object v0

    iput-object v0, p0, Ljfl;->c:[Ljgb;

    .line 5140
    invoke-static {}, Ljey;->d()[Ljey;

    move-result-object v0

    iput-object v0, p0, Ljfl;->d:[Ljey;

    .line 5141
    iput-object v1, p0, Ljfl;->eD:Llyd;

    .line 5142
    const/4 v0, -0x1

    iput v0, p0, Ljfl;->eE:I

    .line 5143
    return-void
.end method

.method public static d()[Ljfl;
    .locals 2

    .prologue
    .line 5111
    sget-object v0, Ljfl;->e:[Ljfl;

    if-nez v0, :cond_1

    .line 5112
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5114
    :try_start_0
    sget-object v0, Ljfl;->e:[Ljfl;

    if-nez v0, :cond_0

    .line 5115
    const/4 v0, 0x0

    new-array v0, v0, [Ljfl;

    sput-object v0, Ljfl;->e:[Ljfl;

    .line 5117
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5119
    :cond_1
    sget-object v0, Ljfl;->e:[Ljfl;

    return-object v0

    .line 5117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6221
    sparse-switch v0, :sswitch_data_0

    .line 6225
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6226
    :sswitch_0
    return-object p0

    .line 6231
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfl;->a:Ljava/lang/String;

    goto :goto_0

    .line 6235
    :sswitch_2
    const/16 v0, 0x12

    .line 6236
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6237
    iget-object v0, p0, Ljfl;->b:[Ljfx;

    if-nez v0, :cond_2

    move v0, v1

    .line 6238
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljfx;

    .line 6240
    if-eqz v0, :cond_1

    .line 6241
    iget-object v3, p0, Ljfl;->b:[Ljfx;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6243
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6244
    new-instance v3, Ljfx;

    invoke-direct {v3}, Ljfx;-><init>()V

    aput-object v3, v2, v0

    .line 6245
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6246
    invoke-virtual {p1}, Llxy;->a()I

    .line 6243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6237
    :cond_2
    iget-object v0, p0, Ljfl;->b:[Ljfx;

    array-length v0, v0

    goto :goto_1

    .line 6249
    :cond_3
    new-instance v3, Ljfx;

    invoke-direct {v3}, Ljfx;-><init>()V

    aput-object v3, v2, v0

    .line 6250
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6251
    iput-object v2, p0, Ljfl;->b:[Ljfx;

    goto :goto_0

    .line 6255
    :sswitch_3
    const/16 v0, 0x1a

    .line 6256
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6257
    iget-object v0, p0, Ljfl;->c:[Ljgb;

    if-nez v0, :cond_5

    move v0, v1

    .line 6258
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgb;

    .line 6260
    if-eqz v0, :cond_4

    .line 6261
    iget-object v3, p0, Ljfl;->c:[Ljgb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6263
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 6264
    new-instance v3, Ljgb;

    invoke-direct {v3}, Ljgb;-><init>()V

    aput-object v3, v2, v0

    .line 6265
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6266
    invoke-virtual {p1}, Llxy;->a()I

    .line 6263
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6257
    :cond_5
    iget-object v0, p0, Ljfl;->c:[Ljgb;

    array-length v0, v0

    goto :goto_3

    .line 6269
    :cond_6
    new-instance v3, Ljgb;

    invoke-direct {v3}, Ljgb;-><init>()V

    aput-object v3, v2, v0

    .line 6270
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6271
    iput-object v2, p0, Ljfl;->c:[Ljgb;

    goto/16 :goto_0

    .line 6275
    :sswitch_4
    const/16 v0, 0x22

    .line 6276
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6277
    iget-object v0, p0, Ljfl;->d:[Ljey;

    if-nez v0, :cond_8

    move v0, v1

    .line 6278
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljey;

    .line 6280
    if-eqz v0, :cond_7

    .line 6281
    iget-object v3, p0, Ljfl;->d:[Ljey;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6283
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 6284
    new-instance v3, Ljey;

    invoke-direct {v3}, Ljey;-><init>()V

    aput-object v3, v2, v0

    .line 6285
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6286
    invoke-virtual {p1}, Llxy;->a()I

    .line 6283
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6277
    :cond_8
    iget-object v0, p0, Ljfl;->d:[Ljey;

    array-length v0, v0

    goto :goto_5

    .line 6289
    :cond_9
    new-instance v3, Ljey;

    invoke-direct {v3}, Ljey;-><init>()V

    aput-object v3, v2, v0

    .line 6290
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6291
    iput-object v2, p0, Ljfl;->d:[Ljey;

    goto/16 :goto_0

    .line 6221
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
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5148
    iget-object v0, p0, Ljfl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5149
    const/4 v0, 0x1

    iget-object v2, p0, Ljfl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 5151
    :cond_0
    iget-object v0, p0, Ljfl;->b:[Ljfx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljfl;->b:[Ljfx;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 5152
    :goto_0
    iget-object v2, p0, Ljfl;->b:[Ljfx;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 5153
    iget-object v2, p0, Ljfl;->b:[Ljfx;

    aget-object v2, v2, v0

    .line 5154
    if-eqz v2, :cond_1

    .line 5155
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 5152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5159
    :cond_2
    iget-object v0, p0, Ljfl;->c:[Ljgb;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljfl;->c:[Ljgb;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 5160
    :goto_1
    iget-object v2, p0, Ljfl;->c:[Ljgb;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 5161
    iget-object v2, p0, Ljfl;->c:[Ljgb;

    aget-object v2, v2, v0

    .line 5162
    if-eqz v2, :cond_3

    .line 5163
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 5160
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5167
    :cond_4
    iget-object v0, p0, Ljfl;->d:[Ljey;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljfl;->d:[Ljey;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 5168
    :goto_2
    iget-object v0, p0, Ljfl;->d:[Ljey;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 5169
    iget-object v0, p0, Ljfl;->d:[Ljey;

    aget-object v0, v0, v1

    .line 5170
    if-eqz v0, :cond_5

    .line 5171
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 5168
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5175
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5176
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5180
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5181
    iget-object v2, p0, Ljfl;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5182
    const/4 v2, 0x1

    iget-object v3, p0, Ljfl;->a:Ljava/lang/String;

    .line 5183
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5185
    :cond_0
    iget-object v2, p0, Ljfl;->b:[Ljfx;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljfl;->b:[Ljfx;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 5186
    :goto_0
    iget-object v3, p0, Ljfl;->b:[Ljfx;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 5187
    iget-object v3, p0, Ljfl;->b:[Ljfx;

    aget-object v3, v3, v0

    .line 5188
    if-eqz v3, :cond_1

    .line 5189
    const/4 v4, 0x2

    .line 5190
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5186
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5194
    :cond_3
    iget-object v2, p0, Ljfl;->c:[Ljgb;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljfl;->c:[Ljgb;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 5195
    :goto_1
    iget-object v3, p0, Ljfl;->c:[Ljgb;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 5196
    iget-object v3, p0, Ljfl;->c:[Ljgb;

    aget-object v3, v3, v0

    .line 5197
    if-eqz v3, :cond_4

    .line 5198
    const/4 v4, 0x3

    .line 5199
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5195
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 5203
    :cond_6
    iget-object v2, p0, Ljfl;->d:[Ljey;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljfl;->d:[Ljey;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 5204
    :goto_2
    iget-object v2, p0, Ljfl;->d:[Ljey;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 5205
    iget-object v2, p0, Ljfl;->d:[Ljey;

    aget-object v2, v2, v1

    .line 5206
    if-eqz v2, :cond_7

    .line 5207
    const/4 v3, 0x4

    .line 5208
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5204
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5212
    :cond_8
    return v0
.end method
