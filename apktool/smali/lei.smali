.class public final Llei;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llei;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Llen;

.field public c:Lldo;

.field public d:Llda;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Llyb;-><init>()V

    .line 64
    const/high16 v0, -0x80000000

    iput v0, p0, Llei;->a:I

    .line 65
    iput-object v1, p0, Llei;->b:Llen;

    .line 66
    iput-object v1, p0, Llei;->c:Lldo;

    .line 67
    iput-object v1, p0, Llei;->d:Llda;

    .line 68
    iput-object v1, p0, Llei;->e:Ljava/lang/Boolean;

    .line 69
    iput-object v1, p0, Llei;->eD:Llyd;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Llei;->eE:I

    .line 71
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2125
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2126
    sparse-switch v0, :sswitch_data_0

    .line 2130
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2131
    :sswitch_0
    return-object p0

    .line 2136
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2137
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2157
    :pswitch_0
    iput v0, p0, Llei;->a:I

    goto :goto_0

    .line 2163
    :sswitch_2
    iget-object v0, p0, Llei;->b:Llen;

    if-nez v0, :cond_1

    .line 2164
    new-instance v0, Llen;

    invoke-direct {v0}, Llen;-><init>()V

    iput-object v0, p0, Llei;->b:Llen;

    .line 2166
    :cond_1
    iget-object v0, p0, Llei;->b:Llen;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2170
    :sswitch_3
    iget-object v0, p0, Llei;->c:Lldo;

    if-nez v0, :cond_2

    .line 2171
    new-instance v0, Lldo;

    invoke-direct {v0}, Lldo;-><init>()V

    iput-object v0, p0, Llei;->c:Lldo;

    .line 2173
    :cond_2
    iget-object v0, p0, Llei;->c:Lldo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2177
    :sswitch_4
    iget-object v0, p0, Llei;->d:Llda;

    if-nez v0, :cond_3

    .line 2178
    new-instance v0, Llda;

    invoke-direct {v0}, Llda;-><init>()V

    iput-object v0, p0, Llei;->d:Llda;

    .line 2180
    :cond_3
    iget-object v0, p0, Llei;->d:Llda;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2184
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llei;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 2126
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 2137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 76
    iget v0, p0, Llei;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 77
    const/4 v0, 0x1

    iget v1, p0, Llei;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 79
    :cond_0
    iget-object v0, p0, Llei;->b:Llen;

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x2

    iget-object v1, p0, Llei;->b:Llen;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 82
    :cond_1
    iget-object v0, p0, Llei;->c:Lldo;

    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x3

    iget-object v1, p0, Llei;->c:Lldo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 85
    :cond_2
    iget-object v0, p0, Llei;->d:Llda;

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x4

    iget-object v1, p0, Llei;->d:Llda;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 88
    :cond_3
    iget-object v0, p0, Llei;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 89
    const/4 v0, 0x5

    iget-object v1, p0, Llei;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 91
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 92
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 97
    iget v1, p0, Llei;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 98
    const/4 v1, 0x1

    iget v2, p0, Llei;->a:I

    .line 99
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_0
    iget-object v1, p0, Llei;->b:Llen;

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x2

    iget-object v2, p0, Llei;->b:Llen;

    .line 103
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_1
    iget-object v1, p0, Llei;->c:Lldo;

    if-eqz v1, :cond_2

    .line 106
    const/4 v1, 0x3

    iget-object v2, p0, Llei;->c:Lldo;

    .line 107
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_2
    iget-object v1, p0, Llei;->d:Llda;

    if-eqz v1, :cond_3

    .line 110
    const/4 v1, 0x4

    iget-object v2, p0, Llei;->d:Llda;

    .line 111
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_3
    iget-object v1, p0, Llei;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 114
    const/4 v1, 0x5

    iget-object v2, p0, Llei;->e:Ljava/lang/Boolean;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 115
    add-int/2addr v0, v1

    .line 117
    :cond_4
    return v0
.end method
