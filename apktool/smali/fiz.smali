.class public final Lfiz;
.super Lfjo;


# instance fields
.field final synthetic a:Lfiv;

.field final synthetic b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

.field final synthetic c:Lfme;


# direct methods
.method public constructor <init>(Lfme;Lfjs;Lfiv;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 0

    iput-object p1, p0, Lfiz;->c:Lfme;

    iput-object p3, p0, Lfiz;->a:Lfiv;

    iput-object p4, p0, Lfiz;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    invoke-direct {p0, p2}, Lfjo;-><init>(Lfjs;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lfiz;->a:Lfiv;

    iget-object v1, p0, Lfiz;->b:Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .line 2000
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lfiv;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->a()Lfks;

    move-result-object v2

    iput-object v2, v0, Lfiv;->g:Lfks;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lfiv;->f:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->c()Z

    move-result v2

    iput-boolean v2, v0, Lfiv;->h:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->d()Z

    move-result v1

    iput-boolean v1, v0, Lfiv;->i:Z

    invoke-virtual {v0}, Lfiv;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lfiv;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lfiv;->i()V

    invoke-virtual {v0}, Lfiv;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lfiv;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
