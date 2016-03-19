.class public final Ljeg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljeg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Double;

.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/Double;

.field public d:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4485
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5490
    iput-object v0, p0, Ljeg;->a:Ljava/lang/Double;

    .line 5491
    iput-object v0, p0, Ljeg;->b:Ljava/lang/Double;

    .line 5492
    iput-object v0, p0, Ljeg;->c:Ljava/lang/Double;

    .line 5493
    iput-object v0, p0, Ljeg;->d:Ljava/lang/Double;

    .line 5494
    iput-object v0, p0, Ljeg;->eD:Llyd;

    .line 5495
    const/4 v0, -0x1

    iput v0, p0, Ljeg;->eE:I

    .line 4487
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 9528
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9529
    sparse-switch v0, :sswitch_data_0

    .line 9533
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9534
    :sswitch_0
    return-object p0

    .line 9539
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljeg;->a:Ljava/lang/Double;

    goto :goto_0

    .line 9543
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljeg;->b:Ljava/lang/Double;

    goto :goto_0

    .line 9547
    :sswitch_3
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljeg;->c:Ljava/lang/Double;

    goto :goto_0

    .line 9551
    :sswitch_4
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljeg;->d:Ljava/lang/Double;

    goto :goto_0

    .line 9529
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x19 -> :sswitch_3
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 4502
    const/4 v0, 0x1

    iget-object v1, p0, Ljeg;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 4503
    const/4 v0, 0x2

    iget-object v1, p0, Ljeg;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 4504
    const/4 v0, 0x3

    iget-object v1, p0, Ljeg;->c:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 4505
    const/4 v0, 0x4

    iget-object v1, p0, Ljeg;->d:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 4506
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4507
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4511
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4512
    const/4 v1, 0x1

    iget-object v2, p0, Ljeg;->a:Ljava/lang/Double;

    .line 4513
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 5561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 4513
    add-int/2addr v0, v1

    .line 4514
    const/4 v1, 0x2

    iget-object v2, p0, Ljeg;->b:Ljava/lang/Double;

    .line 4515
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 6561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 4515
    add-int/2addr v0, v1

    .line 4516
    const/4 v1, 0x3

    iget-object v2, p0, Ljeg;->c:Ljava/lang/Double;

    .line 4517
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 7561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 4517
    add-int/2addr v0, v1

    .line 4518
    const/4 v1, 0x4

    iget-object v2, p0, Ljeg;->d:Ljava/lang/Double;

    .line 4519
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 8561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 4519
    add-int/2addr v0, v1

    .line 4520
    return v0
.end method
