.class final Lfff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfif;


# instance fields
.field final synthetic a:Lffe;


# direct methods
.method constructor <init>(Lffe;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lfff;->a:Lffe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 70
    sget-object v0, Lgry;->a:Lgrg;

    iget-object v1, p0, Lfff;->a:Lffe;

    .line 1050
    iget-object v1, v1, Lffe;->b:Lfic;

    .line 70
    sget-object v2, Lffe;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lgrg;->a(Lfic;Landroid/net/Uri;)Lfij;

    move-result-object v0

    new-instance v1, Lffg;

    invoke-direct {v1, p0}, Lffg;-><init>(Lfff;)V

    .line 71
    invoke-interface {v0, v1}, Lfij;->a(Lfin;)V

    .line 93
    return-void
.end method
