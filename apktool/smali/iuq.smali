.class public final Liuq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liuq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Liur;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Llyb;-><init>()V

    .line 46
    iput-object v1, p0, Liuq;->a:Ljava/lang/String;

    .line 47
    const/high16 v0, -0x80000000

    iput v0, p0, Liuq;->b:I

    .line 48
    iput-object v1, p0, Liuq;->c:Liur;

    .line 49
    iput-object v1, p0, Liuq;->d:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Liuq;->eD:Llyd;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Liuq;->eE:I

    .line 52
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1099
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1100
    sparse-switch v0, :sswitch_data_0

    .line 1104
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    :sswitch_0
    return-object p0

    .line 1110
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liuq;->a:Ljava/lang/String;

    goto :goto_0

    .line 1114
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1115
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1120
    :pswitch_0
    iput v0, p0, Liuq;->b:I

    goto :goto_0

    .line 1126
    :sswitch_3
    iget-object v0, p0, Liuq;->c:Liur;

    if-nez v0, :cond_1

    .line 1127
    new-instance v0, Liur;

    invoke-direct {v0}, Liur;-><init>()V

    iput-object v0, p0, Liuq;->c:Liur;

    .line 1129
    :cond_1
    iget-object v0, p0, Liuq;->c:Liur;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1133
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liuq;->d:Ljava/lang/String;

    goto :goto_0

    .line 1100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 1115
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
    .line 57
    iget-object v0, p0, Liuq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iget-object v1, p0, Liuq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 60
    :cond_0
    iget v0, p0, Liuq;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 61
    const/4 v0, 0x2

    iget v1, p0, Liuq;->b:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 63
    :cond_1
    iget-object v0, p0, Liuq;->c:Liur;

    if-eqz v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Liuq;->c:Liur;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 66
    :cond_2
    iget-object v0, p0, Liuq;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 67
    const/4 v0, 0x4

    iget-object v1, p0, Liuq;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 69
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 70
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 74
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 75
    iget-object v1, p0, Liuq;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x1

    iget-object v2, p0, Liuq;->a:Ljava/lang/String;

    .line 77
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_0
    iget v1, p0, Liuq;->b:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 80
    const/4 v1, 0x2

    iget v2, p0, Liuq;->b:I

    .line 81
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_1
    iget-object v1, p0, Liuq;->c:Liur;

    if-eqz v1, :cond_2

    .line 84
    const/4 v1, 0x3

    iget-object v2, p0, Liuq;->c:Liur;

    .line 85
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_2
    iget-object v1, p0, Liuq;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 88
    const/4 v1, 0x4

    iget-object v2, p0, Liuq;->d:Ljava/lang/String;

    .line 89
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_3
    return v0
.end method
