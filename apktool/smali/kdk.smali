.class public final Lkdk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzl;

.field public b:Ljxr;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8916
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9921
    iput-object v0, p0, Lkdk;->responseHeader:Lkdp;

    .line 9922
    iput-object v0, p0, Lkdk;->a:Ljzl;

    .line 9923
    iput-object v0, p0, Lkdk;->b:Ljxr;

    .line 9924
    iput-object v0, p0, Lkdk;->c:Ljava/lang/Long;

    .line 9925
    iput-object v0, p0, Lkdk;->d:Ljava/lang/String;

    .line 9926
    iput-object v0, p0, Lkdk;->eD:Llyd;

    .line 9927
    const/4 v0, -0x1

    iput v0, p0, Lkdk;->eE:I

    .line 8918
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 9983
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9984
    sparse-switch v0, :sswitch_data_0

    .line 9988
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9989
    :sswitch_0
    return-object p0

    .line 9994
    :sswitch_1
    iget-object v0, p0, Lkdk;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 9995
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkdk;->responseHeader:Lkdp;

    .line 9997
    :cond_1
    iget-object v0, p0, Lkdk;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10001
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdk;->c:Ljava/lang/Long;

    goto :goto_0

    .line 10005
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdk;->d:Ljava/lang/String;

    goto :goto_0

    .line 10009
    :sswitch_4
    iget-object v0, p0, Lkdk;->a:Ljzl;

    if-nez v0, :cond_2

    .line 10010
    new-instance v0, Ljzl;

    invoke-direct {v0}, Ljzl;-><init>()V

    iput-object v0, p0, Lkdk;->a:Ljzl;

    .line 10012
    :cond_2
    iget-object v0, p0, Lkdk;->a:Ljzl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10016
    :sswitch_5
    iget-object v0, p0, Lkdk;->b:Ljxr;

    if-nez v0, :cond_3

    .line 10017
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Lkdk;->b:Ljxr;

    .line 10019
    :cond_3
    iget-object v0, p0, Lkdk;->b:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9984
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 8934
    iget-object v0, p0, Lkdk;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 8935
    const/4 v0, 0x1

    iget-object v1, p0, Lkdk;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8937
    :cond_0
    iget-object v0, p0, Lkdk;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 8938
    const/4 v0, 0x2

    iget-object v1, p0, Lkdk;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 8940
    :cond_1
    iget-object v0, p0, Lkdk;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8941
    const/4 v0, 0x3

    iget-object v1, p0, Lkdk;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8943
    :cond_2
    iget-object v0, p0, Lkdk;->a:Ljzl;

    if-eqz v0, :cond_3

    .line 8944
    const/4 v0, 0x4

    iget-object v1, p0, Lkdk;->a:Ljzl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8946
    :cond_3
    iget-object v0, p0, Lkdk;->b:Ljxr;

    if-eqz v0, :cond_4

    .line 8947
    const/4 v0, 0x5

    iget-object v1, p0, Lkdk;->b:Ljxr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8949
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8950
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 8954
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8955
    iget-object v1, p0, Lkdk;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 8956
    const/4 v1, 0x1

    iget-object v2, p0, Lkdk;->responseHeader:Lkdp;

    .line 8957
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8959
    :cond_0
    iget-object v1, p0, Lkdk;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 8960
    const/4 v1, 0x2

    iget-object v2, p0, Lkdk;->c:Ljava/lang/Long;

    .line 8961
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8963
    :cond_1
    iget-object v1, p0, Lkdk;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8964
    const/4 v1, 0x3

    iget-object v2, p0, Lkdk;->d:Ljava/lang/String;

    .line 8965
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8967
    :cond_2
    iget-object v1, p0, Lkdk;->a:Ljzl;

    if-eqz v1, :cond_3

    .line 8968
    const/4 v1, 0x4

    iget-object v2, p0, Lkdk;->a:Ljzl;

    .line 8969
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8971
    :cond_3
    iget-object v1, p0, Lkdk;->b:Ljxr;

    if-eqz v1, :cond_4

    .line 8972
    const/4 v1, 0x5

    iget-object v2, p0, Lkdk;->b:Ljxr;

    .line 8973
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8975
    :cond_4
    return v0
.end method
