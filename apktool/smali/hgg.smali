.class final Lhgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhge;


# direct methods
.method constructor <init>(Lhge;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lhgg;->a:Lhge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lhgg;->a:Lhge;

    .line 1024
    invoke-virtual {v0}, Lhge;->i()V

    .line 72
    return-void
.end method
