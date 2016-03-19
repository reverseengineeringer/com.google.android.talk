.class public final Ljqa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljqa;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1404
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2409
    iput-object v0, p0, Ljqa;->a:Ljava/lang/String;

    .line 2410
    iput-object v0, p0, Ljqa;->b:Ljava/lang/Integer;

    .line 2411
    iput-object v0, p0, Ljqa;->c:Ljava/lang/Integer;

    .line 2412
    iput-object v0, p0, Ljqa;->eD:Llyd;

    .line 2413
    const/4 v0, -0x1

    iput v0, p0, Ljqa;->eE:I

    .line 1406
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2451
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2452
    sparse-switch v0, :sswitch_data_0

    .line 2456
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2457
    :sswitch_0
    return-object p0

    .line 2462
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljqa;->a:Ljava/lang/String;

    goto :goto_0

    .line 2466
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljqa;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2470
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljqa;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2452
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1420
    const/4 v0, 0x1

    iget-object v1, p0, Ljqa;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1421
    iget-object v0, p0, Ljqa;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1422
    const/4 v0, 0x2

    iget-object v1, p0, Ljqa;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1424
    :cond_0
    iget-object v0, p0, Ljqa;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1425
    const/4 v0, 0x3

    iget-object v1, p0, Ljqa;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1427
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1428
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1432
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1433
    const/4 v1, 0x1

    iget-object v2, p0, Ljqa;->a:Ljava/lang/String;

    .line 1434
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1435
    iget-object v1, p0, Ljqa;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1436
    const/4 v1, 0x2

    iget-object v2, p0, Ljqa;->b:Ljava/lang/Integer;

    .line 1437
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1439
    :cond_0
    iget-object v1, p0, Ljqa;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1440
    const/4 v1, 0x3

    iget-object v2, p0, Ljqa;->c:Ljava/lang/Integer;

    .line 1441
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1443
    :cond_1
    return v0
.end method
