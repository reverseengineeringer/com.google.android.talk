.class public final Ljaz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljaz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:[Ljay;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3181
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4186
    iput-object v1, p0, Ljaz;->a:Ljbn;

    .line 4187
    invoke-static {}, Ljay;->d()[Ljay;

    move-result-object v0

    iput-object v0, p0, Ljaz;->b:[Ljay;

    .line 4188
    iput-object v1, p0, Ljaz;->eD:Llyd;

    .line 4189
    const/4 v0, -0x1

    iput v0, p0, Ljaz;->eE:I

    .line 3183
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4234
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4235
    sparse-switch v0, :sswitch_data_0

    .line 4239
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4240
    :sswitch_0
    return-object p0

    .line 4245
    :sswitch_1
    iget-object v0, p0, Ljaz;->a:Ljbn;

    if-nez v0, :cond_1

    .line 4246
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljaz;->a:Ljbn;

    .line 4248
    :cond_1
    iget-object v0, p0, Ljaz;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4252
    :sswitch_2
    const/16 v0, 0x12

    .line 4253
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 4254
    iget-object v0, p0, Ljaz;->b:[Ljay;

    if-nez v0, :cond_3

    move v0, v1

    .line 4255
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljay;

    .line 4257
    if-eqz v0, :cond_2

    .line 4258
    iget-object v3, p0, Ljaz;->b:[Ljay;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4260
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 4261
    new-instance v3, Ljay;

    invoke-direct {v3}, Ljay;-><init>()V

    aput-object v3, v2, v0

    .line 4262
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 4263
    invoke-virtual {p1}, Llxy;->a()I

    .line 4260
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4254
    :cond_3
    iget-object v0, p0, Ljaz;->b:[Ljay;

    array-length v0, v0

    goto :goto_1

    .line 4266
    :cond_4
    new-instance v3, Ljay;

    invoke-direct {v3}, Ljay;-><init>()V

    aput-object v3, v2, v0

    .line 4267
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 4268
    iput-object v2, p0, Ljaz;->b:[Ljay;

    goto :goto_0

    .line 4235
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
    .line 3196
    iget-object v0, p0, Ljaz;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 3197
    const/4 v0, 0x1

    iget-object v1, p0, Ljaz;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3199
    :cond_0
    iget-object v0, p0, Ljaz;->b:[Ljay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljaz;->b:[Ljay;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 3200
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljaz;->b:[Ljay;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3201
    iget-object v1, p0, Ljaz;->b:[Ljay;

    aget-object v1, v1, v0

    .line 3202
    if-eqz v1, :cond_1

    .line 3203
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 3200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3207
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3208
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 3212
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3213
    iget-object v1, p0, Ljaz;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 3214
    const/4 v1, 0x1

    iget-object v2, p0, Ljaz;->a:Ljbn;

    .line 3215
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3217
    :cond_0
    iget-object v1, p0, Ljaz;->b:[Ljay;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljaz;->b:[Ljay;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 3218
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljaz;->b:[Ljay;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 3219
    iget-object v2, p0, Ljaz;->b:[Ljay;

    aget-object v2, v2, v0

    .line 3220
    if-eqz v2, :cond_1

    .line 3221
    const/4 v3, 0x2

    .line 3222
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3218
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3226
    :cond_3
    return v0
.end method
