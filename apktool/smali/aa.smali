.class final Laa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ly;

.field private final b:Landroid/view/View;

.field private final c:Z


# direct methods
.method constructor <init>(Ly;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Laa;->a:Ly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Laa;->b:Landroid/view/View;

    .line 354
    iput-boolean p3, p0, Laa;->c:Z

    .line 355
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Laa;->a:Ly;

    .line 1035
    iget-object v0, v0, Ly;->b:Lqa;

    .line 359
    if-eqz v0, :cond_1

    iget-object v0, p0, Laa;->a:Ly;

    .line 2035
    iget-object v0, v0, Ly;->b:Lqa;

    .line 359
    invoke-virtual {v0}, Lqa;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Laa;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lks;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-boolean v0, p0, Laa;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laa;->a:Ly;

    .line 3035
    iget-object v0, v0, Ly;->c:Lfhz;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Laa;->a:Ly;

    .line 4035
    iget-object v0, v0, Ly;->c:Lfhz;

    .line 363
    invoke-virtual {v0}, Lfhz;->a()V

    goto :goto_0
.end method
