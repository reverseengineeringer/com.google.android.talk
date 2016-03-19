.class final Ldfr;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Ldfr;->a:Ldfq;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Ldfr;->a:Ldfq;

    .line 1055
    iget-object v0, v0, Ldfq;->a:Landroid/content/Context;

    .line 141
    iget-object v1, p0, Ldfr;->a:Ldfq;

    .line 2055
    iget v1, v1, Ldfq;->c:I

    .line 141
    const/4 v2, 0x0

    invoke-static {v1, v2}, Laal;->b(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method
