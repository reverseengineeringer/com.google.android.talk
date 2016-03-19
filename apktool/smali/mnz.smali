.class public final Lmnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 568
    iput-wide p1, p0, Lmnz;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 571
    iget-wide v0, p0, Lmnz;->a:J

    invoke-static {v0, v1}, Lorg/chromium/base/library_loader/LegacyLinker;->a(J)V

    .line 572
    return-void
.end method
