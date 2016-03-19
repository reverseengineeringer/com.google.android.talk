.class final Lfbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfbo;

.field final synthetic b:Lfbo;


# direct methods
.method constructor <init>(Lfbo;Lfbo;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lfbp;->b:Lfbo;

    iput-object p2, p0, Lfbp;->a:Lfbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lfbp;->b:Lfbo;

    invoke-virtual {v0}, Lfbo;->a()V

    .line 195
    iget-object v0, p0, Lfbp;->b:Lfbo;

    iget-object v0, v0, Lfbo;->a:Lcom/google/android/apps/hangouts/views/EasterEggView;

    .line 1039
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/EasterEggView;->h:Ljava/util/List;

    .line 195
    iget-object v1, p0, Lfbp;->a:Lfbo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method
