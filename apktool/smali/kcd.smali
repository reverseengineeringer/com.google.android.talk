.class public final Lkcd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcd;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkcd;


# instance fields
.field public a:[Lmel;

.field public b:[Lmed;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3160
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4165
    invoke-static {}, Lmel;->d()[Lmel;

    move-result-object v0

    iput-object v0, p0, Lkcd;->a:[Lmel;

    .line 4166
    invoke-static {}, Lmed;->d()[Lmed;

    move-result-object v0

    iput-object v0, p0, Lkcd;->b:[Lmed;

    .line 4167
    const/4 v0, 0x0

    iput-object v0, p0, Lkcd;->eD:Llyd;

    .line 4168
    const/4 v0, -0x1

    iput v0, p0, Lkcd;->eE:I

    .line 3162
    return-void
.end method

.method public static d()[Lkcd;
    .locals 2

    .prologue
    .line 3141
    sget-object v0, Lkcd;->c:[Lkcd;

    if-nez v0, :cond_1

    .line 3142
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3144
    :try_start_0
    sget-object v0, Lkcd;->c:[Lkcd;

    if-nez v0, :cond_0

    .line 3145
    const/4 v0, 0x0

    new-array v0, v0, [Lkcd;

    sput-object v0, Lkcd;->c:[Lkcd;

    .line 3147
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3149
    :cond_1
    sget-object v0, Lkcd;->c:[Lkcd;

    return-object v0

    .line 3147
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

    .line 4223
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4224
    sparse-switch v0, :sswitch_data_0

    .line 4228
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4229
    :sswitch_0
    return-object p0

    .line 4234
    :sswitch_1
    const/16 v0, 0xa

    .line 4235
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4236
    iget-object v0, p0, Lkcd;->a:[Lmel;

    if-nez v0, :cond_2

    move v0, v1

    .line 4237
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmel;

    .line 4239
    if-eqz v0, :cond_1

    .line 4240
    iget-object v3, p0, Lkcd;->a:[Lmel;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4242
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 4243
    new-instance v3, Lmel;

    invoke-direct {v3}, Lmel;-><init>()V

    aput-object v3, v2, v0

    .line 4244
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4245
    invoke-virtual {p1}, Llxy;->a()I

    .line 4242
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4236
    :cond_2
    iget-object v0, p0, Lkcd;->a:[Lmel;

    array-length v0, v0

    goto :goto_1

    .line 4248
    :cond_3
    new-instance v3, Lmel;

    invoke-direct {v3}, Lmel;-><init>()V

    aput-object v3, v2, v0

    .line 4249
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4250
    iput-object v2, p0, Lkcd;->a:[Lmel;

    goto :goto_0

    .line 4254
    :sswitch_2
    const/16 v0, 0x12

    .line 4255
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4256
    iget-object v0, p0, Lkcd;->b:[Lmed;

    if-nez v0, :cond_5

    move v0, v1

    .line 4257
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmed;

    .line 4259
    if-eqz v0, :cond_4

    .line 4260
    iget-object v3, p0, Lkcd;->b:[Lmed;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4262
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 4263
    new-instance v3, Lmed;

    invoke-direct {v3}, Lmed;-><init>()V

    aput-object v3, v2, v0

    .line 4264
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4265
    invoke-virtual {p1}, Llxy;->a()I

    .line 4262
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4256
    :cond_5
    iget-object v0, p0, Lkcd;->b:[Lmed;

    array-length v0, v0

    goto :goto_3

    .line 4268
    :cond_6
    new-instance v3, Lmed;

    invoke-direct {v3}, Lmed;-><init>()V

    aput-object v3, v2, v0

    .line 4269
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4270
    iput-object v2, p0, Lkcd;->b:[Lmed;

    goto/16 :goto_0

    .line 4224
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3175
    iget-object v0, p0, Lkcd;->a:[Lmel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkcd;->a:[Lmel;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 3176
    :goto_0
    iget-object v2, p0, Lkcd;->a:[Lmel;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 3177
    iget-object v2, p0, Lkcd;->a:[Lmel;

    aget-object v2, v2, v0

    .line 3178
    if-eqz v2, :cond_0

    .line 3179
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 3176
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3183
    :cond_1
    iget-object v0, p0, Lkcd;->b:[Lmed;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkcd;->b:[Lmed;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 3184
    :goto_1
    iget-object v0, p0, Lkcd;->b:[Lmed;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 3185
    iget-object v0, p0, Lkcd;->b:[Lmed;

    aget-object v0, v0, v1

    .line 3186
    if-eqz v0, :cond_2

    .line 3187
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 3184
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3191
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3192
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3196
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3197
    iget-object v2, p0, Lkcd;->a:[Lmel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkcd;->a:[Lmel;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 3198
    :goto_0
    iget-object v3, p0, Lkcd;->a:[Lmel;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 3199
    iget-object v3, p0, Lkcd;->a:[Lmel;

    aget-object v3, v3, v0

    .line 3200
    if-eqz v3, :cond_0

    .line 3201
    const/4 v4, 0x1

    .line 3202
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3198
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3206
    :cond_2
    iget-object v2, p0, Lkcd;->b:[Lmed;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkcd;->b:[Lmed;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 3207
    :goto_1
    iget-object v2, p0, Lkcd;->b:[Lmed;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 3208
    iget-object v2, p0, Lkcd;->b:[Lmed;

    aget-object v2, v2, v1

    .line 3209
    if-eqz v2, :cond_3

    .line 3210
    const/4 v3, 0x2

    .line 3211
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3207
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3215
    :cond_4
    return v0
.end method
