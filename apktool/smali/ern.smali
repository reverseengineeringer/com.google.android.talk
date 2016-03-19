.class final Lern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhqe;

.field final synthetic b:Ldrz;

.field final synthetic c:Lerm;


# direct methods
.method constructor <init>(Lerm;Lhqe;Ldrz;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lern;->c:Lerm;

    iput-object p2, p0, Lern;->a:Lhqe;

    iput-object p3, p0, Lern;->b:Ldrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lern;->c:Lerm;

    .line 1018
    iget-object v0, v0, Lerm;->a:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebb;

    .line 39
    iget-object v2, p0, Lern;->a:Lhqe;

    iget-object v3, p0, Lern;->b:Ldrz;

    invoke-interface {v0, v2, v3}, Lebb;->a(Lhqe;Ldrz;)V

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
