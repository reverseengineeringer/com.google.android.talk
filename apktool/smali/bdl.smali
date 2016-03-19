.class public final Lbdl;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lbdl;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lbde;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lbdl;->a:Lcom/google/android/apps/hangouts/concurrent/impl/ConcurrentServiceImpl;

    return-object v0
.end method
