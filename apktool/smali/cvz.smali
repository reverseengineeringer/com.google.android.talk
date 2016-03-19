.class final Lcvz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llat",
        "<",
        "Lcwf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcvy;


# direct methods
.method constructor <init>(Lcvy;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcvz;->a:Lcvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 229
    check-cast p1, Lcwf;

    .line 2231
    iget-object v0, p0, Lcvz;->a:Lcvy;

    .line 3032
    invoke-virtual {v0, p1}, Lcvy;->a(Lcwf;)V

    .line 229
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Lcvz;->a:Lcvy;

    .line 1314
    const-string v1, "Babel_FutureNQ"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "onFailure in preProcessFuture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1315
    const/4 v1, 0x0

    iput-object v1, v0, Lcvy;->d:Lcwf;

    .line 1316
    iget-object v1, v0, Lcvy;->e:Lcwe;

    invoke-interface {v1}, Lcwe;->I_()V

    .line 1317
    invoke-virtual {v0}, Lcvy;->d()V

    .line 236
    return-void
.end method
