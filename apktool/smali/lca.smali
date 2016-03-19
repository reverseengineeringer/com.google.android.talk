.class public final Llca;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llca;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1299
    iput-object v0, p0, Llca;->a:Ljava/lang/Integer;

    .line 1300
    iput-object v0, p0, Llca;->b:Ljava/lang/String;

    .line 1301
    iput-object v0, p0, Llca;->c:Ljava/lang/Long;

    .line 1302
    iput-object v0, p0, Llca;->d:Ljava/lang/Long;

    .line 1303
    iput-object v0, p0, Llca;->eD:Llyd;

    .line 1304
    const/4 v0, -0x1

    iput v0, p0, Llca;->eE:I

    .line 296
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1353
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1354
    sparse-switch v0, :sswitch_data_0

    .line 1358
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1359
    :sswitch_0
    return-object p0

    .line 1364
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1365
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1373
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llca;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1379
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llca;->b:Ljava/lang/String;

    goto :goto_0

    .line 1383
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llca;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1387
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llca;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1354
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 1365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Llca;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 312
    const/4 v0, 0x1

    iget-object v1, p0, Llca;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 314
    :cond_0
    iget-object v0, p0, Llca;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 315
    const/4 v0, 0x2

    iget-object v1, p0, Llca;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 317
    :cond_1
    iget-object v0, p0, Llca;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 318
    const/4 v0, 0x3

    iget-object v1, p0, Llca;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 320
    :cond_2
    iget-object v0, p0, Llca;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 321
    const/4 v0, 0x4

    iget-object v1, p0, Llca;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 323
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 324
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 328
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 329
    iget-object v1, p0, Llca;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 330
    const/4 v1, 0x1

    iget-object v2, p0, Llca;->a:Ljava/lang/Integer;

    .line 331
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_0
    iget-object v1, p0, Llca;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 334
    const/4 v1, 0x2

    iget-object v2, p0, Llca;->b:Ljava/lang/String;

    .line 335
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    :cond_1
    iget-object v1, p0, Llca;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 338
    const/4 v1, 0x3

    iget-object v2, p0, Llca;->c:Ljava/lang/Long;

    .line 339
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_2
    iget-object v1, p0, Llca;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 342
    const/4 v1, 0x4

    iget-object v2, p0, Llca;->d:Ljava/lang/Long;

    .line 343
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_3
    return v0
.end method
