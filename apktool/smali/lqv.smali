.class public final Llqv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lltd;

.field public c:Llqw;

.field public d:Llsf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0}, Llyb;-><init>()V

    .line 220
    iput-object v0, p0, Llqv;->a:Ljava/lang/Boolean;

    .line 221
    iput-object v0, p0, Llqv;->b:Lltd;

    .line 222
    iput-object v0, p0, Llqv;->c:Llqw;

    .line 223
    iput-object v0, p0, Llqv;->d:Llsf;

    .line 224
    iput-object v0, p0, Llqv;->eD:Llyd;

    .line 225
    const/4 v0, -0x1

    iput v0, p0, Llqv;->eE:I

    .line 226
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2273
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2274
    sparse-switch v0, :sswitch_data_0

    .line 2278
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2279
    :sswitch_0
    return-object p0

    .line 2284
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llqv;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2288
    :sswitch_2
    iget-object v0, p0, Llqv;->b:Lltd;

    if-nez v0, :cond_1

    .line 2289
    new-instance v0, Lltd;

    invoke-direct {v0}, Lltd;-><init>()V

    iput-object v0, p0, Llqv;->b:Lltd;

    .line 2291
    :cond_1
    iget-object v0, p0, Llqv;->b:Lltd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2295
    :sswitch_3
    iget-object v0, p0, Llqv;->c:Llqw;

    if-nez v0, :cond_2

    .line 2296
    new-instance v0, Llqw;

    invoke-direct {v0}, Llqw;-><init>()V

    iput-object v0, p0, Llqv;->c:Llqw;

    .line 2298
    :cond_2
    iget-object v0, p0, Llqv;->c:Llqw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2302
    :sswitch_4
    iget-object v0, p0, Llqv;->d:Llsf;

    if-nez v0, :cond_3

    .line 2303
    new-instance v0, Llsf;

    invoke-direct {v0}, Llsf;-><init>()V

    iput-object v0, p0, Llqv;->d:Llsf;

    .line 2305
    :cond_3
    iget-object v0, p0, Llqv;->d:Llsf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2274
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Llqv;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iget-object v1, p0, Llqv;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 234
    :cond_0
    iget-object v0, p0, Llqv;->b:Lltd;

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x2

    iget-object v1, p0, Llqv;->b:Lltd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 237
    :cond_1
    iget-object v0, p0, Llqv;->c:Llqw;

    if-eqz v0, :cond_2

    .line 238
    const/4 v0, 0x3

    iget-object v1, p0, Llqv;->c:Llqw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 240
    :cond_2
    iget-object v0, p0, Llqv;->d:Llsf;

    if-eqz v0, :cond_3

    .line 241
    const/4 v0, 0x4

    iget-object v1, p0, Llqv;->d:Llsf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 243
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 244
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 249
    iget-object v1, p0, Llqv;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x1

    iget-object v2, p0, Llqv;->a:Ljava/lang/Boolean;

    .line 251
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 251
    add-int/2addr v0, v1

    .line 253
    :cond_0
    iget-object v1, p0, Llqv;->b:Lltd;

    if-eqz v1, :cond_1

    .line 254
    const/4 v1, 0x2

    iget-object v2, p0, Llqv;->b:Lltd;

    .line 255
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_1
    iget-object v1, p0, Llqv;->c:Llqw;

    if-eqz v1, :cond_2

    .line 258
    const/4 v1, 0x3

    iget-object v2, p0, Llqv;->c:Llqw;

    .line 259
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    :cond_2
    iget-object v1, p0, Llqv;->d:Llsf;

    if-eqz v1, :cond_3

    .line 262
    const/4 v1, 0x4

    iget-object v2, p0, Llqv;->d:Llsf;

    .line 263
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :cond_3
    return v0
.end method
