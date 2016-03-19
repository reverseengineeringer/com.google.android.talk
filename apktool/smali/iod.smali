.class final Liod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Linz;


# direct methods
.method constructor <init>(Linz;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Liod;->b:Linz;

    iput-object p2, p0, Liod;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 2

    .prologue
    .line 82
    instance-of v0, p1, Linw;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Liod;->b:Linz;

    iget-object v1, p0, Liod;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Linz;->a(Lioz;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 84
    check-cast p1, Linw;

    invoke-interface {p1}, Linw;->a()V

    .line 86
    :cond_0
    return-void
.end method
