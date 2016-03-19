.class final Lbma;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lblw;


# direct methods
.method constructor <init>(Lblw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lbma;->a:Lblw;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lbma;->a:Lblw;

    .line 1052
    iget-object v0, v0, Lblw;->a:Landroid/content/Context;

    .line 140
    iget-object v1, p0, Lbma;->a:Lblw;

    .line 2052
    iget-object v1, v1, Lblw;->b:Lbfd;

    .line 141
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    iget-object v2, p0, Lbma;->a:Lblw;

    .line 3052
    iget-object v2, v2, Lblw;->c:Lbjb;

    .line 141
    iget-object v2, v2, Lbjb;->a:Ljava/lang/String;

    .line 140
    invoke-static {v1, v2}, Laal;->b(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method
