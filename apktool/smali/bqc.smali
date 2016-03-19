.class final Lbqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbjb;

.field final synthetic c:Lbpz;


# direct methods
.method constructor <init>(Lbpz;Ljava/util/List;Lbjb;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lbqc;->c:Lbpz;

    iput-object p2, p0, Lbqc;->a:Ljava/util/List;

    iput-object p3, p0, Lbqc;->b:Lbjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lbqc;->c:Lbpz;

    .line 1065
    iget-object v0, v0, Lbpz;->e:Lezj;

    .line 418
    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lbqc;->c:Lbpz;

    .line 2065
    iget-object v0, v0, Lbpz;->e:Lezj;

    .line 419
    const-string v1, "finish fg"

    invoke-virtual {v0, v1}, Lezj;->a(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lbqc;->c:Lbpz;

    .line 3065
    const/4 v1, 0x0

    iput-object v1, v0, Lbpz;->e:Lezj;

    .line 422
    :cond_0
    iget-object v0, p0, Lbqc;->c:Lbpz;

    .line 4065
    iget-object v0, v0, Lbpz;->b:Lbqi;

    .line 422
    iget-object v1, p0, Lbqc;->a:Ljava/util/List;

    iget-object v2, p0, Lbqc;->b:Lbjb;

    invoke-virtual {v0, v1, v2}, Lbqi;->a(Ljava/util/List;Lbjb;)V

    .line 423
    return-void
.end method
