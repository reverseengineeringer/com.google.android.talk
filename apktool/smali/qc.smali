.class final Lqc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqa;


# direct methods
.method constructor <init>(Lqa;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lqc;->a:Lqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lqc;->a:Lqa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqa;->b(I)V

    .line 336
    return-void
.end method
