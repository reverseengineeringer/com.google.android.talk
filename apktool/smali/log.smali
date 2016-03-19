.class public final Llog;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llog;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llof;

.field public b:Llof;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1142
    iput-object v0, p0, Llog;->a:Llof;

    .line 1143
    iput-object v0, p0, Llog;->b:Llof;

    .line 1144
    iput-object v0, p0, Llog;->eD:Llyd;

    .line 1145
    const/4 v0, -0x1

    iput v0, p0, Llog;->eE:I

    .line 139
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1181
    sparse-switch v0, :sswitch_data_0

    .line 1185
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    :sswitch_0
    return-object p0

    .line 1191
    :sswitch_1
    iget-object v0, p0, Llog;->a:Llof;

    if-nez v0, :cond_1

    .line 1192
    new-instance v0, Llof;

    invoke-direct {v0}, Llof;-><init>()V

    iput-object v0, p0, Llog;->a:Llof;

    .line 1194
    :cond_1
    iget-object v0, p0, Llog;->a:Llof;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1198
    :sswitch_2
    iget-object v0, p0, Llog;->b:Llof;

    if-nez v0, :cond_2

    .line 1199
    new-instance v0, Llof;

    invoke-direct {v0}, Llof;-><init>()V

    iput-object v0, p0, Llog;->b:Llof;

    .line 1201
    :cond_2
    iget-object v0, p0, Llog;->b:Llof;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1181
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
    .line 152
    iget-object v0, p0, Llog;->a:Llof;

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    iget-object v1, p0, Llog;->a:Llof;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 155
    :cond_0
    iget-object v0, p0, Llog;->b:Llof;

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x2

    iget-object v1, p0, Llog;->b:Llof;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 158
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 159
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 164
    iget-object v1, p0, Llog;->a:Llof;

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    iget-object v2, p0, Llog;->a:Llof;

    .line 166
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_0
    iget-object v1, p0, Llog;->b:Llof;

    if-eqz v1, :cond_1

    .line 169
    const/4 v1, 0x2

    iget-object v2, p0, Llog;->b:Llof;

    .line 170
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_1
    return v0
.end method
