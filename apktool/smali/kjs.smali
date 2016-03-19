.class public final Lkjs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Lkjt;

.field public d:Ljava/lang/Integer;

.field public e:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1180
    iput-object v1, p0, Lkjs;->a:Ljava/lang/Boolean;

    .line 1181
    iput-object v1, p0, Lkjs;->b:Ljava/lang/Boolean;

    .line 1182
    iput-object v1, p0, Lkjs;->c:Lkjt;

    .line 1183
    iput-object v1, p0, Lkjs;->d:Ljava/lang/Integer;

    .line 1184
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Lkjs;->e:[I

    .line 1185
    iput-object v1, p0, Lkjs;->eD:Llyd;

    .line 1186
    const/4 v0, -0x1

    iput v0, p0, Lkjs;->eE:I

    .line 177
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3250
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3251
    sparse-switch v0, :sswitch_data_0

    .line 3255
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3256
    :sswitch_0
    return-object p0

    .line 3261
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkjs;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 3265
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkjs;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 3269
    :sswitch_3
    iget-object v0, p0, Lkjs;->c:Lkjt;

    if-nez v0, :cond_1

    .line 3270
    new-instance v0, Lkjt;

    invoke-direct {v0}, Lkjt;-><init>()V

    iput-object v0, p0, Lkjs;->c:Lkjt;

    .line 3272
    :cond_1
    iget-object v0, p0, Lkjs;->c:Lkjt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3276
    :sswitch_4
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkjs;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 3280
    :sswitch_5
    const/16 v0, 0x28

    .line 3281
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3282
    iget-object v0, p0, Lkjs;->e:[I

    if-nez v0, :cond_3

    move v0, v1

    .line 3283
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 3284
    if-eqz v0, :cond_2

    .line 3285
    iget-object v3, p0, Lkjs;->e:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3287
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 3288
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 3289
    invoke-virtual {p1}, Llxy;->a()I

    .line 3287
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3282
    :cond_3
    iget-object v0, p0, Lkjs;->e:[I

    array-length v0, v0

    goto :goto_1

    .line 3292
    :cond_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v3

    aput v3, v2, v0

    .line 3293
    iput-object v2, p0, Lkjs;->e:[I

    goto :goto_0

    .line 3297
    :sswitch_6
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3298
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3301
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 3302
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_5

    .line 3303
    invoke-virtual {p1}, Llxy;->f()I

    .line 3304
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3306
    :cond_5
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 3307
    iget-object v2, p0, Lkjs;->e:[I

    if-nez v2, :cond_7

    move v2, v1

    .line 3308
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    .line 3309
    if-eqz v2, :cond_6

    .line 3310
    iget-object v4, p0, Lkjs;->e:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3312
    :cond_6
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_8

    .line 3313
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    aput v4, v0, v2

    .line 3312
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3307
    :cond_7
    iget-object v2, p0, Lkjs;->e:[I

    array-length v2, v2

    goto :goto_4

    .line 3315
    :cond_8
    iput-object v0, p0, Lkjs;->e:[I

    .line 3316
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3251
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lkjs;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    iget-object v1, p0, Lkjs;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 196
    :cond_0
    iget-object v0, p0, Lkjs;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 197
    const/4 v0, 0x2

    iget-object v1, p0, Lkjs;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 199
    :cond_1
    iget-object v0, p0, Lkjs;->c:Lkjt;

    if-eqz v0, :cond_2

    .line 200
    const/4 v0, 0x3

    iget-object v1, p0, Lkjs;->c:Lkjt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 202
    :cond_2
    iget-object v0, p0, Lkjs;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 203
    const/4 v0, 0x4

    iget-object v1, p0, Lkjs;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 205
    :cond_3
    iget-object v0, p0, Lkjs;->e:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkjs;->e:[I

    array-length v0, v0

    if-lez v0, :cond_4

    .line 206
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkjs;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 207
    const/4 v1, 0x5

    iget-object v2, p0, Lkjs;->e:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Llxz;->a(II)V

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 211
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 216
    iget-object v2, p0, Lkjs;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 217
    const/4 v2, 0x1

    iget-object v3, p0, Lkjs;->a:Ljava/lang/Boolean;

    .line 218
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 218
    add-int/2addr v0, v2

    .line 220
    :cond_0
    iget-object v2, p0, Lkjs;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 221
    const/4 v2, 0x2

    iget-object v3, p0, Lkjs;->b:Ljava/lang/Boolean;

    .line 222
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 222
    add-int/2addr v0, v2

    .line 224
    :cond_1
    iget-object v2, p0, Lkjs;->c:Lkjt;

    if-eqz v2, :cond_2

    .line 225
    const/4 v2, 0x3

    iget-object v3, p0, Lkjs;->c:Lkjt;

    .line 226
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 228
    :cond_2
    iget-object v2, p0, Lkjs;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 229
    const/4 v2, 0x4

    iget-object v3, p0, Lkjs;->d:Ljava/lang/Integer;

    .line 230
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 232
    :cond_3
    iget-object v2, p0, Lkjs;->e:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Lkjs;->e:[I

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v1

    .line 234
    :goto_0
    iget-object v3, p0, Lkjs;->e:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 235
    iget-object v3, p0, Lkjs;->e:[I

    aget v3, v3, v1

    .line 237
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_4
    add-int/2addr v0, v2

    .line 240
    iget-object v1, p0, Lkjs;->e:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 242
    :cond_5
    return v0
.end method
