.class public final Lmev;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmev;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1274
    iput-object v0, p0, Lmev;->a:Ljava/lang/Double;

    .line 1275
    iput-object v0, p0, Lmev;->eD:Llyd;

    .line 1276
    const/4 v0, -0x1

    iput v0, p0, Lmev;->eE:I

    .line 271
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2304
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2305
    sparse-switch v0, :sswitch_data_0

    .line 2309
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2310
    :sswitch_0
    return-object p0

    .line 2315
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lmev;->a:Ljava/lang/Double;

    goto :goto_0

    .line 2305
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
    .line 283
    iget-object v0, p0, Lmev;->a:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    iget-object v1, p0, Lmev;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 286
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 287
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 292
    iget-object v1, p0, Lmev;->a:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 293
    const/4 v1, 0x1

    iget-object v2, p0, Lmev;->a:Ljava/lang/Double;

    .line 294
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 294
    add-int/2addr v0, v1

    .line 296
    :cond_0
    return v0
.end method
