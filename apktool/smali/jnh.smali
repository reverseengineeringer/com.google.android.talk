.class public final Ljnh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Llyb;-><init>()V

    .line 41
    const/high16 v0, -0x80000000

    iput v0, p0, Ljnh;->a:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Ljnh;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Ljnh;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1066
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1067
    sparse-switch v0, :sswitch_data_0

    .line 1071
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    :sswitch_0
    return-object p0

    .line 1077
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1078
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1084
    :pswitch_0
    iput v0, p0, Ljnh;->a:I

    goto :goto_0

    .line 1067
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1078
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
    .line 49
    const/4 v0, 0x1

    iget v1, p0, Ljnh;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 50
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 51
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 56
    const/4 v1, 0x1

    iget v2, p0, Ljnh;->a:I

    .line 57
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    return v0
.end method
