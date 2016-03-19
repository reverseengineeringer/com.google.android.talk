.class public Liih;
.super Lihi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RS:",
        "Llyi;",
        ">",
        "Lihi;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Z

.field public final t:Llyi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRS;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lihw;Ljava/lang/String;Ljava/lang/String;Llyi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lihw;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TRS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1062
    invoke-virtual {p2}, Lihw;->d()Lihb;

    move-result-object v1

    .line 1063
    if-eqz v1, :cond_0

    .line 1064
    new-instance v0, Liik;

    .line 1065
    invoke-virtual {p2}, Lihw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p7, v1}, Liik;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lihb;)V

    .line 50
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lihi;-><init>(Landroid/content/Context;Lihw;Ljava/lang/String;Lihs;)V

    .line 55
    iput-object p4, p0, Liih;->a:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Liih;->t:Llyi;

    .line 57
    iput-object p6, p0, Liih;->b:Ljava/lang/String;

    .line 58
    return-void

    .line 1067
    :cond_0
    invoke-virtual {p2}, Lihw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    invoke-virtual {p2}, Lihw;->c()Ljava/lang/String;

    move-result-object v3

    .line 1069
    :goto_1
    new-instance v0, Liie;

    .line 1070
    invoke-virtual {p2}, Lihw;->b()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, p7

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Liie;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Liih;->b(Ljava/nio/ByteBuffer;)Llyi;

    .line 119
    invoke-virtual {p0}, Liih;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Liih;->t:Llyi;

    invoke-static {v0}, Laal;->a(Llyi;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Liih;->b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 123
    :cond_0
    iget-object v0, p0, Liih;->t:Llyi;

    invoke-virtual {p0, v0}, Liih;->c(Llyi;)V

    .line 124
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lihi;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 129
    const-string v0, "HttpOperation"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "HttpOperation error: Response follows: \n"

    new-instance v1, Ljava/lang/String;

    .line 131
    invoke-static {p1}, Laal;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "application/x-protobuf"

    return-object v0
.end method

.method protected b(Ljava/nio/ByteBuffer;)Llyi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TRS;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Liih;->t:Llyi;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 142
    invoke-static {v0, v1, v2}, Llxy;->a([BII)Llxy;

    move-result-object v0

    .line 149
    :goto_0
    iget-object v1, p0, Liih;->t:Llyi;

    invoke-virtual {v1, v0}, Llyi;->a(Llxy;)Llyi;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Liih;->c:Z

    .line 151
    iget-object v0, p0, Liih;->t:Llyi;

    .line 153
    :goto_1
    return-object v0

    .line 147
    :cond_0
    invoke-static {p1}, Laal;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 2052
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Llxy;->a([BII)Llxy;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c(Llyi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRS;)V"
        }
    .end annotation

    .prologue
    .line 106
    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Liih;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Liih;->g:Landroid/content/Context;

    iget-object v1, p0, Liih;->b:Ljava/lang/String;

    invoke-virtual {p0}, Liih;->t()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0}, Liih;->d()Landroid/os/Bundle;

    move-result-object v4

    .line 76
    invoke-static {v0, v1, v2, v3, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Liih;->a:Ljava/lang/String;

    return-object v0
.end method
