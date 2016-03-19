.class final Lepg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lepa;

.field final synthetic b:Lepc;


# direct methods
.method constructor <init>(Lepc;Lepa;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lepg;->b:Lepc;

    iput-object p2, p0, Lepg;->a:Lepa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lepg;->b:Lepc;

    iget-object v1, p0, Lepg;->a:Lepa;

    invoke-virtual {v0, v1}, Lepc;->b(Lepa;)V

    .line 296
    return-void
.end method
