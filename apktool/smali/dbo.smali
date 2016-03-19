.class final Ldbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ldbh;


# direct methods
.method constructor <init>(Ldbh;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Ldbo;->a:Ldbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Ldbo;->a:Ldbh;

    .line 1100
    iget-object v0, v0, Ldbh;->d:Ldas;

    .line 445
    invoke-virtual {v0}, Ldas;->e()Z

    move-result v0

    .line 446
    iget-object v1, p0, Ldbo;->a:Ldbh;

    .line 2100
    iget-object v1, v1, Ldbh;->d:Ldas;

    .line 446
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ldas;->d(Z)V

    .line 447
    return-void

    .line 446
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
