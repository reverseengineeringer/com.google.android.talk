.class final Lagn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lagy;

.field private final b:Lagr;

.field private final c:Lagv;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lagy;Lagr;Lagv;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lagn;->a:Lagy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lagn;->b:Lagr;

    .line 84
    iput-object p3, p0, Lagn;->c:Lagv;

    .line 85
    iput-object p4, p0, Lagn;->d:Ljava/lang/Runnable;

    .line 86
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lagn;->b:Lagr;

    invoke-virtual {v0}, Lagr;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lagn;->b:Lagr;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lagr;->b(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lagn;->c:Lagv;

    invoke-virtual {v0}, Lagv;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lagn;->b:Lagr;

    iget-object v1, p0, Lagn;->c:Lagv;

    iget-object v1, v1, Lagv;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lagr;->a(Ljava/lang/Object;)V

    .line 106
    :goto_1
    iget-object v0, p0, Lagn;->c:Lagv;

    iget-boolean v0, v0, Lagv;->d:Z

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lagn;->b:Lagr;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lagr;->a(Ljava/lang/String;)V

    .line 113
    :goto_2
    iget-object v0, p0, Lagn;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lagn;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lagn;->b:Lagr;

    iget-object v1, p0, Lagn;->c:Lagv;

    iget-object v1, v1, Lagv;->c:Laha;

    invoke-virtual {v0, v1}, Lagr;->b(Laha;)V

    goto :goto_1

    .line 109
    :cond_3
    iget-object v0, p0, Lagn;->b:Lagr;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lagr;->b(Ljava/lang/String;)V

    goto :goto_2
.end method
