.class public final Livc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livc;",
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

    .line 1647
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2652
    iput-object v0, p0, Livc;->a:Ljava/lang/Boolean;

    .line 2653
    iput-object v0, p0, Livc;->eD:Llyd;

    .line 2654
    const/4 v0, -0x1

    iput v0, p0, Livc;->eE:I

    .line 1649
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3682
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3683
    sparse-switch v0, :sswitch_data_0

    .line 3687
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3688
    :sswitch_0
    return-object p0

    .line 3693
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Livc;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 3683
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Livc;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1662
    const/4 v0, 0x2

    iget-object v1, p0, Livc;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1664
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1665
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1669
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1670
    iget-object v1, p0, Livc;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 1671
    const/4 v1, 0x2

    iget-object v2, p0, Livc;->a:Ljava/lang/Boolean;

    .line 1672
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1672
    add-int/2addr v0, v1

    .line 1674
    :cond_0
    return v0
.end method
