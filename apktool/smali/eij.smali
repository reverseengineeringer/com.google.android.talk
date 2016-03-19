.class final Leij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfkg;

.field final synthetic b:Lgpx;

.field final synthetic c:Leie;


# direct methods
.method constructor <init>(Leie;Lfkg;Lgpx;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Leij;->c:Leie;

    iput-object p2, p0, Leij;->a:Lfkg;

    iput-object p3, p0, Leij;->b:Lgpx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Leij;->c:Leie;

    iget-object v1, p0, Leij;->a:Lfkg;

    iget-object v2, p0, Leij;->b:Lgpx;

    .line 1122
    invoke-virtual {v0, v1, v2}, Leie;->a(Lfkg;Lgpx;)V

    .line 522
    return-void
.end method
