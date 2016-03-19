.class public final Lkbe;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbe;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkbc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31032
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32037
    iput-object v0, p0, Lkbe;->a:Lkbc;

    .line 32038
    iput-object v0, p0, Lkbe;->eD:Llyd;

    .line 32039
    const/4 v0, -0x1

    iput v0, p0, Lkbe;->eE:I

    .line 31034
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 32067
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32068
    sparse-switch v0, :sswitch_data_0

    .line 32072
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32073
    :sswitch_0
    return-object p0

    .line 32078
    :sswitch_1
    iget-object v0, p0, Lkbe;->a:Lkbc;

    if-nez v0, :cond_1

    .line 32079
    new-instance v0, Lkbc;

    invoke-direct {v0}, Lkbc;-><init>()V

    iput-object v0, p0, Lkbe;->a:Lkbc;

    .line 32081
    :cond_1
    iget-object v0, p0, Lkbe;->a:Lkbc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32068
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
    .line 31046
    iget-object v0, p0, Lkbe;->a:Lkbc;

    if-eqz v0, :cond_0

    .line 31047
    const/4 v0, 0x1

    iget-object v1, p0, Lkbe;->a:Lkbc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31049
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 31050
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 31054
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 31055
    iget-object v1, p0, Lkbe;->a:Lkbc;

    if-eqz v1, :cond_0

    .line 31056
    const/4 v1, 0x1

    iget-object v2, p0, Lkbe;->a:Lkbc;

    .line 31057
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31059
    :cond_0
    return v0
.end method
