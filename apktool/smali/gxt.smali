.class public final Lgxt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgxm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newBuilder(Landroid/content/Context;)Lgxl;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lgxs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgxs;-><init>(Landroid/content/Context;B)V

    return-object v0
.end method
