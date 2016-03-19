.class public final Ljfw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfw;",
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

    .line 4418
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4419
    iput-object v0, p0, Ljfw;->a:Ljava/lang/Double;

    .line 4420
    iput-object v0, p0, Ljfw;->b:Ljava/lang/Double;

    .line 4421
    iput-object v0, p0, Ljfw;->c:Ljava/lang/Double;

    .line 4422
    iput-object v0, p0, Ljfw;->d:Ljava/lang/Double;

    .line 4423
    iput-object v0, p0, Ljfw;->eD:Llyd;

    .line 4424
    const/4 v0, -0x1

    iput v0, p0, Ljfw;->eE:I

    .line 4425
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 8456
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8457
    sparse-switch v0, :sswitch_data_0

    .line 8461
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8462
    :sswitch_0
    return-object p0

    .line 8467
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljfw;->a:Ljava/lang/Double;

    goto :goto_0

    .line 8471
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljfw;->b:Ljava/lang/Double;

    goto :goto_0

    .line 8475
    :sswitch_3
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljfw;->c:Ljava/lang/Double;

    goto :goto_0

    .line 8479
    :sswitch_4
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Ljfw;->d:Ljava/lang/Double;

    goto :goto_0

    .line 8457
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
    .line 4430
    const/4 v0, 0x1

    iget-object v1, p0, Ljfw;->a:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 4431
    const/4 v0, 0x2

    iget-object v1, p0, Ljfw;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 4432
    const/4 v0, 0x3

    iget-object v1, p0, Ljfw;->c:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 4433
    const/4 v0, 0x4

    iget-object v1, p0, Ljfw;->d:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 4434
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4435
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4439
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4440
    const/4 v1, 0x1

    iget-object v2, p0, Ljfw;->a:Ljava/lang/Double;

    .line 4441
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 4561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 4441
    add-int/2addr v0, v1

    .line 4442
    const/4 v1, 0x2

    iget-object v2, p0, Ljfw;->b:Ljava/lang/Double;

    .line 4443
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 5561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 4443
    add-int/2addr v0, v1

    .line 4444
    const/4 v1, 0x3

    iget-object v2, p0, Ljfw;->c:Ljava/lang/Double;

    .line 4445
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 6561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 4445
    add-int/2addr v0, v1

    .line 4446
    const/4 v1, 0x4

    iget-object v2, p0, Ljfw;->d:Ljava/lang/Double;

    .line 4447
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 7561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 4447
    add-int/2addr v0, v1

    .line 4448
    return v0
.end method
