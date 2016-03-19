.class public final Ljfu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfu;",
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

    .line 4220
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4221
    iput-object v0, p0, Ljfu;->a:Ljava/lang/Integer;

    .line 4222
    iput-object v0, p0, Ljfu;->b:Ljava/lang/Integer;

    .line 4223
    iput-object v0, p0, Ljfu;->eD:Llyd;

    .line 4224
    const/4 v0, -0x1

    iput v0, p0, Ljfu;->eE:I

    .line 4225
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6250
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6251
    sparse-switch v0, :sswitch_data_0

    .line 6255
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6256
    :sswitch_0
    return-object p0

    .line 6261
    :sswitch_1
    invoke-virtual {p1}, Llxy;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljfu;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 6265
    :sswitch_2
    invoke-virtual {p1}, Llxy;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljfu;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 6251
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
    .line 4230
    const/4 v0, 0x1

    iget-object v1, p0, Ljfu;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->b(II)V

    .line 4231
    const/4 v0, 0x2

    iget-object v1, p0, Ljfu;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->b(II)V

    .line 4232
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4233
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4237
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4238
    const/4 v1, 0x1

    iget-object v2, p0, Ljfu;->a:Ljava/lang/Integer;

    .line 4239
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 4611
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4239
    add-int/2addr v0, v1

    .line 4240
    const/4 v1, 0x2

    iget-object v2, p0, Ljfu;->b:Ljava/lang/Integer;

    .line 4241
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 5611
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    .line 4241
    add-int/2addr v0, v1

    .line 4242
    return v0
.end method
