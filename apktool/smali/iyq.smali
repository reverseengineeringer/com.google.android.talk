.class public final Liyq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljdd;

.field public apiHeader:Liye;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1103
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2108
    iput-object v0, p0, Liyq;->apiHeader:Liye;

    .line 2109
    iput-object v0, p0, Liyq;->a:Ljdd;

    .line 2110
    iput-object v0, p0, Liyq;->eD:Llyd;

    .line 2111
    const/4 v0, -0x1

    iput v0, p0, Liyq;->eE:I

    .line 1105
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2146
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2147
    sparse-switch v0, :sswitch_data_0

    .line 2151
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2152
    :sswitch_0
    return-object p0

    .line 2157
    :sswitch_1
    iget-object v0, p0, Liyq;->apiHeader:Liye;

    if-nez v0, :cond_1

    .line 2158
    new-instance v0, Liye;

    invoke-direct {v0}, Liye;-><init>()V

    iput-object v0, p0, Liyq;->apiHeader:Liye;

    .line 2160
    :cond_1
    iget-object v0, p0, Liyq;->apiHeader:Liye;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2164
    :sswitch_2
    iget-object v0, p0, Liyq;->a:Ljdd;

    if-nez v0, :cond_2

    .line 2165
    new-instance v0, Ljdd;

    invoke-direct {v0}, Ljdd;-><init>()V

    iput-object v0, p0, Liyq;->a:Ljdd;

    .line 2167
    :cond_2
    iget-object v0, p0, Liyq;->a:Ljdd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2147
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
    .line 1118
    iget-object v0, p0, Liyq;->apiHeader:Liye;

    if-eqz v0, :cond_0

    .line 1119
    const/4 v0, 0x1

    iget-object v1, p0, Liyq;->apiHeader:Liye;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1121
    :cond_0
    iget-object v0, p0, Liyq;->a:Ljdd;

    if-eqz v0, :cond_1

    .line 1122
    const/4 v0, 0x2

    iget-object v1, p0, Liyq;->a:Ljdd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1124
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1125
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1129
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1130
    iget-object v1, p0, Liyq;->apiHeader:Liye;

    if-eqz v1, :cond_0

    .line 1131
    const/4 v1, 0x1

    iget-object v2, p0, Liyq;->apiHeader:Liye;

    .line 1132
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1134
    :cond_0
    iget-object v1, p0, Liyq;->a:Ljdd;

    if-eqz v1, :cond_1

    .line 1135
    const/4 v1, 0x2

    iget-object v2, p0, Liyq;->a:Ljdd;

    .line 1136
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1138
    :cond_1
    return v0
.end method
