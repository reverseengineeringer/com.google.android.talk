.class public final Ljms;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljms;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljpc;

.field public b:Ljmu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1088
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2093
    iput-object v0, p0, Ljms;->a:Ljpc;

    .line 2094
    iput-object v0, p0, Ljms;->b:Ljmu;

    .line 2095
    iput-object v0, p0, Ljms;->eD:Llyd;

    .line 2096
    const/4 v0, -0x1

    iput v0, p0, Ljms;->eE:I

    .line 1090
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2131
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2132
    sparse-switch v0, :sswitch_data_0

    .line 2136
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2137
    :sswitch_0
    return-object p0

    .line 2142
    :sswitch_1
    iget-object v0, p0, Ljms;->a:Ljpc;

    if-nez v0, :cond_1

    .line 2143
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljms;->a:Ljpc;

    .line 2145
    :cond_1
    iget-object v0, p0, Ljms;->a:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2149
    :sswitch_2
    iget-object v0, p0, Ljms;->b:Ljmu;

    if-nez v0, :cond_2

    .line 2150
    new-instance v0, Ljmu;

    invoke-direct {v0}, Ljmu;-><init>()V

    iput-object v0, p0, Ljms;->b:Ljmu;

    .line 2152
    :cond_2
    iget-object v0, p0, Ljms;->b:Ljmu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2132
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
    .line 1103
    iget-object v0, p0, Ljms;->a:Ljpc;

    if-eqz v0, :cond_0

    .line 1104
    const/4 v0, 0x1

    iget-object v1, p0, Ljms;->a:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1106
    :cond_0
    iget-object v0, p0, Ljms;->b:Ljmu;

    if-eqz v0, :cond_1

    .line 1107
    const/4 v0, 0x2

    iget-object v1, p0, Ljms;->b:Ljmu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1109
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1110
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1114
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1115
    iget-object v1, p0, Ljms;->a:Ljpc;

    if-eqz v1, :cond_0

    .line 1116
    const/4 v1, 0x1

    iget-object v2, p0, Ljms;->a:Ljpc;

    .line 1117
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1119
    :cond_0
    iget-object v1, p0, Ljms;->b:Ljmu;

    if-eqz v1, :cond_1

    .line 1120
    const/4 v1, 0x2

    iget-object v2, p0, Ljms;->b:Ljmu;

    .line 1121
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1123
    :cond_1
    return v0
.end method
