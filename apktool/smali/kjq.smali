.class public final Lkjq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkjq;",
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

    .line 1413
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2418
    iput-object v0, p0, Lkjq;->a:Ljava/lang/String;

    .line 2419
    iput-object v0, p0, Lkjq;->b:Ljava/lang/String;

    .line 2420
    iput-object v0, p0, Lkjq;->eD:Llyd;

    .line 2421
    const/4 v0, -0x1

    iput v0, p0, Lkjq;->eE:I

    .line 1415
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2456
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2457
    sparse-switch v0, :sswitch_data_0

    .line 2461
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2462
    :sswitch_0
    return-object p0

    .line 2467
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjq;->a:Ljava/lang/String;

    goto :goto_0

    .line 2471
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkjq;->b:Ljava/lang/String;

    goto :goto_0

    .line 2457
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
    .line 1428
    iget-object v0, p0, Lkjq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1429
    const/4 v0, 0x1

    iget-object v1, p0, Lkjq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1431
    :cond_0
    iget-object v0, p0, Lkjq;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1432
    const/4 v0, 0x2

    iget-object v1, p0, Lkjq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1434
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1435
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1439
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1440
    iget-object v1, p0, Lkjq;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1441
    const/4 v1, 0x1

    iget-object v2, p0, Lkjq;->a:Ljava/lang/String;

    .line 1442
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1444
    :cond_0
    iget-object v1, p0, Lkjq;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1445
    const/4 v1, 0x2

    iget-object v2, p0, Lkjq;->b:Ljava/lang/String;

    .line 1446
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1448
    :cond_1
    return v0
.end method
