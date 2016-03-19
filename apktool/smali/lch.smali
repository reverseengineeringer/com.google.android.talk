.class public final Llch;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llch;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1325
    iput-object v0, p0, Llch;->a:Ljava/lang/String;

    .line 1326
    iput-object v0, p0, Llch;->b:Ljava/lang/String;

    .line 1327
    iput-object v0, p0, Llch;->eD:Llyd;

    .line 1328
    const/4 v0, -0x1

    iput v0, p0, Llch;->eE:I

    .line 322
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1363
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1364
    sparse-switch v0, :sswitch_data_0

    .line 1368
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    :sswitch_0
    return-object p0

    .line 1374
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llch;->a:Ljava/lang/String;

    goto :goto_0

    .line 1378
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llch;->b:Ljava/lang/String;

    goto :goto_0

    .line 1364
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Llch;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x1

    iget-object v1, p0, Llch;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 338
    :cond_0
    iget-object v0, p0, Llch;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 339
    const/4 v0, 0x2

    iget-object v1, p0, Llch;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 341
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 342
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 347
    iget-object v1, p0, Llch;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 348
    const/4 v1, 0x1

    iget-object v2, p0, Llch;->a:Ljava/lang/String;

    .line 349
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_0
    iget-object v1, p0, Llch;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 352
    const/4 v1, 0x2

    iget-object v2, p0, Llch;->b:Ljava/lang/String;

    .line 353
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_1
    return v0
.end method
