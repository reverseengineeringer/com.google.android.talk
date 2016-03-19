.class public final Lldo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldo;",
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

    .line 275
    invoke-direct {p0}, Llyb;-><init>()V

    .line 276
    iput-object v0, p0, Lldo;->a:Ljava/lang/Long;

    .line 277
    iput-object v0, p0, Lldo;->b:Ljava/lang/String;

    .line 278
    iput-object v0, p0, Lldo;->c:Ljava/lang/String;

    .line 279
    iput-object v0, p0, Lldo;->d:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lldo;->eD:Llyd;

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lldo;->eE:I

    .line 282
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

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
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lldo;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2344
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lldo;->b:Ljava/lang/String;

    goto :goto_0

    .line 2348
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lldo;->c:Ljava/lang/String;

    goto :goto_0

    .line 2352
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lldo;->d:Ljava/lang/String;

    goto :goto_0

    .line 2330
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
    .line 287
    iget-object v0, p0, Lldo;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    iget-object v1, p0, Lldo;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 290
    :cond_0
    iget-object v0, p0, Lldo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x2

    iget-object v1, p0, Lldo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 293
    :cond_1
    iget-object v0, p0, Lldo;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 294
    const/4 v0, 0x3

    iget-object v1, p0, Lldo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 296
    :cond_2
    iget-object v0, p0, Lldo;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 297
    const/4 v0, 0x4

    iget-object v1, p0, Lldo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 299
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 300
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 304
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 305
    iget-object v1, p0, Lldo;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 306
    const/4 v1, 0x1

    iget-object v2, p0, Lldo;->a:Ljava/lang/Long;

    .line 307
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 307
    add-int/2addr v0, v1

    .line 309
    :cond_0
    iget-object v1, p0, Lldo;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 310
    const/4 v1, 0x2

    iget-object v2, p0, Lldo;->b:Ljava/lang/String;

    .line 311
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_1
    iget-object v1, p0, Lldo;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 314
    const/4 v1, 0x3

    iget-object v2, p0, Lldo;->c:Ljava/lang/String;

    .line 315
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_2
    iget-object v1, p0, Lldo;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 318
    const/4 v1, 0x4

    iget-object v2, p0, Lldo;->d:Ljava/lang/String;

    .line 319
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_3
    return v0
.end method
