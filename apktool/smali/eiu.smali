.class final Leiu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lejc;

.field final synthetic b:[B

.field final synthetic c:Leis;

.field final synthetic d:Leit;


# direct methods
.method constructor <init>(Leit;Lejc;[BLeis;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Leiu;->d:Leit;

    iput-object p2, p0, Leiu;->a:Lejc;

    iput-object p3, p0, Leiu;->b:[B

    iput-object p4, p0, Leiu;->c:Leis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1047
    :try_start_0
    sget-object v0, Leit;->b:Lezv;

    .line 321
    const-string v1, "saveMediaAndDecode"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2047
    sget-boolean v0, Leit;->a:Z

    .line 322
    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Leiu;->d:Leit;

    const-string v2, "saving media from "

    iget-object v0, p0, Leiu;->a:Lejc;

    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3047
    :goto_0
    invoke-virtual {v1, v0}, Leit;->e(Ljava/lang/String;)V

    .line 325
    :cond_0
    iget-object v0, p0, Leiu;->d:Leit;

    iget-object v1, p0, Leiu;->b:[B

    iget-object v2, p0, Leiu;->c:Leis;

    invoke-virtual {v2}, Leis;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Leiu;->a:Lejc;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Leit;->a(Leit;[BLjava/lang/String;Lejc;Z)V

    .line 4047
    sget-boolean v0, Leit;->a:Z

    .line 326
    if-eqz v0, :cond_1

    .line 327
    iget-object v1, p0, Leiu;->d:Leit;

    const-string v2, "decodingBytes start "

    iget-object v0, p0, Leiu;->a:Lejc;

    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5047
    :goto_1
    invoke-virtual {v1, v0}, Leit;->e(Ljava/lang/String;)V

    .line 329
    :cond_1
    iget-object v0, p0, Leiu;->a:Lejc;

    iget-object v1, p0, Leiu;->b:[B

    invoke-virtual {v0, v1}, Lejc;->a([B)Lejb;

    move-result-object v1

    .line 6047
    sget-boolean v0, Leit;->a:Z

    .line 330
    if-eqz v0, :cond_2

    .line 331
    iget-object v2, p0, Leiu;->d:Leit;

    const-string v3, "decodingBytes finish "

    iget-object v0, p0, Leiu;->a:Lejc;

    invoke-virtual {v0}, Lejc;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7047
    :goto_2
    invoke-virtual {v2, v0}, Leit;->e(Ljava/lang/String;)V

    .line 333
    :cond_2
    if-eqz v1, :cond_3

    .line 334
    iget-object v0, p0, Leiu;->d:Leit;

    iget-object v2, p0, Leiu;->a:Lejc;

    invoke-virtual {v0, v2, v1}, Leit;->a(Lejc;Lejb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8047
    :cond_3
    sget-object v0, Leit;->b:Lezv;

    .line 337
    const-string v1, "saveMediaAndDecode"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 338
    return-void

    .line 323
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    .line 9047
    sget-object v1, Leit;->b:Lezv;

    .line 337
    const-string v2, "saveMediaAndDecode"

    invoke-virtual {v1, v2}, Lezv;->c(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
