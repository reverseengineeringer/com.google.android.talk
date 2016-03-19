.class public final Lkch;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkch;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzl;

.field public b:Ljxr;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14832
    invoke-direct {p0}, Llyb;-><init>()V

    .line 15837
    iput-object v0, p0, Lkch;->responseHeader:Lkdp;

    .line 15838
    iput-object v0, p0, Lkch;->a:Ljzl;

    .line 15839
    iput-object v0, p0, Lkch;->b:Ljxr;

    .line 15840
    iput-object v0, p0, Lkch;->c:Ljava/lang/Boolean;

    .line 15841
    iput-object v0, p0, Lkch;->d:Ljava/lang/Long;

    .line 15842
    iput-object v0, p0, Lkch;->e:Ljava/lang/String;

    .line 15843
    iput-object v0, p0, Lkch;->eD:Llyd;

    .line 15844
    const/4 v0, -0x1

    iput v0, p0, Lkch;->eE:I

    .line 14834
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 16907
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 16908
    sparse-switch v0, :sswitch_data_0

    .line 16912
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16913
    :sswitch_0
    return-object p0

    .line 16918
    :sswitch_1
    iget-object v0, p0, Lkch;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 16919
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkch;->responseHeader:Lkdp;

    .line 16921
    :cond_1
    iget-object v0, p0, Lkch;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 16925
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkch;->d:Ljava/lang/Long;

    goto :goto_0

    .line 16929
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkch;->e:Ljava/lang/String;

    goto :goto_0

    .line 16933
    :sswitch_4
    iget-object v0, p0, Lkch;->a:Ljzl;

    if-nez v0, :cond_2

    .line 16934
    new-instance v0, Ljzl;

    invoke-direct {v0}, Ljzl;-><init>()V

    iput-object v0, p0, Lkch;->a:Ljzl;

    .line 16936
    :cond_2
    iget-object v0, p0, Lkch;->a:Ljzl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 16940
    :sswitch_5
    iget-object v0, p0, Lkch;->b:Ljxr;

    if-nez v0, :cond_3

    .line 16941
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Lkch;->b:Ljxr;

    .line 16943
    :cond_3
    iget-object v0, p0, Lkch;->b:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 16947
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkch;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 16908
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 14851
    iget-object v0, p0, Lkch;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 14852
    const/4 v0, 0x1

    iget-object v1, p0, Lkch;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14854
    :cond_0
    iget-object v0, p0, Lkch;->d:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 14855
    const/4 v0, 0x2

    iget-object v1, p0, Lkch;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 14857
    :cond_1
    iget-object v0, p0, Lkch;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 14858
    const/4 v0, 0x3

    iget-object v1, p0, Lkch;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 14860
    :cond_2
    iget-object v0, p0, Lkch;->a:Ljzl;

    if-eqz v0, :cond_3

    .line 14861
    const/4 v0, 0x4

    iget-object v1, p0, Lkch;->a:Ljzl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14863
    :cond_3
    iget-object v0, p0, Lkch;->b:Ljxr;

    if-eqz v0, :cond_4

    .line 14864
    const/4 v0, 0x5

    iget-object v1, p0, Lkch;->b:Ljxr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14866
    :cond_4
    iget-object v0, p0, Lkch;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 14867
    const/4 v0, 0x6

    iget-object v1, p0, Lkch;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 14869
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 14870
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 14874
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 14875
    iget-object v1, p0, Lkch;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 14876
    const/4 v1, 0x1

    iget-object v2, p0, Lkch;->responseHeader:Lkdp;

    .line 14877
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14879
    :cond_0
    iget-object v1, p0, Lkch;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 14880
    const/4 v1, 0x2

    iget-object v2, p0, Lkch;->d:Ljava/lang/Long;

    .line 14881
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14883
    :cond_1
    iget-object v1, p0, Lkch;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 14884
    const/4 v1, 0x3

    iget-object v2, p0, Lkch;->e:Ljava/lang/String;

    .line 14885
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14887
    :cond_2
    iget-object v1, p0, Lkch;->a:Ljzl;

    if-eqz v1, :cond_3

    .line 14888
    const/4 v1, 0x4

    iget-object v2, p0, Lkch;->a:Ljzl;

    .line 14889
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14891
    :cond_3
    iget-object v1, p0, Lkch;->b:Ljxr;

    if-eqz v1, :cond_4

    .line 14892
    const/4 v1, 0x5

    iget-object v2, p0, Lkch;->b:Ljxr;

    .line 14893
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14895
    :cond_4
    iget-object v1, p0, Lkch;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 14896
    const/4 v1, 0x6

    iget-object v2, p0, Lkch;->c:Ljava/lang/Boolean;

    .line 14897
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 14897
    add-int/2addr v0, v1

    .line 14899
    :cond_5
    return v0
.end method
