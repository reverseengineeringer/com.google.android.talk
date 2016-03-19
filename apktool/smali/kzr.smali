.class public final Lkzr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkzr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1331
    iput-object v0, p0, Lkzr;->a:Ljava/lang/Long;

    .line 1332
    iput-object v0, p0, Lkzr;->b:Ljava/lang/Long;

    .line 1333
    iput-object v0, p0, Lkzr;->c:Ljava/lang/Long;

    .line 1334
    iput-object v0, p0, Lkzr;->eD:Llyd;

    .line 1335
    const/4 v0, -0x1

    iput v0, p0, Lkzr;->eE:I

    .line 328
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1377
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1378
    sparse-switch v0, :sswitch_data_0

    .line 1382
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    :sswitch_0
    return-object p0

    .line 1388
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkzr;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1392
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkzr;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1396
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkzr;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1378
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lkzr;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    iget-object v1, p0, Lkzr;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 345
    :cond_0
    iget-object v0, p0, Lkzr;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 346
    const/4 v0, 0x2

    iget-object v1, p0, Lkzr;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 348
    :cond_1
    iget-object v0, p0, Lkzr;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 349
    const/4 v0, 0x3

    iget-object v1, p0, Lkzr;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 351
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 352
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 356
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 357
    iget-object v1, p0, Lkzr;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x1

    iget-object v2, p0, Lkzr;->a:Ljava/lang/Long;

    .line 359
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_0
    iget-object v1, p0, Lkzr;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 362
    const/4 v1, 0x2

    iget-object v2, p0, Lkzr;->b:Ljava/lang/Long;

    .line 363
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_1
    iget-object v1, p0, Lkzr;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 366
    const/4 v1, 0x3

    iget-object v2, p0, Lkzr;->c:Ljava/lang/Long;

    .line 367
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_2
    return v0
.end method
