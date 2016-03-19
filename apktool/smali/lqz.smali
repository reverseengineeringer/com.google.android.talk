.class public final Llqz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Llfi;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 64
    invoke-direct {p0}, Llyb;-><init>()V

    .line 65
    iput v0, p0, Llqz;->a:I

    .line 66
    iput-object v1, p0, Llqz;->b:Llfi;

    .line 67
    iput v0, p0, Llqz;->c:I

    .line 68
    iput-object v1, p0, Llqz;->eD:Llyd;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Llqz;->eE:I

    .line 70
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1111
    sparse-switch v0, :sswitch_data_0

    .line 1115
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    :sswitch_0
    return-object p0

    .line 1121
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1122
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1142
    :pswitch_0
    iput v0, p0, Llqz;->a:I

    goto :goto_0

    .line 1148
    :sswitch_2
    iget-object v0, p0, Llqz;->b:Llfi;

    if-nez v0, :cond_1

    .line 1149
    new-instance v0, Llfi;

    invoke-direct {v0}, Llfi;-><init>()V

    iput-object v0, p0, Llqz;->b:Llfi;

    .line 1151
    :cond_1
    iget-object v0, p0, Llqz;->b:Llfi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1155
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1156
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1160
    :pswitch_1
    iput v0, p0, Llqz;->c:I

    goto :goto_0

    .line 1111
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch

    .line 1122
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

    .line 1156
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 75
    iget v0, p0, Llqz;->a:I

    if-eq v0, v2, :cond_0

    .line 76
    const/4 v0, 0x1

    iget v1, p0, Llqz;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 78
    :cond_0
    iget-object v0, p0, Llqz;->b:Llfi;

    if-eqz v0, :cond_1

    .line 79
    const/4 v0, 0x2

    iget-object v1, p0, Llqz;->b:Llfi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 81
    :cond_1
    iget v0, p0, Llqz;->c:I

    if-eq v0, v2, :cond_2

    .line 82
    const/4 v0, 0x4

    iget v1, p0, Llqz;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 84
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 85
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 89
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 90
    iget v1, p0, Llqz;->a:I

    if-eq v1, v3, :cond_0

    .line 91
    const/4 v1, 0x1

    iget v2, p0, Llqz;->a:I

    .line 92
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_0
    iget-object v1, p0, Llqz;->b:Llfi;

    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x2

    iget-object v2, p0, Llqz;->b:Llfi;

    .line 96
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_1
    iget v1, p0, Llqz;->c:I

    if-eq v1, v3, :cond_2

    .line 99
    const/4 v1, 0x4

    iget v2, p0, Llqz;->c:I

    .line 100
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_2
    return v0
.end method
