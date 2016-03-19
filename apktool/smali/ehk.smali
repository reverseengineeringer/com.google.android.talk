.class final Lehk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lehi;


# direct methods
.method constructor <init>(Lehi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lehk;->b:Lehi;

    iput-object p2, p0, Lehk;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lehk;->b:Lehi;

    iget-object v1, p0, Lehk;->a:Ljava/lang/String;

    .line 1129
    invoke-virtual {v0, v1}, Lehi;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1130
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1131
    :cond_0
    return-void

    .line 1133
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lehi;->a:Z

    .line 1134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lehx;

    .line 1135
    check-cast v0, Lbez;

    .line 1136
    iget-object v2, v0, Lbez;->b:Lehm;

    invoke-interface {v2, v0}, Lehm;->a(Lbez;)V

    goto :goto_0
.end method
