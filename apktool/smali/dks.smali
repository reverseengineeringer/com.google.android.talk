.class final Ldks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ldkr;


# direct methods
.method constructor <init>(Ldkr;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Ldks;->a:Ldkr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Ldks;->a:Ldkr;

    .line 1031
    iget-object v0, v0, Ldkr;->g:Lhaw;

    .line 95
    const/16 v1, 0x968

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Lhax;->d()V

    .line 97
    iget-object v0, p0, Ldks;->a:Ldkr;

    .line 2031
    iget-object v0, v0, Ldkr;->f:Ldjw;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Ldks;->a:Ldkr;

    .line 3031
    iget-object v0, v0, Ldkr;->f:Ldjw;

    .line 98
    iget-object v1, p0, Ldks;->a:Ldkr;

    .line 4031
    iget-object v1, v1, Ldkr;->a:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Ldks;->a:Ldkr;

    .line 5031
    iget-object v2, v2, Ldkr;->d:Lbfd;

    .line 98
    invoke-virtual {v2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldks;->a:Ldkr;

    .line 6031
    iget-boolean v3, v3, Ldkr;->e:Z

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Ldjw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 101
    :cond_0
    return-void
.end method
