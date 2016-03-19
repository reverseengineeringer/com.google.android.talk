.class public final Ljif;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljif;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljig;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1011
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2016
    iput-object v0, p0, Ljif;->a:Ljava/lang/String;

    .line 2017
    iput-object v0, p0, Ljif;->b:Ljig;

    .line 2018
    iput-object v0, p0, Ljif;->c:Ljava/lang/Integer;

    .line 2019
    iput-object v0, p0, Ljif;->eD:Llyd;

    .line 2020
    const/4 v0, -0x1

    iput v0, p0, Ljif;->eE:I

    .line 1013
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2062
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2063
    sparse-switch v0, :sswitch_data_0

    .line 2067
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    :sswitch_0
    return-object p0

    .line 2073
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljif;->a:Ljava/lang/String;

    goto :goto_0

    .line 2077
    :sswitch_2
    iget-object v0, p0, Ljif;->b:Ljig;

    if-nez v0, :cond_1

    .line 2078
    new-instance v0, Ljig;

    invoke-direct {v0}, Ljig;-><init>()V

    iput-object v0, p0, Ljif;->b:Ljig;

    .line 2080
    :cond_1
    iget-object v0, p0, Ljif;->b:Ljig;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2084
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljif;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2063
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Ljif;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1028
    const/4 v0, 0x1

    iget-object v1, p0, Ljif;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1030
    :cond_0
    iget-object v0, p0, Ljif;->b:Ljig;

    if-eqz v0, :cond_1

    .line 1031
    const/4 v0, 0x2

    iget-object v1, p0, Ljif;->b:Ljig;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1033
    :cond_1
    iget-object v0, p0, Ljif;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1034
    const/4 v0, 0x3

    iget-object v1, p0, Ljif;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1036
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1037
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1041
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1042
    iget-object v1, p0, Ljif;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1043
    const/4 v1, 0x1

    iget-object v2, p0, Ljif;->a:Ljava/lang/String;

    .line 1044
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1046
    :cond_0
    iget-object v1, p0, Ljif;->b:Ljig;

    if-eqz v1, :cond_1

    .line 1047
    const/4 v1, 0x2

    iget-object v2, p0, Ljif;->b:Ljig;

    .line 1048
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1050
    :cond_1
    iget-object v1, p0, Ljif;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1051
    const/4 v1, 0x3

    iget-object v2, p0, Ljif;->c:Ljava/lang/Integer;

    .line 1052
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1054
    :cond_2
    return v0
.end method
