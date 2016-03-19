.class public final Ljch;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljch;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1896
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2901
    iput-object v0, p0, Ljch;->a:Ljbn;

    .line 2902
    iput-object v0, p0, Ljch;->b:Ljava/lang/String;

    .line 2903
    iput-object v0, p0, Ljch;->eD:Llyd;

    .line 2904
    const/4 v0, -0x1

    iput v0, p0, Ljch;->eE:I

    .line 1898
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2939
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2940
    sparse-switch v0, :sswitch_data_0

    .line 2944
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2945
    :sswitch_0
    return-object p0

    .line 2950
    :sswitch_1
    iget-object v0, p0, Ljch;->a:Ljbn;

    if-nez v0, :cond_1

    .line 2951
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljch;->a:Ljbn;

    .line 2953
    :cond_1
    iget-object v0, p0, Ljch;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2957
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljch;->b:Ljava/lang/String;

    goto :goto_0

    .line 2940
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
    .line 1911
    iget-object v0, p0, Ljch;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 1912
    const/4 v0, 0x1

    iget-object v1, p0, Ljch;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1914
    :cond_0
    iget-object v0, p0, Ljch;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1915
    const/4 v0, 0x2

    iget-object v1, p0, Ljch;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1917
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1918
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1922
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1923
    iget-object v1, p0, Ljch;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 1924
    const/4 v1, 0x1

    iget-object v2, p0, Ljch;->a:Ljbn;

    .line 1925
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1927
    :cond_0
    iget-object v1, p0, Ljch;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1928
    const/4 v1, 0x2

    iget-object v2, p0, Ljch;->b:Ljava/lang/String;

    .line 1929
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1931
    :cond_1
    return v0
.end method
