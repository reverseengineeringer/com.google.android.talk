.class final Lgxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfif;


# instance fields
.field final synthetic a:Lgxn;

.field final synthetic b:Lgxy;


# direct methods
.method constructor <init>(Lgxy;Lgxn;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lgxz;->b:Lgxy;

    iput-object p2, p0, Lgxz;->a:Lgxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lgxz;->a:Lgxn;

    invoke-interface {v0, p1}, Lgxn;->a(I)V

    .line 109
    return-void
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lgxz;->a:Lgxn;

    invoke-interface {v0}, Lgxn;->a()V

    .line 104
    return-void
.end method
