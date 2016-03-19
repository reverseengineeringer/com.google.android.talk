.class public final Llqu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Llyb;-><init>()V

    .line 67
    iput-object v1, p0, Llqu;->a:Ljava/lang/Boolean;

    .line 68
    const/high16 v0, -0x80000000

    iput v0, p0, Llqu;->b:I

    .line 69
    iput-object v1, p0, Llqu;->eD:Llyd;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Llqu;->eE:I

    .line 71
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2104
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2105
    sparse-switch v0, :sswitch_data_0

    .line 2109
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2110
    :sswitch_0
    return-object p0

    .line 2115
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llqu;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2119
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2120
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2125
    :pswitch_0
    iput v0, p0, Llqu;->b:I

    goto :goto_0

    .line 2105
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 2120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Llqu;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iget-object v1, p0, Llqu;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 79
    :cond_0
    iget v0, p0, Llqu;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 80
    const/4 v0, 0x2

    iget v1, p0, Llqu;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 82
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 83
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 88
    iget-object v1, p0, Llqu;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    iget-object v2, p0, Llqu;->a:Ljava/lang/Boolean;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 90
    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget v1, p0, Llqu;->b:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 93
    const/4 v1, 0x2

    iget v2, p0, Llqu;->b:I

    .line 94
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    return v0
.end method
