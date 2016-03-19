.class public final Llpe;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpe;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Llpf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Llyb;-><init>()V

    .line 129
    iput-object v0, p0, Llpe;->a:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Llpe;->b:Llpf;

    .line 131
    iput-object v0, p0, Llpe;->eD:Llyd;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Llpe;->eE:I

    .line 133
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1167
    sparse-switch v0, :sswitch_data_0

    .line 1171
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    :sswitch_0
    return-object p0

    .line 1177
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llpe;->a:Ljava/lang/String;

    goto :goto_0

    .line 1181
    :sswitch_2
    iget-object v0, p0, Llpe;->b:Llpf;

    if-nez v0, :cond_1

    .line 1182
    new-instance v0, Llpf;

    invoke-direct {v0}, Llpf;-><init>()V

    iput-object v0, p0, Llpe;->b:Llpf;

    .line 1184
    :cond_1
    iget-object v0, p0, Llpe;->b:Llpf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1167
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
    .line 138
    iget-object v0, p0, Llpe;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iget-object v1, p0, Llpe;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 141
    :cond_0
    iget-object v0, p0, Llpe;->b:Llpf;

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x2

    iget-object v1, p0, Llpe;->b:Llpf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 144
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 145
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 150
    iget-object v1, p0, Llpe;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x1

    iget-object v2, p0, Llpe;->a:Ljava/lang/String;

    .line 152
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_0
    iget-object v1, p0, Llpe;->b:Llpf;

    if-eqz v1, :cond_1

    .line 155
    const/4 v1, 0x2

    iget-object v2, p0, Llpe;->b:Llpf;

    .line 156
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_1
    return v0
.end method
