.class public final Liyk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljaf;

.field public apiHeader:Liye;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1967
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2972
    iput-object v0, p0, Liyk;->apiHeader:Liye;

    .line 2973
    iput-object v0, p0, Liyk;->a:Ljaf;

    .line 2974
    iput-object v0, p0, Liyk;->eD:Llyd;

    .line 2975
    const/4 v0, -0x1

    iput v0, p0, Liyk;->eE:I

    .line 1969
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3010
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3011
    sparse-switch v0, :sswitch_data_0

    .line 3015
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3016
    :sswitch_0
    return-object p0

    .line 3021
    :sswitch_1
    iget-object v0, p0, Liyk;->apiHeader:Liye;

    if-nez v0, :cond_1

    .line 3022
    new-instance v0, Liye;

    invoke-direct {v0}, Liye;-><init>()V

    iput-object v0, p0, Liyk;->apiHeader:Liye;

    .line 3024
    :cond_1
    iget-object v0, p0, Liyk;->apiHeader:Liye;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3028
    :sswitch_2
    iget-object v0, p0, Liyk;->a:Ljaf;

    if-nez v0, :cond_2

    .line 3029
    new-instance v0, Ljaf;

    invoke-direct {v0}, Ljaf;-><init>()V

    iput-object v0, p0, Liyk;->a:Ljaf;

    .line 3031
    :cond_2
    iget-object v0, p0, Liyk;->a:Ljaf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3011
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
    .line 1982
    iget-object v0, p0, Liyk;->apiHeader:Liye;

    if-eqz v0, :cond_0

    .line 1983
    const/4 v0, 0x1

    iget-object v1, p0, Liyk;->apiHeader:Liye;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1985
    :cond_0
    iget-object v0, p0, Liyk;->a:Ljaf;

    if-eqz v0, :cond_1

    .line 1986
    const/4 v0, 0x2

    iget-object v1, p0, Liyk;->a:Ljaf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1988
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1989
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1993
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1994
    iget-object v1, p0, Liyk;->apiHeader:Liye;

    if-eqz v1, :cond_0

    .line 1995
    const/4 v1, 0x1

    iget-object v2, p0, Liyk;->apiHeader:Liye;

    .line 1996
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1998
    :cond_0
    iget-object v1, p0, Liyk;->a:Ljaf;

    if-eqz v1, :cond_1

    .line 1999
    const/4 v1, 0x2

    iget-object v2, p0, Liyk;->a:Ljaf;

    .line 2000
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2002
    :cond_1
    return v0
.end method
