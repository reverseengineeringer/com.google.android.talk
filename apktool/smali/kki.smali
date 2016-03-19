.class public final Lkki;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkki;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkkh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2886
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3891
    iput-object v0, p0, Lkki;->a:Lkkh;

    .line 3892
    iput-object v0, p0, Lkki;->eD:Llyd;

    .line 3893
    const/4 v0, -0x1

    iput v0, p0, Lkki;->eE:I

    .line 2888
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3921
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3922
    sparse-switch v0, :sswitch_data_0

    .line 3926
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3927
    :sswitch_0
    return-object p0

    .line 3932
    :sswitch_1
    iget-object v0, p0, Lkki;->a:Lkkh;

    if-nez v0, :cond_1

    .line 3933
    new-instance v0, Lkkh;

    invoke-direct {v0}, Lkkh;-><init>()V

    iput-object v0, p0, Lkki;->a:Lkkh;

    .line 3935
    :cond_1
    iget-object v0, p0, Lkki;->a:Lkkh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3922
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2900
    iget-object v0, p0, Lkki;->a:Lkkh;

    if-eqz v0, :cond_0

    .line 2901
    const/4 v0, 0x1

    iget-object v1, p0, Lkki;->a:Lkkh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2903
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2904
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2908
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2909
    iget-object v1, p0, Lkki;->a:Lkkh;

    if-eqz v1, :cond_0

    .line 2910
    const/4 v1, 0x1

    iget-object v2, p0, Lkki;->a:Lkkh;

    .line 2911
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2913
    :cond_0
    return v0
.end method
