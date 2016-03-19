.class public final Ljnd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljlq;

.field public b:Ljnf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1049
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1050
    iput-object v0, p0, Ljnd;->a:Ljlq;

    .line 1051
    iput-object v0, p0, Ljnd;->b:Ljnf;

    .line 1052
    iput-object v0, p0, Ljnd;->eD:Llyd;

    .line 1053
    const/4 v0, -0x1

    iput v0, p0, Ljnd;->eE:I

    .line 1054
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2087
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2088
    sparse-switch v0, :sswitch_data_0

    .line 2092
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2093
    :sswitch_0
    return-object p0

    .line 2098
    :sswitch_1
    iget-object v0, p0, Ljnd;->a:Ljlq;

    if-nez v0, :cond_1

    .line 2099
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljnd;->a:Ljlq;

    .line 2101
    :cond_1
    iget-object v0, p0, Ljnd;->a:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2105
    :sswitch_2
    iget-object v0, p0, Ljnd;->b:Ljnf;

    if-nez v0, :cond_2

    .line 2106
    new-instance v0, Ljnf;

    invoke-direct {v0}, Ljnf;-><init>()V

    iput-object v0, p0, Ljnd;->b:Ljnf;

    .line 2108
    :cond_2
    iget-object v0, p0, Ljnd;->b:Ljnf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2088
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
    .line 1059
    iget-object v0, p0, Ljnd;->a:Ljlq;

    if-eqz v0, :cond_0

    .line 1060
    const/4 v0, 0x1

    iget-object v1, p0, Ljnd;->a:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1062
    :cond_0
    iget-object v0, p0, Ljnd;->b:Ljnf;

    if-eqz v0, :cond_1

    .line 1063
    const/4 v0, 0x2

    iget-object v1, p0, Ljnd;->b:Ljnf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1065
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1066
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1070
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1071
    iget-object v1, p0, Ljnd;->a:Ljlq;

    if-eqz v1, :cond_0

    .line 1072
    const/4 v1, 0x1

    iget-object v2, p0, Ljnd;->a:Ljlq;

    .line 1073
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1075
    :cond_0
    iget-object v1, p0, Ljnd;->b:Ljnf;

    if-eqz v1, :cond_1

    .line 1076
    const/4 v1, 0x2

    iget-object v2, p0, Ljnd;->b:Ljnf;

    .line 1077
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1079
    :cond_1
    return v0
.end method
