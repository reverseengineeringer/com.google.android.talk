.class public final Lizx;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizx;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lizy;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3948
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4953
    iput-object v0, p0, Lizx;->a:Ljava/lang/String;

    .line 4954
    iput-object v0, p0, Lizx;->b:Ljava/lang/String;

    .line 4955
    iput-object v0, p0, Lizx;->c:Lizy;

    .line 4956
    iput-object v0, p0, Lizx;->d:Ljava/lang/String;

    .line 4957
    iput-object v0, p0, Lizx;->eD:Llyd;

    .line 4958
    const/4 v0, -0x1

    iput v0, p0, Lizx;->eE:I

    .line 3950
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5007
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5008
    sparse-switch v0, :sswitch_data_0

    .line 5012
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5013
    :sswitch_0
    return-object p0

    .line 5018
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizx;->a:Ljava/lang/String;

    goto :goto_0

    .line 5022
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizx;->b:Ljava/lang/String;

    goto :goto_0

    .line 5026
    :sswitch_3
    iget-object v0, p0, Lizx;->c:Lizy;

    if-nez v0, :cond_1

    .line 5027
    new-instance v0, Lizy;

    invoke-direct {v0}, Lizy;-><init>()V

    iput-object v0, p0, Lizx;->c:Lizy;

    .line 5029
    :cond_1
    iget-object v0, p0, Lizx;->c:Lizy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5033
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lizx;->d:Ljava/lang/String;

    goto :goto_0

    .line 5008
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3965
    iget-object v0, p0, Lizx;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3966
    const/4 v0, 0x1

    iget-object v1, p0, Lizx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3968
    :cond_0
    iget-object v0, p0, Lizx;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3969
    const/4 v0, 0x2

    iget-object v1, p0, Lizx;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3971
    :cond_1
    iget-object v0, p0, Lizx;->c:Lizy;

    if-eqz v0, :cond_2

    .line 3972
    const/4 v0, 0x3

    iget-object v1, p0, Lizx;->c:Lizy;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3974
    :cond_2
    iget-object v0, p0, Lizx;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3975
    const/4 v0, 0x4

    iget-object v1, p0, Lizx;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3977
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3978
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3982
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3983
    iget-object v1, p0, Lizx;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3984
    const/4 v1, 0x1

    iget-object v2, p0, Lizx;->a:Ljava/lang/String;

    .line 3985
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3987
    :cond_0
    iget-object v1, p0, Lizx;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3988
    const/4 v1, 0x2

    iget-object v2, p0, Lizx;->b:Ljava/lang/String;

    .line 3989
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3991
    :cond_1
    iget-object v1, p0, Lizx;->c:Lizy;

    if-eqz v1, :cond_2

    .line 3992
    const/4 v1, 0x3

    iget-object v2, p0, Lizx;->c:Lizy;

    .line 3993
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3995
    :cond_2
    iget-object v1, p0, Lizx;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 3996
    const/4 v1, 0x4

    iget-object v2, p0, Lizx;->d:Ljava/lang/String;

    .line 3997
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3999
    :cond_3
    return v0
.end method
