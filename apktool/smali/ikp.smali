.class final Likp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgxq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgxq",
        "<",
        "Lavb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Liko;


# direct methods
.method constructor <init>(Liko;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Likp;->a:Liko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lavb;)V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Likp;->a:Liko;

    iget-object v0, v0, Liko;->c:Lgxk;

    invoke-interface {v0}, Lgxk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Likp;->a:Liko;

    iget-object v0, v0, Liko;->c:Lgxk;

    invoke-interface {v0}, Lgxk;->b()V

    .line 1154
    :cond_0
    iget-object v0, p0, Likp;->a:Liko;

    iget-object v0, v0, Liko;->d:Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;

    .line 2028
    invoke-virtual {v0}, Lcom/google/android/libraries/social/silentfeedback/impl/SilentFeedbackService;->a()V

    .line 148
    return-void
.end method
