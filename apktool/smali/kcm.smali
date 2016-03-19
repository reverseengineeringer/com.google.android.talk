.class public final Lkcm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lkcm;


# instance fields
.field public a:Ljxw;

.field public b:[Lkcn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39181
    invoke-direct {p0}, Llyb;-><init>()V

    .line 40186
    iput-object v1, p0, Lkcm;->a:Ljxw;

    .line 40187
    invoke-static {}, Lkcn;->d()[Lkcn;

    move-result-object v0

    iput-object v0, p0, Lkcm;->b:[Lkcn;

    .line 40188
    iput-object v1, p0, Lkcm;->eD:Llyd;

    .line 40189
    const/4 v0, -0x1

    iput v0, p0, Lkcm;->eE:I

    .line 39183
    return-void
.end method

.method public static d()[Lkcm;
    .locals 2

    .prologue
    .line 39162
    sget-object v0, Lkcm;->c:[Lkcm;

    if-nez v0, :cond_1

    .line 39163
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 39165
    :try_start_0
    sget-object v0, Lkcm;->c:[Lkcm;

    if-nez v0, :cond_0

    .line 39166
    const/4 v0, 0x0

    new-array v0, v0, [Lkcm;

    sput-object v0, Lkcm;->c:[Lkcm;

    .line 39168
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39170
    :cond_1
    sget-object v0, Lkcm;->c:[Lkcm;

    return-object v0

    .line 39168
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

    .line 40234
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 40235
    sparse-switch v0, :sswitch_data_0

    .line 40239
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40240
    :sswitch_0
    return-object p0

    .line 40245
    :sswitch_1
    iget-object v0, p0, Lkcm;->a:Ljxw;

    if-nez v0, :cond_1

    .line 40246
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkcm;->a:Ljxw;

    .line 40248
    :cond_1
    iget-object v0, p0, Lkcm;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 40252
    :sswitch_2
    const/16 v0, 0x12

    .line 40253
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 40254
    iget-object v0, p0, Lkcm;->b:[Lkcn;

    if-nez v0, :cond_3

    move v0, v1

    .line 40255
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcn;

    .line 40257
    if-eqz v0, :cond_2

    .line 40258
    iget-object v3, p0, Lkcm;->b:[Lkcn;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40260
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 40261
    new-instance v3, Lkcn;

    invoke-direct {v3}, Lkcn;-><init>()V

    aput-object v3, v2, v0

    .line 40262
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 40263
    invoke-virtual {p1}, Llxy;->a()I

    .line 40260
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 40254
    :cond_3
    iget-object v0, p0, Lkcm;->b:[Lkcn;

    array-length v0, v0

    goto :goto_1

    .line 40266
    :cond_4
    new-instance v3, Lkcn;

    invoke-direct {v3}, Lkcn;-><init>()V

    aput-object v3, v2, v0

    .line 40267
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 40268
    iput-object v2, p0, Lkcm;->b:[Lkcn;

    goto :goto_0

    .line 40235
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 39196
    iget-object v0, p0, Lkcm;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 39197
    const/4 v0, 0x1

    iget-object v1, p0, Lkcm;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 39199
    :cond_0
    iget-object v0, p0, Lkcm;->b:[Lkcn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkcm;->b:[Lkcn;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 39200
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkcm;->b:[Lkcn;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 39201
    iget-object v1, p0, Lkcm;->b:[Lkcn;

    aget-object v1, v1, v0

    .line 39202
    if-eqz v1, :cond_1

    .line 39203
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 39200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39207
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 39208
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 39212
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 39213
    iget-object v1, p0, Lkcm;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 39214
    const/4 v1, 0x1

    iget-object v2, p0, Lkcm;->a:Ljxw;

    .line 39215
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39217
    :cond_0
    iget-object v1, p0, Lkcm;->b:[Lkcn;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkcm;->b:[Lkcn;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 39218
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkcm;->b:[Lkcn;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 39219
    iget-object v2, p0, Lkcm;->b:[Lkcn;

    aget-object v2, v2, v0

    .line 39220
    if-eqz v2, :cond_1

    .line 39221
    const/4 v3, 0x2

    .line 39222
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 39218
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 39226
    :cond_3
    return v0
.end method
