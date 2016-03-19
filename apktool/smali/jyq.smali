.class public final Ljyq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20841
    invoke-direct {p0}, Llyb;-><init>()V

    .line 21846
    iput-object v0, p0, Ljyq;->a:Ljava/lang/Boolean;

    .line 21847
    iput-object v0, p0, Ljyq;->eD:Llyd;

    .line 21848
    const/4 v0, -0x1

    iput v0, p0, Ljyq;->eE:I

    .line 20843
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 22876
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 22877
    sparse-switch v0, :sswitch_data_0

    .line 22881
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22882
    :sswitch_0
    return-object p0

    .line 22887
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljyq;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 22877
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 20855
    iget-object v0, p0, Ljyq;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 20856
    const/4 v0, 0x1

    iget-object v1, p0, Ljyq;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 20858
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 20859
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 20863
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 20864
    iget-object v1, p0, Ljyq;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 20865
    const/4 v1, 0x1

    iget-object v2, p0, Ljyq;->a:Ljava/lang/Boolean;

    .line 20866
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 20866
    add-int/2addr v0, v1

    .line 20868
    :cond_0
    return v0
.end method
