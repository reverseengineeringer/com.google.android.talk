.class final Lhgl;
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
    .line 491
    iput-object p1, p0, Lhgl;->a:Lhge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lhgl;->a:Lhge;

    .line 1024
    iget-object v0, v0, Lhge;->i:Lhle;

    .line 494
    iget-object v1, p0, Lhgl;->a:Lhge;

    invoke-virtual {v1}, Lhge;->k()Lhlf;

    invoke-virtual {v0}, Lhle;->a()V

    .line 495
    return-void
.end method
