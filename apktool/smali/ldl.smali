.class public final Lldl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-direct {p0}, Llyb;-><init>()V

    .line 394
    iput-object v0, p0, Lldl;->a:Ljava/lang/Long;

    .line 395
    iput-object v0, p0, Lldl;->eD:Llyd;

    .line 396
    const/4 v0, -0x1

    iput v0, p0, Lldl;->eE:I

    .line 397
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2423
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2424
    sparse-switch v0, :sswitch_data_0

    .line 2428
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2429
    :sswitch_0
    return-object p0

    .line 2434
    :sswitch_1
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lldl;->a:Ljava/lang/Long;

    goto :goto_0

    .line 2424
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Lldl;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    iget-object v1, p0, Lldl;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 405
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 406
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 410
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 411
    iget-object v1, p0, Lldl;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 412
    const/4 v1, 0x1

    iget-object v2, p0, Lldl;->a:Ljava/lang/Long;

    .line 413
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 413
    add-int/2addr v0, v1

    .line 415
    :cond_0
    return v0
.end method
