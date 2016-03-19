.class public final Ljxv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljyp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23758
    invoke-direct {p0}, Llyb;-><init>()V

    .line 24763
    iput-object v0, p0, Ljxv;->a:Ljxw;

    .line 24764
    iput-object v0, p0, Ljxv;->b:Ljyp;

    .line 24765
    iput-object v0, p0, Ljxv;->eD:Llyd;

    .line 24766
    const/4 v0, -0x1

    iput v0, p0, Ljxv;->eE:I

    .line 23760
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 24801
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 24802
    sparse-switch v0, :sswitch_data_0

    .line 24806
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24807
    :sswitch_0
    return-object p0

    .line 24812
    :sswitch_1
    iget-object v0, p0, Ljxv;->a:Ljxw;

    if-nez v0, :cond_1

    .line 24813
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljxv;->a:Ljxw;

    .line 24815
    :cond_1
    iget-object v0, p0, Ljxv;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24819
    :sswitch_2
    iget-object v0, p0, Ljxv;->b:Ljyp;

    if-nez v0, :cond_2

    .line 24820
    new-instance v0, Ljyp;

    invoke-direct {v0}, Ljyp;-><init>()V

    iput-object v0, p0, Ljxv;->b:Ljyp;

    .line 24822
    :cond_2
    iget-object v0, p0, Ljxv;->b:Ljyp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 24802
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
    .line 23773
    iget-object v0, p0, Ljxv;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 23774
    const/4 v0, 0x1

    iget-object v1, p0, Ljxv;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 23776
    :cond_0
    iget-object v0, p0, Ljxv;->b:Ljyp;

    if-eqz v0, :cond_1

    .line 23777
    const/4 v0, 0x2

    iget-object v1, p0, Ljxv;->b:Ljyp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 23779
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 23780
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 23784
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 23785
    iget-object v1, p0, Ljxv;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 23786
    const/4 v1, 0x1

    iget-object v2, p0, Ljxv;->a:Ljxw;

    .line 23787
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23789
    :cond_0
    iget-object v1, p0, Ljxv;->b:Ljyp;

    if-eqz v1, :cond_1

    .line 23790
    const/4 v1, 0x2

    iget-object v2, p0, Ljxv;->b:Ljyp;

    .line 23791
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23793
    :cond_1
    return v0
.end method
