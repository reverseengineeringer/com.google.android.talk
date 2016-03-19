.class final Lehf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldtt;

.field final synthetic b:Lehd;


# direct methods
.method constructor <init>(Lehd;Ldtt;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lehf;->b:Lehd;

    iput-object p2, p0, Lehf;->a:Ldtt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 314
    iget-object v1, p0, Lehf;->b:Lehd;

    iget-object v0, p0, Lehf;->a:Ldtt;

    .line 1204
    invoke-virtual {v0}, Ldtt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lehd;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1205
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehx;

    .line 1210
    check-cast v0, Lbet;

    .line 1211
    invoke-virtual {v0}, Lbet;->a()Lehg;

    move-result-object v3

    invoke-interface {v3, v0}, Lehg;->a(Lbet;)V

    goto :goto_1

    .line 1214
    :cond_2
    sget-boolean v0, Lehd;->a:Z

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {v1}, Lehd;->b()Ljava/lang/String;

    goto :goto_0
.end method
