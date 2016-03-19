.class public final Llkz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llmi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3134
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4139
    iput-object v0, p0, Llkz;->a:Llmi;

    .line 4140
    iput-object v0, p0, Llkz;->eD:Llyd;

    .line 4141
    const/4 v0, -0x1

    iput v0, p0, Llkz;->eE:I

    .line 3136
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4169
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4170
    sparse-switch v0, :sswitch_data_0

    .line 4174
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4175
    :sswitch_0
    return-object p0

    .line 4180
    :sswitch_1
    iget-object v0, p0, Llkz;->a:Llmi;

    if-nez v0, :cond_1

    .line 4181
    new-instance v0, Llmi;

    invoke-direct {v0}, Llmi;-><init>()V

    iput-object v0, p0, Llkz;->a:Llmi;

    .line 4183
    :cond_1
    iget-object v0, p0, Llkz;->a:Llmi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4170
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
    .line 3148
    iget-object v0, p0, Llkz;->a:Llmi;

    if-eqz v0, :cond_0

    .line 3149
    const/4 v0, 0x1

    iget-object v1, p0, Llkz;->a:Llmi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3151
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3152
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3156
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3157
    iget-object v1, p0, Llkz;->a:Llmi;

    if-eqz v1, :cond_0

    .line 3158
    const/4 v1, 0x1

    iget-object v2, p0, Llkz;->a:Llmi;

    .line 3159
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3161
    :cond_0
    return v0
.end method
