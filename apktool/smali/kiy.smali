.class public final Lkiy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkiy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lkju;

.field public c:Lkii;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4808
    invoke-direct {p0}, Llyb;-><init>()V

    .line 5813
    iput-object v0, p0, Lkiy;->requestHeader:Lkdo;

    .line 5814
    iput-object v0, p0, Lkiy;->a:Ljava/lang/String;

    .line 5815
    iput-object v0, p0, Lkiy;->b:Lkju;

    .line 5816
    iput-object v0, p0, Lkiy;->c:Lkii;

    .line 5817
    iput-object v0, p0, Lkiy;->eD:Llyd;

    .line 5818
    const/4 v0, -0x1

    iput v0, p0, Lkiy;->eE:I

    .line 4810
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5867
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5868
    sparse-switch v0, :sswitch_data_0

    .line 5872
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5873
    :sswitch_0
    return-object p0

    .line 5878
    :sswitch_1
    iget-object v0, p0, Lkiy;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 5879
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkiy;->requestHeader:Lkdo;

    .line 5881
    :cond_1
    iget-object v0, p0, Lkiy;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5885
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkiy;->a:Ljava/lang/String;

    goto :goto_0

    .line 5889
    :sswitch_3
    iget-object v0, p0, Lkiy;->b:Lkju;

    if-nez v0, :cond_2

    .line 5890
    new-instance v0, Lkju;

    invoke-direct {v0}, Lkju;-><init>()V

    iput-object v0, p0, Lkiy;->b:Lkju;

    .line 5892
    :cond_2
    iget-object v0, p0, Lkiy;->b:Lkju;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5896
    :sswitch_4
    iget-object v0, p0, Lkiy;->c:Lkii;

    if-nez v0, :cond_3

    .line 5897
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkiy;->c:Lkii;

    .line 5899
    :cond_3
    iget-object v0, p0, Lkiy;->c:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5868
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
    .line 4825
    iget-object v0, p0, Lkiy;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 4826
    const/4 v0, 0x1

    iget-object v1, p0, Lkiy;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4828
    :cond_0
    iget-object v0, p0, Lkiy;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4829
    const/4 v0, 0x2

    iget-object v1, p0, Lkiy;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 4831
    :cond_1
    iget-object v0, p0, Lkiy;->b:Lkju;

    if-eqz v0, :cond_2

    .line 4832
    const/4 v0, 0x3

    iget-object v1, p0, Lkiy;->b:Lkju;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4834
    :cond_2
    iget-object v0, p0, Lkiy;->c:Lkii;

    if-eqz v0, :cond_3

    .line 4835
    const/4 v0, 0x4

    iget-object v1, p0, Lkiy;->c:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 4837
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 4838
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 4842
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 4843
    iget-object v1, p0, Lkiy;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 4844
    const/4 v1, 0x1

    iget-object v2, p0, Lkiy;->requestHeader:Lkdo;

    .line 4845
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4847
    :cond_0
    iget-object v1, p0, Lkiy;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4848
    const/4 v1, 0x2

    iget-object v2, p0, Lkiy;->a:Ljava/lang/String;

    .line 4849
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4851
    :cond_1
    iget-object v1, p0, Lkiy;->b:Lkju;

    if-eqz v1, :cond_2

    .line 4852
    const/4 v1, 0x3

    iget-object v2, p0, Lkiy;->b:Lkju;

    .line 4853
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4855
    :cond_2
    iget-object v1, p0, Lkiy;->c:Lkii;

    if-eqz v1, :cond_3

    .line 4856
    const/4 v1, 0x4

    iget-object v2, p0, Lkiy;->c:Lkii;

    .line 4857
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4859
    :cond_3
    return v0
.end method
