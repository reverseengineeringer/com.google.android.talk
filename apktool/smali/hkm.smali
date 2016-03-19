.class final Lhkm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhkl;


# direct methods
.method constructor <init>(Lhkl;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lhkm;->a:Lhkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lhkm;->a:Lhkl;

    .line 1023
    iget-object v0, v0, Lhkl;->a:Lhkn;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lhbs;->a()V

    .line 76
    iget-object v0, p0, Lhkm;->a:Lhkl;

    .line 2023
    iget-object v0, v0, Lhkl;->a:Lhkn;

    .line 76
    invoke-interface {v0}, Lhkn;->n()V

    .line 78
    iget-object v0, p0, Lhkm;->a:Lhkl;

    .line 3023
    iput-boolean v1, v0, Lhkl;->b:Z

    .line 79
    iget-object v0, p0, Lhkm;->a:Lhkl;

    .line 4023
    iput-boolean v1, v0, Lhkl;->c:Z

    .line 80
    iget-object v0, p0, Lhkm;->a:Lhkl;

    .line 5023
    const/4 v1, 0x0

    iput-object v1, v0, Lhkl;->d:Lhlc;

    .line 82
    :cond_0
    return-void
.end method
