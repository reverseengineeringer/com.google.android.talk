.class public final Ljzc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljwy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9947
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10952
    iput-object v0, p0, Ljzc;->a:Ljava/lang/String;

    .line 10953
    iput-object v0, p0, Ljzc;->b:Ljava/lang/String;

    .line 10954
    iput-object v0, p0, Ljzc;->c:Ljava/lang/Integer;

    .line 10955
    iput-object v0, p0, Ljzc;->d:Ljwy;

    .line 10956
    iput-object v0, p0, Ljzc;->eD:Llyd;

    .line 10957
    const/4 v0, -0x1

    iput v0, p0, Ljzc;->eE:I

    .line 9949
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11006
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11007
    sparse-switch v0, :sswitch_data_0

    .line 11011
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11012
    :sswitch_0
    return-object p0

    .line 11017
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzc;->a:Ljava/lang/String;

    goto :goto_0

    .line 11021
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzc;->b:Ljava/lang/String;

    goto :goto_0

    .line 11025
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11026
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11030
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzc;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 11036
    :sswitch_4
    iget-object v0, p0, Ljzc;->d:Ljwy;

    if-nez v0, :cond_1

    .line 11037
    new-instance v0, Ljwy;

    invoke-direct {v0}, Ljwy;-><init>()V

    iput-object v0, p0, Ljzc;->d:Ljwy;

    .line 11039
    :cond_1
    iget-object v0, p0, Ljzc;->d:Ljwy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11007
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 11026
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9964
    iget-object v0, p0, Ljzc;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9965
    const/4 v0, 0x1

    iget-object v1, p0, Ljzc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9967
    :cond_0
    iget-object v0, p0, Ljzc;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9968
    const/4 v0, 0x2

    iget-object v1, p0, Ljzc;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9970
    :cond_1
    iget-object v0, p0, Ljzc;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 9971
    const/4 v0, 0x3

    iget-object v1, p0, Ljzc;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9973
    :cond_2
    iget-object v0, p0, Ljzc;->d:Ljwy;

    if-eqz v0, :cond_3

    .line 9974
    const/4 v0, 0x4

    iget-object v1, p0, Ljzc;->d:Ljwy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9976
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9977
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9981
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9982
    iget-object v1, p0, Ljzc;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9983
    const/4 v1, 0x1

    iget-object v2, p0, Ljzc;->a:Ljava/lang/String;

    .line 9984
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9986
    :cond_0
    iget-object v1, p0, Ljzc;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 9987
    const/4 v1, 0x2

    iget-object v2, p0, Ljzc;->b:Ljava/lang/String;

    .line 9988
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9990
    :cond_1
    iget-object v1, p0, Ljzc;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 9991
    const/4 v1, 0x3

    iget-object v2, p0, Ljzc;->c:Ljava/lang/Integer;

    .line 9992
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9994
    :cond_2
    iget-object v1, p0, Ljzc;->d:Ljwy;

    if-eqz v1, :cond_3

    .line 9995
    const/4 v1, 0x4

    iget-object v2, p0, Ljzc;->d:Ljwy;

    .line 9996
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9998
    :cond_3
    return v0
.end method
