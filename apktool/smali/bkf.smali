.class final Lbkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhtx;


# instance fields
.field final synthetic a:Lbkb;


# direct methods
.method constructor <init>(Lbkb;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lbkf;->a:Lbkb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lhus;Lhuo;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, Lbkf;->a:Lbkb;

    .line 1066
    iget v0, v0, Lbkb;->c:I

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "conversation_creation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "Babel_ConvCreator"

    const-string v1, "Conversation creation background task finished"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lbkf;->a:Lbkb;

    .line 2066
    iget-object v0, v0, Lbkb;->d:Lilh;

    .line 221
    const-class v1, Lbjq;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjq;

    .line 222
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lhus;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 224
    :goto_1
    if-eqz v2, :cond_2

    .line 225
    const-string v1, "Babel_ConvCreator"

    const-string v4, "Conversation created successfully"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p2}, Lhus;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "conversation_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-interface {v0, v1}, Lbjq;->a(Ljava/lang/String;)V

    .line 234
    :goto_2
    iget-object v0, p0, Lbkf;->a:Lbkb;

    .line 3066
    invoke-virtual {v0, v2}, Lbkb;->b(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 222
    goto :goto_1

    .line 229
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lhus;->c()Ljava/lang/String;

    move-result-object v1

    .line 230
    :goto_3
    const-string v4, "Babel_ConvCreator"

    const-string v5, "Conversation creation failed: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-interface {v0}, Lbjq;->a()V

    goto :goto_2

    .line 229
    :cond_3
    const-string v1, "null"

    goto :goto_3

    .line 230
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method
