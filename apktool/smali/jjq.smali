.class public final Ljjq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11058
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12063
    iput-object v0, p0, Ljjq;->a:Ljava/lang/Integer;

    .line 12064
    iput-object v0, p0, Ljjq;->eD:Llyd;

    .line 12065
    const/4 v0, -0x1

    iput v0, p0, Ljjq;->eE:I

    .line 11060
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 12093
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12094
    sparse-switch v0, :sswitch_data_0

    .line 12098
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12099
    :sswitch_0
    return-object p0

    .line 12104
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 12105
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12111
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjq;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 12094
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 12105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 11072
    iget-object v0, p0, Ljjq;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 11073
    const/4 v0, 0x1

    iget-object v1, p0, Ljjq;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 11075
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11076
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 11080
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11081
    iget-object v1, p0, Ljjq;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 11082
    const/4 v1, 0x1

    iget-object v2, p0, Ljjq;->a:Ljava/lang/Integer;

    .line 11083
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11085
    :cond_0
    return v0
.end method
