.class public final Ljzt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzt;",
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

    .line 3536
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4541
    iput-object v0, p0, Ljzt;->a:Ljava/lang/Long;

    .line 4542
    iput-object v0, p0, Ljzt;->eD:Llyd;

    .line 4543
    const/4 v0, -0x1

    iput v0, p0, Ljzt;->eE:I

    .line 3538
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 4571
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4572
    sparse-switch v0, :sswitch_data_0

    .line 4576
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4577
    :sswitch_0
    return-object p0

    .line 4582
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljzt;->a:Ljava/lang/Long;

    goto :goto_0

    .line 4572
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 3550
    iget-object v0, p0, Ljzt;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 3551
    const/4 v0, 0x1

    iget-object v1, p0, Ljzt;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 3553
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3554
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 3558
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3559
    iget-object v1, p0, Ljzt;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 3560
    const/4 v1, 0x1

    iget-object v2, p0, Ljzt;->a:Ljava/lang/Long;

    .line 3561
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3563
    :cond_0
    return v0
.end method
