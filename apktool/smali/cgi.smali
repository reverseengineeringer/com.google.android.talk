.class public final Lcgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldcl;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/HangoutFragment;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcgi;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldcm;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcgi;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 1093
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->ao:Z

    .line 655
    iget-object v0, p0, Lcgi;->a:Lcom/google/android/apps/hangouts/hangout/HangoutFragment;

    .line 2093
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutFragment;->e()V

    .line 656
    return-void
.end method
