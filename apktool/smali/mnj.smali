.class public final Lmnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1029
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->b:Latn;

    .line 424
    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 426
    :cond_0
    new-instance v0, Lmnk;

    invoke-direct {v0, p0}, Lmnk;-><init>(Lmnj;)V

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->b(Latn;)Latn;

    .line 2029
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->b:Latn;

    .line 432
    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->a(Latn;)V

    goto :goto_0
.end method
