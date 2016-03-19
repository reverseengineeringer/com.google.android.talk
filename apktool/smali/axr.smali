.class final Laxr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laxq;


# direct methods
.method constructor <init>(Laxq;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Laxr;->a:Laxq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Laxr;->a:Laxq;

    .line 1029
    iget-object v0, v0, Laxq;->a:Ljava/util/List;

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxs;

    .line 234
    invoke-interface {v0}, Laxs;->a()V

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method
