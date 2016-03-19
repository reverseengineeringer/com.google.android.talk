.class final Lfba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpw;


# instance fields
.field final synthetic a:Lfaz;


# direct methods
.method constructor <init>(Lfaz;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lfba;->a:Lfaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lfba;->a:Lfaz;

    iget-object v0, v0, Lfaz;->a:Lcom/google/android/apps/hangouts/views/BalanceView;

    .line 1026
    iget-boolean v0, v0, Lcom/google/android/apps/hangouts/views/BalanceView;->a:Z

    .line 86
    if-eqz v0, :cond_0

    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 87
    iget-object v0, p0, Lfba;->a:Lfaz;

    iget-object v0, v0, Lfaz;->a:Lcom/google/android/apps/hangouts/views/BalanceView;

    .line 2026
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/BalanceView;->a()V

    .line 89
    :cond_0
    return-void
.end method
