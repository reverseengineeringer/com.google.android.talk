.class final Lgym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lgyj;


# direct methods
.method constructor <init>(Lgyj;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lgym;->a:Lgyj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lgym;->a:Lgyj;

    .line 1024
    invoke-virtual {v0}, Lgyj;->a()V

    .line 102
    return-void
.end method
