.class final Lbht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leys;

.field final synthetic b:Lexs;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lbhs;


# direct methods
.method constructor <init>(Lbhs;Leys;Lexs;ZZ)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lbht;->e:Lbhs;

    iput-object p2, p0, Lbht;->a:Leys;

    iput-object p3, p0, Lbht;->b:Lexs;

    iput-boolean p4, p0, Lbht;->c:Z

    iput-boolean p5, p0, Lbht;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1053
    :try_start_0
    sget-object v0, Lbhs;->b:Lezv;

    .line 324
    const-string v1, "deliverImageOnCorrectThread"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lbht;->e:Lbhs;

    .line 2053
    iget-object v0, v0, Lbhs;->c:Lbhv;

    .line 325
    iget-object v1, p0, Lbht;->a:Leys;

    iget-object v2, p0, Lbht;->b:Lexs;

    iget-boolean v3, p0, Lbht;->c:Z

    iget-object v4, p0, Lbht;->e:Lbhs;

    iget-boolean v5, p0, Lbht;->d:Z

    invoke-interface/range {v0 .. v5}, Lbhv;->a(Leys;Lexs;ZLbhs;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3053
    sget-object v0, Lbhs;->b:Lezv;

    .line 328
    const-string v1, "deliverImageOnCorrectThread"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    .line 4053
    sget-object v1, Lbhs;->b:Lezv;

    .line 328
    const-string v2, "deliverImageOnCorrectThread"

    invoke-virtual {v1, v2}, Lezv;->c(Ljava/lang/String;)V

    throw v0
.end method
