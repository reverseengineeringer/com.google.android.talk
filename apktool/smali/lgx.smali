.class public final Llgx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Llyb;-><init>()V

    .line 46
    const/high16 v0, -0x80000000

    iput v0, p0, Llgx;->a:I

    .line 47
    iput-object v1, p0, Llgx;->b:Ljava/lang/Boolean;

    .line 48
    iput-object v1, p0, Llgx;->c:Ljava/lang/Boolean;

    .line 49
    iput-object v1, p0, Llgx;->eD:Llyd;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Llgx;->eE:I

    .line 51
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3091
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3092
    sparse-switch v0, :sswitch_data_0

    .line 3096
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3097
    :sswitch_0
    return-object p0

    .line 3102
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3103
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3111
    :pswitch_0
    iput v0, p0, Llgx;->a:I

    goto :goto_0

    .line 3117
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llgx;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 3121
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llgx;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 3092
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 3103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
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
    .line 56
    iget v0, p0, Llgx;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 57
    const/4 v0, 0x1

    iget v1, p0, Llgx;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 59
    :cond_0
    iget-object v0, p0, Llgx;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x2

    iget-object v1, p0, Llgx;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 62
    :cond_1
    iget-object v0, p0, Llgx;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 63
    const/4 v0, 0x3

    iget-object v1, p0, Llgx;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 65
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 66
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 71
    iget v1, p0, Llgx;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 72
    const/4 v1, 0x1

    iget v2, p0, Llgx;->a:I

    .line 73
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_0
    iget-object v1, p0, Llgx;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 76
    const/4 v1, 0x2

    iget-object v2, p0, Llgx;->b:Ljava/lang/Boolean;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 77
    add-int/2addr v0, v1

    .line 79
    :cond_1
    iget-object v1, p0, Llgx;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 80
    const/4 v1, 0x3

    iget-object v2, p0, Llgx;->c:Ljava/lang/Boolean;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 81
    add-int/2addr v0, v1

    .line 83
    :cond_2
    return v0
.end method
