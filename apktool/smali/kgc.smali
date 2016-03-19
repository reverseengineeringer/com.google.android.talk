.class public final Lkgc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkcr;

.field public b:Ljxw;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30915
    invoke-direct {p0}, Llyb;-><init>()V

    .line 31920
    iput-object v0, p0, Lkgc;->a:Lkcr;

    .line 31921
    iput-object v0, p0, Lkgc;->b:Ljxw;

    .line 31922
    iput-object v0, p0, Lkgc;->c:Ljava/lang/Long;

    .line 31923
    iput-object v0, p0, Lkgc;->eD:Llyd;

    .line 31924
    const/4 v0, -0x1

    iput v0, p0, Lkgc;->eE:I

    .line 30917
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 31966
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 31967
    sparse-switch v0, :sswitch_data_0

    .line 31971
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31972
    :sswitch_0
    return-object p0

    .line 31977
    :sswitch_1
    iget-object v0, p0, Lkgc;->a:Lkcr;

    if-nez v0, :cond_1

    .line 31978
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lkgc;->a:Lkcr;

    .line 31980
    :cond_1
    iget-object v0, p0, Lkgc;->a:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31984
    :sswitch_2
    iget-object v0, p0, Lkgc;->b:Ljxw;

    if-nez v0, :cond_2

    .line 31985
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkgc;->b:Ljxw;

    .line 31987
    :cond_2
    iget-object v0, p0, Lkgc;->b:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31991
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkgc;->c:Ljava/lang/Long;

    goto :goto_0

    .line 31967
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
    .locals 4

    .prologue
    .line 30931
    iget-object v0, p0, Lkgc;->a:Lkcr;

    if-eqz v0, :cond_0

    .line 30932
    const/4 v0, 0x1

    iget-object v1, p0, Lkgc;->a:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 30934
    :cond_0
    iget-object v0, p0, Lkgc;->b:Ljxw;

    if-eqz v0, :cond_1

    .line 30935
    const/4 v0, 0x2

    iget-object v1, p0, Lkgc;->b:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 30937
    :cond_1
    iget-object v0, p0, Lkgc;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 30938
    const/4 v0, 0x3

    iget-object v1, p0, Lkgc;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 30940
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 30941
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 30945
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 30946
    iget-object v1, p0, Lkgc;->a:Lkcr;

    if-eqz v1, :cond_0

    .line 30947
    const/4 v1, 0x1

    iget-object v2, p0, Lkgc;->a:Lkcr;

    .line 30948
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30950
    :cond_0
    iget-object v1, p0, Lkgc;->b:Ljxw;

    if-eqz v1, :cond_1

    .line 30951
    const/4 v1, 0x2

    iget-object v2, p0, Lkgc;->b:Ljxw;

    .line 30952
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30954
    :cond_1
    iget-object v1, p0, Lkgc;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 30955
    const/4 v1, 0x3

    iget-object v2, p0, Lkgc;->c:Ljava/lang/Long;

    .line 30956
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 30958
    :cond_2
    return v0
.end method
