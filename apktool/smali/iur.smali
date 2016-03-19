.class public final Liur;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liur;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Llyb;-><init>()V

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Liur;->a:I

    .line 44
    iput-object v1, p0, Liur;->b:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Liur;->eD:Llyd;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Liur;->eE:I

    .line 47
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1081
    sparse-switch v0, :sswitch_data_0

    .line 1085
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    :sswitch_0
    return-object p0

    .line 1091
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liur;->b:Ljava/lang/String;

    goto :goto_0

    .line 1095
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1096
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1099
    :pswitch_0
    iput v0, p0, Liur;->a:I

    goto :goto_0

    .line 1081
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1096
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Liur;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iget-object v1, p0, Liur;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 55
    :cond_0
    iget v0, p0, Liur;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 56
    const/4 v0, 0x2

    iget v1, p0, Liur;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 58
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 59
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 64
    iget-object v1, p0, Liur;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    iget-object v2, p0, Liur;->b:Ljava/lang/String;

    .line 66
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_0
    iget v1, p0, Liur;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 69
    const/4 v1, 0x2

    iget v2, p0, Liur;->a:I

    .line 70
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_1
    return v0
.end method
