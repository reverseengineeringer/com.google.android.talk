.class public final Lloq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lloq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Llor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1127
    iput-object v0, p0, Lloq;->a:Ljava/lang/Boolean;

    .line 1128
    iput-object v0, p0, Lloq;->b:Llor;

    .line 1129
    iput-object v0, p0, Lloq;->eD:Llyd;

    .line 1130
    const/4 v0, -0x1

    iput v0, p0, Lloq;->eE:I

    .line 124
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2165
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2166
    sparse-switch v0, :sswitch_data_0

    .line 2170
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2171
    :sswitch_0
    return-object p0

    .line 2176
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lloq;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2180
    :sswitch_2
    iget-object v0, p0, Lloq;->b:Llor;

    if-nez v0, :cond_1

    .line 2181
    new-instance v0, Llor;

    invoke-direct {v0}, Llor;-><init>()V

    iput-object v0, p0, Lloq;->b:Llor;

    .line 2183
    :cond_1
    iget-object v0, p0, Lloq;->b:Llor;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2166
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
    .line 137
    iget-object v0, p0, Lloq;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    iget-object v1, p0, Lloq;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 140
    :cond_0
    iget-object v0, p0, Lloq;->b:Llor;

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, 0x2

    iget-object v1, p0, Lloq;->b:Llor;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 143
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 144
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 149
    iget-object v1, p0, Lloq;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    iget-object v2, p0, Lloq;->a:Ljava/lang/Boolean;

    .line 151
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 151
    add-int/2addr v0, v1

    .line 153
    :cond_0
    iget-object v1, p0, Lloq;->b:Llor;

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x2

    iget-object v2, p0, Lloq;->b:Llor;

    .line 155
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_1
    return v0
.end method
