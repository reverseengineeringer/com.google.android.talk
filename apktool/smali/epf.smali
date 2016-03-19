.class final Lepf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Z

.field final synthetic b:Lepa;

.field final synthetic c:Leph;

.field final synthetic d:Lepc;


# direct methods
.method constructor <init>(Lepc;Lepa;Leph;)V
    .locals 1

    .prologue
    .line 261
    iput-object p1, p0, Lepf;->d:Lepc;

    iput-object p2, p0, Lepf;->b:Lepa;

    iput-object p3, p0, Lepf;->c:Leph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lepf;->a:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lepf;->a:Z

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lepf;->d:Lepc;

    iget-object v1, p0, Lepf;->b:Lepa;

    invoke-virtual {v0, v1}, Lepc;->b(Lepa;)V

    .line 268
    iget-object v0, p0, Lepf;->c:Leph;

    invoke-interface {v0, p1}, Leph;->onClick(Landroid/view/View;)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lepf;->a:Z

    .line 271
    :cond_0
    return-void
.end method
