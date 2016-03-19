.class public final Ljoq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljoq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1283
    iput-object v0, p0, Ljoq;->a:Ljava/lang/String;

    .line 1284
    iput-object v0, p0, Ljoq;->b:Ljava/lang/Boolean;

    .line 1285
    iput-object v0, p0, Ljoq;->c:Ljava/lang/String;

    .line 1286
    iput-object v0, p0, Ljoq;->eD:Llyd;

    .line 1287
    const/4 v0, -0x1

    iput v0, p0, Ljoq;->eE:I

    .line 280
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2329
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2330
    sparse-switch v0, :sswitch_data_0

    .line 2334
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2335
    :sswitch_0
    return-object p0

    .line 2340
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljoq;->a:Ljava/lang/String;

    goto :goto_0

    .line 2344
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljoq;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 2348
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljoq;->c:Ljava/lang/String;

    goto :goto_0

    .line 2330
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Ljoq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    iget-object v1, p0, Ljoq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 297
    :cond_0
    iget-object v0, p0, Ljoq;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 298
    const/4 v0, 0x2

    iget-object v1, p0, Ljoq;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 300
    :cond_1
    iget-object v0, p0, Ljoq;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 301
    const/4 v0, 0x3

    iget-object v1, p0, Ljoq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 303
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 304
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 309
    iget-object v1, p0, Ljoq;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 310
    const/4 v1, 0x1

    iget-object v2, p0, Ljoq;->a:Ljava/lang/String;

    .line 311
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_0
    iget-object v1, p0, Ljoq;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 314
    const/4 v1, 0x2

    iget-object v2, p0, Ljoq;->b:Ljava/lang/Boolean;

    .line 315
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 315
    add-int/2addr v0, v1

    .line 317
    :cond_1
    iget-object v1, p0, Ljoq;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 318
    const/4 v1, 0x3

    iget-object v2, p0, Ljoq;->c:Ljava/lang/String;

    .line 319
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_2
    return v0
.end method
