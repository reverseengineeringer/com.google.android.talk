.class public final Ljze;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljze;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljzc;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10086
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11091
    iput-object v0, p0, Ljze;->requestHeader:Lkdo;

    .line 11092
    iput-object v0, p0, Ljze;->a:Ljxw;

    .line 11093
    iput-object v0, p0, Ljze;->b:Ljzc;

    .line 11094
    iput-object v0, p0, Ljze;->eD:Llyd;

    .line 11095
    const/4 v0, -0x1

    iput v0, p0, Ljze;->eE:I

    .line 10088
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 11137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11138
    sparse-switch v0, :sswitch_data_0

    .line 11142
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11143
    :sswitch_0
    return-object p0

    .line 11148
    :sswitch_1
    iget-object v0, p0, Ljze;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 11149
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Ljze;->requestHeader:Lkdo;

    .line 11151
    :cond_1
    iget-object v0, p0, Ljze;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11155
    :sswitch_2
    iget-object v0, p0, Ljze;->a:Ljxw;

    if-nez v0, :cond_2

    .line 11156
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljze;->a:Ljxw;

    .line 11158
    :cond_2
    iget-object v0, p0, Ljze;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11162
    :sswitch_3
    iget-object v0, p0, Ljze;->b:Ljzc;

    if-nez v0, :cond_3

    .line 11163
    new-instance v0, Ljzc;

    invoke-direct {v0}, Ljzc;-><init>()V

    iput-object v0, p0, Ljze;->b:Ljzc;

    .line 11165
    :cond_3
    iget-object v0, p0, Ljze;->b:Ljzc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11138
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 10102
    iget-object v0, p0, Ljze;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 10103
    const/4 v0, 0x1

    iget-object v1, p0, Ljze;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10105
    :cond_0
    iget-object v0, p0, Ljze;->a:Ljxw;

    if-eqz v0, :cond_1

    .line 10106
    const/4 v0, 0x2

    iget-object v1, p0, Ljze;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10108
    :cond_1
    iget-object v0, p0, Ljze;->b:Ljzc;

    if-eqz v0, :cond_2

    .line 10109
    const/4 v0, 0x3

    iget-object v1, p0, Ljze;->b:Ljzc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 10111
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10112
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 10116
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10117
    iget-object v1, p0, Ljze;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 10118
    const/4 v1, 0x1

    iget-object v2, p0, Ljze;->requestHeader:Lkdo;

    .line 10119
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10121
    :cond_0
    iget-object v1, p0, Ljze;->a:Ljxw;

    if-eqz v1, :cond_1

    .line 10122
    const/4 v1, 0x2

    iget-object v2, p0, Ljze;->a:Ljxw;

    .line 10123
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10125
    :cond_1
    iget-object v1, p0, Ljze;->b:Ljzc;

    if-eqz v1, :cond_2

    .line 10126
    const/4 v1, 0x3

    iget-object v2, p0, Ljze;->b:Ljzc;

    .line 10127
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10129
    :cond_2
    return v0
.end method
