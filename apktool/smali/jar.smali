.class public final Ljar;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljar;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6065
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7070
    iput-object v0, p0, Ljar;->a:Ljbn;

    .line 7071
    iput-object v0, p0, Ljar;->b:Ljava/lang/Boolean;

    .line 7072
    iput-object v0, p0, Ljar;->eD:Llyd;

    .line 7073
    const/4 v0, -0x1

    iput v0, p0, Ljar;->eE:I

    .line 6067
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 8108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8109
    sparse-switch v0, :sswitch_data_0

    .line 8113
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8114
    :sswitch_0
    return-object p0

    .line 8119
    :sswitch_1
    iget-object v0, p0, Ljar;->a:Ljbn;

    if-nez v0, :cond_1

    .line 8120
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljar;->a:Ljbn;

    .line 8122
    :cond_1
    iget-object v0, p0, Ljar;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8126
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljar;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 8109
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6080
    iget-object v0, p0, Ljar;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 6081
    const/4 v0, 0x1

    iget-object v1, p0, Ljar;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6083
    :cond_0
    iget-object v0, p0, Ljar;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 6084
    const/4 v0, 0x2

    iget-object v1, p0, Ljar;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 6086
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6087
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6091
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6092
    iget-object v1, p0, Ljar;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 6093
    const/4 v1, 0x1

    iget-object v2, p0, Ljar;->a:Ljbn;

    .line 6094
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6096
    :cond_0
    iget-object v1, p0, Ljar;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 6097
    const/4 v1, 0x2

    iget-object v2, p0, Ljar;->b:Ljava/lang/Boolean;

    .line 6098
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6098
    add-int/2addr v0, v1

    .line 6100
    :cond_1
    return v0
.end method
