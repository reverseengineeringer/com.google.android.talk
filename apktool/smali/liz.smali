.class public final Lliz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lliz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2874
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3879
    iput-object v0, p0, Lliz;->a:Ljava/lang/Boolean;

    .line 3880
    iput-object v0, p0, Lliz;->b:Ljava/lang/Boolean;

    .line 3881
    iput-object v0, p0, Lliz;->eD:Llyd;

    .line 3882
    const/4 v0, -0x1

    iput v0, p0, Lliz;->eE:I

    .line 2876
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5917
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5918
    sparse-switch v0, :sswitch_data_0

    .line 5922
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5923
    :sswitch_0
    return-object p0

    .line 5928
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lliz;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 5932
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lliz;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 5918
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2889
    iget-object v0, p0, Lliz;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2890
    const/4 v0, 0x1

    iget-object v1, p0, Lliz;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2892
    :cond_0
    iget-object v0, p0, Lliz;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2893
    const/4 v0, 0x2

    iget-object v1, p0, Lliz;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 2895
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2896
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2900
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2901
    iget-object v1, p0, Lliz;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2902
    const/4 v1, 0x1

    iget-object v2, p0, Lliz;->a:Ljava/lang/Boolean;

    .line 2903
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2903
    add-int/2addr v0, v1

    .line 2905
    :cond_0
    iget-object v1, p0, Lliz;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2906
    const/4 v1, 0x2

    iget-object v2, p0, Lliz;->b:Ljava/lang/Boolean;

    .line 2907
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2907
    add-int/2addr v0, v1

    .line 2909
    :cond_1
    return v0
.end method
