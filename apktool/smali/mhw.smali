.class public final Lmhw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmhw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lmih;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32
    iput-object v0, p0, Lmhw;->a:Ljava/lang/Boolean;

    .line 33
    iput-object v0, p0, Lmhw;->b:Lmih;

    .line 34
    iput-object v0, p0, Lmhw;->eD:Llyd;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lmhw;->eE:I

    .line 36
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2069
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2070
    sparse-switch v0, :sswitch_data_0

    .line 2074
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2075
    :sswitch_0
    return-object p0

    .line 2080
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmhw;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2084
    :sswitch_2
    iget-object v0, p0, Lmhw;->b:Lmih;

    if-nez v0, :cond_1

    .line 2085
    new-instance v0, Lmih;

    invoke-direct {v0}, Lmih;-><init>()V

    iput-object v0, p0, Lmhw;->b:Lmih;

    .line 2087
    :cond_1
    iget-object v0, p0, Lmhw;->b:Lmih;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2070
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lmhw;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Lmhw;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 44
    :cond_0
    iget-object v0, p0, Lmhw;->b:Lmih;

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x2

    iget-object v1, p0, Lmhw;->b:Lmih;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 47
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 48
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 53
    iget-object v1, p0, Lmhw;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x1

    iget-object v2, p0, Lmhw;->a:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 55
    add-int/2addr v0, v1

    .line 57
    :cond_0
    iget-object v1, p0, Lmhw;->b:Lmih;

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x2

    iget-object v2, p0, Lmhw;->b:Lmih;

    .line 59
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1
    return v0
.end method
