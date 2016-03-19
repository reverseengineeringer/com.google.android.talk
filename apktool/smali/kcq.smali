.class public final Lkcq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14997
    invoke-direct {p0}, Llyb;-><init>()V

    .line 16002
    iput-object v0, p0, Lkcq;->a:Ljava/lang/Integer;

    .line 16003
    iput-object v0, p0, Lkcq;->b:Ljava/lang/Integer;

    .line 16004
    iput-object v0, p0, Lkcq;->c:Ljava/lang/Integer;

    .line 16005
    iput-object v0, p0, Lkcq;->d:Ljava/lang/Integer;

    .line 16006
    iput-object v0, p0, Lkcq;->eD:Llyd;

    .line 16007
    const/4 v0, -0x1

    iput v0, p0, Lkcq;->eE:I

    .line 14999
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 16056
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 16057
    sparse-switch v0, :sswitch_data_0

    .line 16061
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16062
    :sswitch_0
    return-object p0

    .line 16067
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 16068
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 16071
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcq;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 16077
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 16078
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 16081
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcq;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 16087
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 16088
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 16091
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcq;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 16097
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 16098
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 16101
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcq;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 16057
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 16068
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 16078
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 16088
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 16098
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 15014
    iget-object v0, p0, Lkcq;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 15015
    const/4 v0, 0x1

    iget-object v1, p0, Lkcq;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 15017
    :cond_0
    iget-object v0, p0, Lkcq;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 15018
    const/4 v0, 0x2

    iget-object v1, p0, Lkcq;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 15020
    :cond_1
    iget-object v0, p0, Lkcq;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 15021
    const/4 v0, 0x3

    iget-object v1, p0, Lkcq;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 15023
    :cond_2
    iget-object v0, p0, Lkcq;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 15024
    const/4 v0, 0x4

    iget-object v1, p0, Lkcq;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 15026
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 15027
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 15031
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 15032
    iget-object v1, p0, Lkcq;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 15033
    const/4 v1, 0x1

    iget-object v2, p0, Lkcq;->a:Ljava/lang/Integer;

    .line 15034
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15036
    :cond_0
    iget-object v1, p0, Lkcq;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 15037
    const/4 v1, 0x2

    iget-object v2, p0, Lkcq;->b:Ljava/lang/Integer;

    .line 15038
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15040
    :cond_1
    iget-object v1, p0, Lkcq;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 15041
    const/4 v1, 0x3

    iget-object v2, p0, Lkcq;->c:Ljava/lang/Integer;

    .line 15042
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15044
    :cond_2
    iget-object v1, p0, Lkcq;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 15045
    const/4 v1, 0x4

    iget-object v2, p0, Lkcq;->d:Ljava/lang/Integer;

    .line 15046
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15048
    :cond_3
    return v0
.end method
