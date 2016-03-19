.class public final Lled;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lled;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1294
    iput-object v0, p0, Lled;->a:Ljava/lang/Long;

    .line 1295
    iput-object v0, p0, Lled;->b:Ljava/lang/String;

    .line 1296
    iput-object v0, p0, Lled;->c:Ljava/lang/String;

    .line 1297
    iput-object v0, p0, Lled;->d:Ljava/lang/String;

    .line 1298
    iput-object v0, p0, Lled;->eD:Llyd;

    .line 1299
    const/4 v0, -0x1

    iput v0, p0, Lled;->eE:I

    .line 291
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2348
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2349
    sparse-switch v0, :sswitch_data_0

    .line 2353
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2354
    :sswitch_0
    return-object p0

    .line 2359
    :sswitch_1
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lled;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2363
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lled;->b:Ljava/lang/String;

    goto :goto_0

    .line 2367
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lled;->c:Ljava/lang/String;

    goto :goto_0

    .line 2371
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lled;->d:Ljava/lang/String;

    goto :goto_0

    .line 2349
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lled;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 307
    const/4 v0, 0x1

    iget-object v1, p0, Lled;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 309
    :cond_0
    iget-object v0, p0, Lled;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 310
    const/4 v0, 0x2

    iget-object v1, p0, Lled;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 312
    :cond_1
    iget-object v0, p0, Lled;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 313
    const/4 v0, 0x3

    iget-object v1, p0, Lled;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 315
    :cond_2
    iget-object v0, p0, Lled;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 316
    const/4 v0, 0x4

    iget-object v1, p0, Lled;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 318
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 319
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 323
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 324
    iget-object v1, p0, Lled;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x1

    iget-object v2, p0, Lled;->a:Ljava/lang/Long;

    .line 326
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 326
    add-int/2addr v0, v1

    .line 328
    :cond_0
    iget-object v1, p0, Lled;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 329
    const/4 v1, 0x2

    iget-object v2, p0, Lled;->b:Ljava/lang/String;

    .line 330
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_1
    iget-object v1, p0, Lled;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 333
    const/4 v1, 0x3

    iget-object v2, p0, Lled;->c:Ljava/lang/String;

    .line 334
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_2
    iget-object v1, p0, Lled;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 337
    const/4 v1, 0x4

    iget-object v2, p0, Lled;->d:Ljava/lang/String;

    .line 338
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_3
    return v0
.end method
