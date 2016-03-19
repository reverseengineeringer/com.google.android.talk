.class final Llbk;
.super Lkzz;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkzz",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Lkzz;-><init>()V

    .line 647
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Llbk;->a:Ljava/lang/Runnable;

    .line 648
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 652
    :try_start_0
    iget-object v0, p0, Llbk;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    invoke-virtual {p0, v0}, Llbk;->a(Ljava/lang/Throwable;)Z

    .line 655
    invoke-static {v0}, Lkoh;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
