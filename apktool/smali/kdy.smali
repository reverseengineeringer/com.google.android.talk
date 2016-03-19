.class public final Lkdy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkcp;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31825
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32830
    iput-object v0, p0, Lkdy;->requestHeader:Lkdo;

    .line 32831
    iput-object v0, p0, Lkdy;->a:Lkcp;

    .line 32832
    iput-object v0, p0, Lkdy;->eD:Llyd;

    .line 32833
    const/4 v0, -0x1

    iput v0, p0, Lkdy;->eE:I

    .line 31827
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 32868
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32869
    sparse-switch v0, :sswitch_data_0

    .line 32873
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32874
    :sswitch_0
    return-object p0

    .line 32879
    :sswitch_1
    iget-object v0, p0, Lkdy;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 32880
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkdy;->requestHeader:Lkdo;

    .line 32882
    :cond_1
    iget-object v0, p0, Lkdy;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32886
    :sswitch_2
    iget-object v0, p0, Lkdy;->a:Lkcp;

    if-nez v0, :cond_2

    .line 32887
    new-instance v0, Lkcp;

    invoke-direct {v0}, Lkcp;-><init>()V

    iput-object v0, p0, Lkdy;->a:Lkcp;

    .line 32889
    :cond_2
    iget-object v0, p0, Lkdy;->a:Lkcp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32869
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 31840
    iget-object v0, p0, Lkdy;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 31841
    const/4 v0, 0x1

    iget-object v1, p0, Lkdy;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31843
    :cond_0
    iget-object v0, p0, Lkdy;->a:Lkcp;

    if-eqz v0, :cond_1

    .line 31844
    const/4 v0, 0x2

    iget-object v1, p0, Lkdy;->a:Lkcp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31846
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 31847
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 31851
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 31852
    iget-object v1, p0, Lkdy;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 31853
    const/4 v1, 0x1

    iget-object v2, p0, Lkdy;->requestHeader:Lkdo;

    .line 31854
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31856
    :cond_0
    iget-object v1, p0, Lkdy;->a:Lkcp;

    if-eqz v1, :cond_1

    .line 31857
    const/4 v1, 0x2

    iget-object v2, p0, Lkdy;->a:Lkcp;

    .line 31858
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31860
    :cond_1
    return v0
.end method
