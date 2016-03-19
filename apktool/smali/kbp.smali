.class public final Lkbp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbp;",
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

    .line 19320
    invoke-direct {p0}, Llyb;-><init>()V

    .line 20325
    iput-object v0, p0, Lkbp;->a:Ljava/lang/Long;

    .line 20326
    iput-object v0, p0, Lkbp;->eD:Llyd;

    .line 20327
    const/4 v0, -0x1

    iput v0, p0, Lkbp;->eE:I

    .line 19322
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 20355
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 20356
    sparse-switch v0, :sswitch_data_0

    .line 20360
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20361
    :sswitch_0
    return-object p0

    .line 20366
    :sswitch_1
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkbp;->a:Ljava/lang/Long;

    goto :goto_0

    .line 20356
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
    .line 19334
    iget-object v0, p0, Lkbp;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 19335
    const/4 v0, 0x1

    iget-object v1, p0, Lkbp;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 19337
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 19338
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 19342
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 19343
    iget-object v1, p0, Lkbp;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 19344
    const/4 v1, 0x1

    iget-object v2, p0, Lkbp;->a:Ljava/lang/Long;

    .line 19345
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19347
    :cond_0
    return v0
.end method
