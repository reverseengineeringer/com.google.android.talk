.class public final Ljfs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljfs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2774
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2775
    iput-object v0, p0, Ljfs;->a:Ljava/lang/String;

    .line 2776
    iput-object v0, p0, Ljfs;->eD:Llyd;

    .line 2777
    const/4 v0, -0x1

    iput v0, p0, Ljfs;->eE:I

    .line 2778
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3805
    sparse-switch v0, :sswitch_data_0

    .line 3809
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3810
    :sswitch_0
    return-object p0

    .line 3815
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljfs;->a:Ljava/lang/String;

    goto :goto_0

    .line 3805
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
    .line 2783
    iget-object v0, p0, Ljfs;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2784
    const/4 v0, 0x1

    iget-object v1, p0, Ljfs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2786
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2787
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2791
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2792
    iget-object v1, p0, Ljfs;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2793
    const/4 v1, 0x1

    iget-object v2, p0, Ljfs;->a:Ljava/lang/String;

    .line 2794
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2796
    :cond_0
    return v0
.end method
