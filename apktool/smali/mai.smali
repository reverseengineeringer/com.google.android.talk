.class public final Lmai;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmai;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2261
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3266
    iput-object v0, p0, Lmai;->a:Ljava/lang/Boolean;

    .line 3267
    iput-object v0, p0, Lmai;->b:Ljava/lang/Boolean;

    .line 3268
    iput-object v0, p0, Lmai;->c:Ljava/lang/Boolean;

    .line 3269
    iput-object v0, p0, Lmai;->d:Ljava/lang/Boolean;

    .line 3270
    iput-object v0, p0, Lmai;->e:Ljava/lang/Boolean;

    .line 3271
    iput-object v0, p0, Lmai;->f:Ljava/lang/Boolean;

    .line 3272
    iput-object v0, p0, Lmai;->g:Ljava/lang/Boolean;

    .line 3273
    iput-object v0, p0, Lmai;->eD:Llyd;

    .line 3274
    const/4 v0, -0x1

    iput v0, p0, Lmai;->eE:I

    .line 2263
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 10344
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10345
    sparse-switch v0, :sswitch_data_0

    .line 10349
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10350
    :sswitch_0
    return-object p0

    .line 10355
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmai;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 10359
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmai;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 10363
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmai;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 10367
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmai;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 10371
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmai;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 10375
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmai;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 10379
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmai;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 10345
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2281
    iget-object v0, p0, Lmai;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2282
    const/4 v0, 0x1

    iget-object v1, p0, Lmai;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2284
    :cond_0
    iget-object v0, p0, Lmai;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2285
    const/4 v0, 0x2

    iget-object v1, p0, Lmai;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2287
    :cond_1
    iget-object v0, p0, Lmai;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 2288
    const/4 v0, 0x3

    iget-object v1, p0, Lmai;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2290
    :cond_2
    iget-object v0, p0, Lmai;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 2291
    const/4 v0, 0x4

    iget-object v1, p0, Lmai;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2293
    :cond_3
    iget-object v0, p0, Lmai;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 2294
    const/4 v0, 0x5

    iget-object v1, p0, Lmai;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2296
    :cond_4
    iget-object v0, p0, Lmai;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 2297
    const/4 v0, 0x6

    iget-object v1, p0, Lmai;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2299
    :cond_5
    iget-object v0, p0, Lmai;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 2300
    const/4 v0, 0x7

    iget-object v1, p0, Lmai;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2302
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2303
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2307
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2308
    iget-object v1, p0, Lmai;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2309
    const/4 v1, 0x1

    iget-object v2, p0, Lmai;->a:Ljava/lang/Boolean;

    .line 2310
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2310
    add-int/2addr v0, v1

    .line 2312
    :cond_0
    iget-object v1, p0, Lmai;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2313
    const/4 v1, 0x2

    iget-object v2, p0, Lmai;->b:Ljava/lang/Boolean;

    .line 2314
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2314
    add-int/2addr v0, v1

    .line 2316
    :cond_1
    iget-object v1, p0, Lmai;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 2317
    const/4 v1, 0x3

    iget-object v2, p0, Lmai;->c:Ljava/lang/Boolean;

    .line 2318
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2318
    add-int/2addr v0, v1

    .line 2320
    :cond_2
    iget-object v1, p0, Lmai;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 2321
    const/4 v1, 0x4

    iget-object v2, p0, Lmai;->d:Ljava/lang/Boolean;

    .line 2322
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2322
    add-int/2addr v0, v1

    .line 2324
    :cond_3
    iget-object v1, p0, Lmai;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 2325
    const/4 v1, 0x5

    iget-object v2, p0, Lmai;->e:Ljava/lang/Boolean;

    .line 2326
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2326
    add-int/2addr v0, v1

    .line 2328
    :cond_4
    iget-object v1, p0, Lmai;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 2329
    const/4 v1, 0x6

    iget-object v2, p0, Lmai;->f:Ljava/lang/Boolean;

    .line 2330
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2330
    add-int/2addr v0, v1

    .line 2332
    :cond_5
    iget-object v1, p0, Lmai;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 2333
    const/4 v1, 0x7

    iget-object v2, p0, Lmai;->g:Ljava/lang/Boolean;

    .line 2334
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 9620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2334
    add-int/2addr v0, v1

    .line 2336
    :cond_6
    return v0
.end method
