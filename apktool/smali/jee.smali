.class public final Ljee;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljee;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4277
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5282
    iput-object v0, p0, Ljee;->a:Ljava/lang/Integer;

    .line 5283
    iput-object v0, p0, Ljee;->b:Ljava/lang/Integer;

    .line 5284
    iput-object v0, p0, Ljee;->eD:Llyd;

    .line 5285
    const/4 v0, -0x1

    iput v0, p0, Ljee;->eE:I

    .line 4279
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 7312
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7313
    sparse-switch v0, :sswitch_data_0

    .line 7317
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7318
    :sswitch_0
    return-object p0

    .line 7323
    :sswitch_1
    invoke-virtual {p1}, Llxy;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljee;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 7327
    :sswitch_2
    invoke-virtual {p1}, Llxy;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljee;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 7313
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 4292
    const/4 v0, 0x1

    iget-object v1, p0, Ljee;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->b(II)V

    .line 4293
    const/4 v0, 0x2

    iget-object v1, p0, Ljee;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->b(II)V

    .line 4294
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4295
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4299
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4300
    const/4 v1, 0x1

    iget-object v2, p0, Ljee;->a:Ljava/lang/Integer;

    .line 4301
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 5611
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4301
    add-int/2addr v0, v1

    .line 4302
    const/4 v1, 0x2

    iget-object v2, p0, Ljee;->b:Ljava/lang/Integer;

    .line 4303
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 6611
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4303
    add-int/2addr v0, v1

    .line 4304
    return v0
.end method
