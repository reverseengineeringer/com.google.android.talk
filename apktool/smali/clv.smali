.class final Lclv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbp",
        "<",
        "Lkhq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkhk;

.field final synthetic b:Z

.field final synthetic c:Lclu;


# direct methods
.method constructor <init>(Lclu;Lkhk;Z)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lclv;->c:Lclu;

    iput-object p2, p0, Lclv;->a:Lkhk;

    iput-boolean p3, p0, Lclv;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)V
    .locals 4

    .prologue
    .line 2045
    sget-boolean v0, Lclu;->a:Z

    .line 1172
    if-eqz v0, :cond_0

    .line 1173
    const-string v0, "Successfully responded to knock (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lclv;->a:Lkhk;

    iget-object v3, v3, Lkhk;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1175
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 169
    :cond_0
    return-void
.end method

.method public synthetic b(Llyi;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2187
    const-string v0, "Babel"

    const-string v1, "Knock response failed... retrying in %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 3045
    sget-wide v4, Lclu;->b:J

    .line 2189
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 2187
    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2190
    iget-object v0, p0, Lclv;->c:Lclu;

    .line 4045
    iget-object v0, v0, Lclu;->i:Landroid/os/Handler;

    .line 2190
    new-instance v1, Lclw;

    invoke-direct {v1, p0}, Lclw;-><init>(Lclv;)V

    .line 5045
    sget-wide v2, Lclu;->b:J

    .line 2190
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    return-void
.end method
