.class public final Lkeh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkeh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16021
    invoke-direct {p0}, Llyb;-><init>()V

    .line 17026
    iput-object v0, p0, Lkeh;->requestHeader:Lkdo;

    .line 17027
    iput-object v0, p0, Lkeh;->a:Ljxw;

    .line 17028
    iput-object v0, p0, Lkeh;->b:Ljava/lang/Integer;

    .line 17029
    iput-object v0, p0, Lkeh;->c:Ljava/lang/Integer;

    .line 17030
    iput-object v0, p0, Lkeh;->eD:Llyd;

    .line 17031
    const/4 v0, -0x1

    iput v0, p0, Lkeh;->eE:I

    .line 16023
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 17080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 17081
    sparse-switch v0, :sswitch_data_0

    .line 17085
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17086
    :sswitch_0
    return-object p0

    .line 17091
    :sswitch_1
    iget-object v0, p0, Lkeh;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 17092
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkeh;->requestHeader:Lkdo;

    .line 17094
    :cond_1
    iget-object v0, p0, Lkeh;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 17098
    :sswitch_2
    iget-object v0, p0, Lkeh;->a:Ljxw;

    if-nez v0, :cond_2

    .line 17099
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkeh;->a:Ljxw;

    .line 17101
    :cond_2
    iget-object v0, p0, Lkeh;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 17105
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 17106
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 17110
    :sswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkeh;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 17116
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkeh;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 17081
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch

    .line 17106
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_4
        0x14 -> :sswitch_4
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 16038
    iget-object v0, p0, Lkeh;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 16039
    const/4 v0, 0x1

    iget-object v1, p0, Lkeh;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 16041
    :cond_0
    iget-object v0, p0, Lkeh;->a:Ljxw;

    if-eqz v0, :cond_1

    .line 16042
    const/4 v0, 0x2

    iget-object v1, p0, Lkeh;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 16044
    :cond_1
    iget-object v0, p0, Lkeh;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 16045
    const/4 v0, 0x3

    iget-object v1, p0, Lkeh;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 16047
    :cond_2
    iget-object v0, p0, Lkeh;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 16048
    const/4 v0, 0x4

    iget-object v1, p0, Lkeh;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 16050
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 16051
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 16055
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 16056
    iget-object v1, p0, Lkeh;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 16057
    const/4 v1, 0x1

    iget-object v2, p0, Lkeh;->requestHeader:Lkdo;

    .line 16058
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16060
    :cond_0
    iget-object v1, p0, Lkeh;->a:Ljxw;

    if-eqz v1, :cond_1

    .line 16061
    const/4 v1, 0x2

    iget-object v2, p0, Lkeh;->a:Ljxw;

    .line 16062
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16064
    :cond_1
    iget-object v1, p0, Lkeh;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 16065
    const/4 v1, 0x3

    iget-object v2, p0, Lkeh;->b:Ljava/lang/Integer;

    .line 16066
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16068
    :cond_2
    iget-object v1, p0, Lkeh;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 16069
    const/4 v1, 0x4

    iget-object v2, p0, Lkeh;->c:Ljava/lang/Integer;

    .line 16070
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16072
    :cond_3
    return v0
.end method
